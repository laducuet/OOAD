<?php

class Block
{
    public $timestamp;
    public $data;
    public $previousHash;
    public $hash;

    public function __construct(string $timestamp, $data, string $previousHash = '')
    {
        $this->timestamp = $timestamp;
        $this->data = $data;
        $this->previousHash = $previousHash;
        $this->hash = $this->calculateHash();
    }

    public function calculateHash(): string
    {
        return hash(
            'sha256',
            sprintf(
                '%s%s%s',
                strval($this->timestamp), // Assuming timestamp is a string or can be cast to a string
                strval($this->previousHash), // Assuming previousHash is a string or can be cast to a string
                is_string($this->data) ? $this->data : json_encode($this->data), // Ensuring data is a string or serialized if it's an object/array
            )
        );
    }
}


class Blockchain
{
    private static $instance = null;
    public $chain;

    public function __construct()
    {
        $this->chain = $this->loadChainFromDatabase();
        // echo "<br>";
        // print_r($this->chain);
        if (empty($this->chain)) {
            $this->addBlock($this->createGenesisBlock());
        }
    }


    public static function getInstance()
    {
        if (self::$instance === null) {
            self::$instance = new Blockchain();
        }
        return self::$instance;
    }

    private function loadChainFromDatabase(): array
    {
        include("databaseconnection.php");
        $query = "SELECT timestamp, data, previousHash, hash FROM blockchain";
        $result = mysqli_query($con, $query);

        $chain = [];
        while ($row = mysqli_fetch_assoc($result)) {
            $block = new Block($row['timestamp'], $row['data'], $row['previousHash']);
            $block->hash = $row['hash'];
            $chain[] = $block;
        }

        mysqli_free_result($result);
        return $chain;
    }

    private function createGenesisBlock(): Block
    {
        return new Block(0, '01/01/2023', '0', '0');
    }

    public function getLatestBlock(): ?Block
    {
        if (!empty($this->chain)) {
            return $this->chain[count($this->chain) - 1];
        }
        return null; // Return null or handle this case based on your logic
    }


    public function addBlock(Block $newBlock): void
    {
        if (empty($this->chain)) {
            $this->chain[] = $newBlock;
            $this->insertBlockData($newBlock);
        } else {
            $latestBlock = $this->getLatestBlock();
            $newBlock->previousHash = $latestBlock->hash;
            $newBlock->hash = $newBlock->calculateHash();
            $this->chain[] = $newBlock;
            $this->insertBlockData($newBlock);
        }
    }


    private function insertBlockData(Block $block): void
    {
        include("databaseconnection.php");
        $timestamp = $block->timestamp;
        $data = $block->data;
        $previousHash = $block->previousHash;
        $hash = $block->hash;

        $query = "INSERT INTO blockchain (timestamp, data, previousHash, hash) VALUES ('$timestamp', '$data', '$previousHash', '$hash')";
        mysqli_query($con, $query);
    }

    public function isChainValid(): bool
    {
        $chainLength = count($this->chain);

        if ($chainLength === 0) {
            return true; // No blocks in the chain
        }

        // Check genesis block separately
        if ($chainLength >= 1) {
            $firstBlock = $this->chain[0];
            if ($firstBlock->previousHash != '0') {
                return false; // Genesis block's previous hash should be '0' or an empty string
            }
        }


        if ($chainLength <= 1) {
            return true; // If there's only the genesis block, it's valid
        }


        // Check other blocks in the chain
        for ($i = 1; $i < $chainLength; $i++) {
            $currentBlock = $this->chain[$i];
            $previousBlock = $this->chain[$i - 1];

            if ($currentBlock->hash !== $currentBlock->calculateHash()) {
                return false;
            }


            if ($currentBlock->previousHash !== $previousBlock->hash) {
                return false;
            }
        }

        return true;
    }



    public function getBlockchainData(): array
    {
        $blockchainData = [];

        foreach ($this->chain as $index => $block) {
            $status = $this->isBlockValid($block, $index) ? 'Valid' : 'Altered';

            $blockData = [
                'Block Index' => $index,
                'Timestamp' => $block->timestamp,
                'Data' => json_encode($block->data),
                'Previous Hash' => $block->previousHash,
                'Hash' => $block->hash,
                'Status' => $status,
            ];

            $blockchainData[] = $blockData;
        }

        return $blockchainData;
    }


    private function isBlockValid(Block $block, int $index): bool
    {
        if ($index === 0) {
            return true; // Genesis block is always considered valid
        }

        $previousBlock = $this->chain[$index - 1];

        return $block->hash === $block->calculateHash() && $block->previousHash === $previousBlock->hash;
    }
}


