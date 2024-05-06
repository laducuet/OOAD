<?php
include("header.php");
?>

<script>
    function countdowntimer(id, time) {
        // Set the date we're counting down to
        var countDownDate = new Date(time).getTime();

        // Update the count down every 1 second
        var x = setInterval(function() {

            // Get todays date and time
            var now = new Date().getTime();

            // Find the distance between now an the count down date
            var distance = countDownDate - now;

            // Time calculations for days, hours, minutes and seconds
            var days = Math.floor(distance / (1000 * 60 * 60 * 24));
            var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
            var seconds = Math.floor((distance % (1000 * 60)) / 1000);

            // Output the result in an element with id="demo"
            document.getElementById("countdowntime" + id).innerHTML = "<b  style='color: red;'>Time Remaining</b> <br><b>" + days + "Days " + hours + "hrs " + minutes + "min " + seconds + "sec</b>";

            // If the count down is over, write some text 
            if (distance < 0) {
                clearInterval(x);
                document.getElementById("countdowntime" + id).innerHTML = "<center><b  style='color: red;'>EXPIRED</b></center>";
            }
        }, 1000);

    }
</script>

<div class="container-fluid m-4">

    <table class="table-sm table-responsive table-striped">
        <thead>
            <tr>
                <th>Block Index</th>
                <th>Timestamp</th>
                <th>Data</th>
                <th>Previous Hash</th>
                <th>Hash</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $myBlockchain = Blockchain::getInstance();
            $data = $myBlockchain->getBlockchainData();

            foreach ($data as $blockData) {
                if ($blockData["Previous Hash"] == '0') {
                    continue;
                }

                $data = json_decode($blockData['Data']);

                echo '<tr>';
                echo '<td style="max-width: 10px !important; overflow-x: auto; border: 2px solid white;">' . $blockData['Block Index'] . '</td>';
                echo '<td style="max-width: 30px !important; overflow-x: auto; border: 2px solid white;">' . $blockData['Timestamp'] . '</td>';
                echo '<td style="max-width: 300px !important; overflow-x: auto; border: 2px solid white;">';
                print_r($data);
                echo '</td>';
                echo '<td style="width: 300px;max-width: 300px !important; overflow-x: auto; border: 2px solid white;">' . $blockData['Previous Hash'] . '</td>';
                echo '<td style="width: 300px;max-width: 300px !important; overflow-x: auto; border: 2px solid white;">' . $blockData['Hash'] . '</td>';
                echo '<td style="max-width: 10px !important; overflow-x: auto; border: 2px solid white;">' . $blockData['Status'] . '</td>';
                echo '</tr>';
            }
            ?>
        </tbody>
    </table>



</div>

<?php
include("footer.php");
?>