<?php
session_start();
include("header.php");
?>

<!-- testimonials -->
<div class="testimonials">
    <div class="container">
        <h3>Chat Window</h3>
        <div class="w3_testimonials_grids">
            <div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <?php
                            // Sample data for chat users (replace with database query)
                            $chatUsers = [
                                ['name' => 'User 1', 'message' => 'Hello!'],
                                ['name' => 'User 2', 'message' => 'Hi there!'],
                            ];

                            foreach ($chatUsers as $user) {
                            ?>
                                <a href="#" class="chatperson" onclick="return false;">
                                    <span class="chatimg">
                                        <img src="http://via.placeholder.com/50x50?text=A" alt="" />
                                    </span>
                                    <div class="namechat">
                                        <div class="pname"><?php echo $user['name']; ?></div>
                                        <div class="lastmsg"><?php echo $user['message']; ?></div>
                                    </div>
                                </a>
                            <?php
                            }
                            ?>
                        </div>
                        <div class="col-md-8">
                            <div class="chatbody" style="height: 440px; width: 100%; overflow: auto; float: left; position: relative; margin-left: -5px;">
                                <?php
                                // Sample chat messages (replace with database query)
                                $chatMessages = [
                                    ['name' => 'User 1', 'message' => 'Hi!', 'timestamp' => '2023-11-10 14:30:00'],
                                    ['name' => 'User 2', 'message' => 'Hello!', 'timestamp' => '2023-11-10 14:35:00'],
                                ];

                                foreach ($chatMessages as $message) {
                                ?>
                                    <a href="#" class="chatperson" onclick="return false;">
                                        <div class="namechat">
                                            <div class="pname"><?php echo $message['name'] . ' - ' . date("d-M-Y h:i A", strtotime($message['timestamp'])); ?></div>
                                            <div class="lastmsg"><?php echo $message['message']; ?></div>
                                        </div>
                                    </a>
                                <?php
                                }
                                ?>
                            </div>
                            <div class="row">
                                <div class="col-xs-12">
                                    <textarea class="form-control" placeholder="Enter message here..."></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <style>
                /* Your CSS styles for chat users and messages here */
            </style>
        </div>
    </div>
</div>
<!-- //testimonials -->

<?php
include("footer.php");
?>
