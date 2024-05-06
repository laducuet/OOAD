<?php
include("header.php");
?>
            
            <!-- breadcrumb-area start -->
            <div class="breadcrumb-area bg-gray">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <ul class="breadcrumb-list">
                                <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                                <li class="breadcrumb-item active">Contact</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- breadcrumb-area end -->
            
            <!-- content-wraper start -->
            <div class="content-wraper">
                <div class="container-fluid  p-0">
                    <div class="row no-gutters">
                        <div class="col-sm-12 col-md-12 col-lg-6 col-xs-12">
                            <div class="contact-form-inner">
                                <h2>TELL US YOUR QUERY</h2>
                                <form id="contact-form" method="POST" action="">
                                    <div class="row">
                                        <div class="col-md-6 col-lg-6">
                                            <input type="text" placeholder="First name*" name="name" required>
                                        </div>
                                        <div class="col-md-6 col-lg-6">
                                            <input type="text"  placeholder="Last name*" name="lastname" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6 col-lg-6">
                                            <input type="email"  placeholder="Email*" name="email" required>
                                        </div>
                                        <div class="col-md-6 col-lg-6">
                                            <input type="text" placeholder="Subject*" name="subject" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <textarea placeholder="Message *" name="message"required></textarea>
                                        </div>
                                    </div>
                                    <div class="contact-submit-btn">
                                        <button class="submit-btn" type="submit">Send Email</button>
                                         <p class="form-messege"></p>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-12 col-lg-6 col-xs-12 plr-0">
                            <div class="contact-address-area">
                                <h2>CONTACT US</h2>
                                <ul>
                                    <li>
                                        <i class="fa fa-fax">&nbsp;</i> Address : E-Auction, 3rd Floor, Blue Area, Islamabad,Pakistan</li>
                                    <li>
                                        <i class="fa fa-phone">&nbsp;</i> contact@onlineauction.com</li>
                                    <li>
                                        <i class="fa fa-envelope-o"></i>&nbsp; +92-3175633755</li>
                                </ul>
                            </div>
                        </div>
						
						
                    </div>
					
					

                </div>
            </div>
            <!-- content-wraper end -->
            

<!-- footer-area start -->
<?php
include("footer.php");
?>
			