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
                $this->timestamp,
                $this->previousHash,
                // json_encode($this->data),
                $this->data,
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
            $block = new Block($row['timestamp'], json_decode($row['data']), $row['previousHash']);
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
        // $data = json_encode($block->data);
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

            print_r($currentBlock);
            echo "<br>";
            echo "<br>";

            // if ($currentBlock->hash !== $currentBlock->calculateHash()) {
            //     return false;
            // }
            // $b = new Block($currentBlock->timestamp, $currentBlock->data, $currentBlock->previousHash, $currentBlock->hash);
            // if ($currentBlock->hash !== $b->calculateHash()) {
            //     return false;
            // }

            if ($currentBlock->previousHash !== $previousBlock->hash) {
                return false;
            }
        }

        return true;
    }
}




// Display the blockchain
function displayBlockchain(Blockchain $blockchain): void
{
    foreach ($blockchain->chain as $block) {
        echo "Timestamp: " . $block->timestamp . "\n";
        // echo "Data: " . json_encode($block->data) . "\n";
        echo "Data: " . $block->data . "\n";
        echo "Previous Hash: " . $block->previousHash . "<br>";
        echo "Hash: " . $block->hash . "<br>";
    }
}

$myBlockchain = Blockchain::getInstance();
// $myBlockchain->addBlock(new Block('10/03/2023', ['amount' => 50]));
// $myBlockchain->addBlock(new Block('15/03/2023', ['amount' => 100]));

// displayBlockchain($myBlockchain);

echo 'Is blockchain valid? ' . ($myBlockchain->isChainValid() ? 'Yes' : 'No') . "\n";

