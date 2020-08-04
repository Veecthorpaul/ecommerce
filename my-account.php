<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['login'])==0)
    {   
header('location:index.php');
}
else{
	if(isset($_POST['update']))
	{
		$name=$_POST['name'];
		$contactno=$_POST['contactno'];
		$query=mysqli_query($con,"update users set name='$name',contactno='$contactno' where id='".$_SESSION['id']."'");
		if($query)
		{
echo "<script>alert('Your info has been updated');</script>";
		}
	}


date_default_timezone_set('Asia/Kolkata');// change according timezone
$currentTime = date( 'd-m-Y h:i:s A', time () );


if(isset($_POST['submit']))
{
$sql=mysqli_query($con,"SELECT password FROM  users where password='".md5($_POST['cpass'])."' && id='".$_SESSION['id']."'");
$num=mysqli_fetch_array($sql);
if($num>0)
{
 $con=mysqli_query($con,"update students set password='".md5($_POST['newpass'])."', updationDate='$currentTime' where id='".$_SESSION['id']."'");
echo "<script>alert('Password Changed Successfully !!');</script>";
}
else
{
	echo "<script>alert('Current Password not match !!');</script>";
}
}


// code for billing address updation
if(isset($_POST['billingupdate']))
{
    $baddress=$_POST['billingaddress'];
    $bstate=$_POST['bilingstate'];
    $bcity=$_POST['billingcity'];
    $bpincode=$_POST['billingpincode'];
    $query=mysqli_query($con,"update users set billingAddress='$baddress',billingState='$bstate',billingCity='$bcity',billingPincode='$bpincode' where id='".$_SESSION['id']."'");
    if($query)
    {
echo "<script>alert('Billing Address has been updated');</script>";
    }
}


// code for Shipping address updation
if(isset($_POST['shippingupdate']))
{
    $saddress=$_POST['shippingaddress'];
    $sstate=$_POST['shippingstate'];
    $scity=$_POST['shippingcity'];
    $spincode=$_POST['shippingpincode'];
    $query=mysqli_query($con,"update users set shippingAddress='$saddress',shippingState='$sstate',shippingCity='$scity',shippingPincode='$spincode' where id='".$_SESSION['id']."'");
    if($query)
    {
echo "<script>alert('Shipping Address has been updated');</script>";
    }
}


?>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ashion Template">
    <meta name="keywords" content="Ashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ashion | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <script type="text/javascript">
function valid()
{
if(document.chngpwd.cpass.value=="")
{
alert("Current Password Filed is Empty !!");
document.chngpwd.cpass.focus();
return false;
}
else if(document.chngpwd.newpass.value=="")
{
alert("New Password Filed is Empty !!");
document.chngpwd.newpass.focus();
return false;
}
else if(document.chngpwd.cnfpass.value=="")
{
alert("Confirm Password Filed is Empty !!");
document.chngpwd.cnfpass.focus();
return false;
}
else if(document.chngpwd.newpass.value!= document.chngpwd.cnfpass.value)
{
alert("Password and Confirm Password Field do not match  !!");
document.chngpwd.cnfpass.focus();
return false;
}
return true;
}
</script>

</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <?php include('includes/header.php');?>

     <!-- Breadcrumb Begin -->
     <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="./index.html"><i class="fa fa-home"></i> Home</a>
                        <span>My Profile</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <h4 style="text-align: center" class="mb-4">My Profile </h4>
                            <div class="col-lg-12">
                            <?php
$query=mysqli_query($con,"select * from users where id='".$_SESSION['id']."'");
while($row=mysqli_fetch_array($query))
{
?>
                            <form action="#" class="checkout__form mb-4" method="post">
                                <div class="checkout__form__input">
                                <p>Full Name <span>*</span></p>
                                    <input type="name" name="name" value="<?php echo $row['name'];?>" required>
                                </div>
                                <div class="checkout__form__input">
                                <p>Email <span>*</span></p>
                                    <input type="email" type="email" name="email" value="<?php echo $row['email'];?>" readonly>
                                </div>
                                <div class="checkout__form__input">
                                <p>Phone Number <span>*</span></p>
                                    <input type="text" type="contactno" name="contactno" value="<?php echo $row['contactno'];?>" maxlength="12" required>
                                </div>
	  	<button type="submit" class="site-btn" name="update">Update</button>
                                </form>
                                <?php } ?>
                            </div>  
                        </div>
<hr >
                        <div class="col-lg-6">
                        <h4 style="text-align: center" class="mb-4">Billing Address</h4>
                            <div class="col-lg-12">
                            <?php
$query=mysqli_query($con,"select * from users where id='".$_SESSION['id']."'");
while($row=mysqli_fetch_array($query))
{
?>
                            <form action="#" class="checkout__form" role="form" method="post" name="register" onSubmit="return valid();">
                                <div class="checkout__form__input">
                                <p>Billing Address <span>*</span></p>
                                <input type="text" name="billingaddress" class="form-control" required="required" value="<?php echo $row['billingAddress'];?>">
                                </div>
                             
                                <div class="checkout__form__input">
                                <p>Billing State <span>*</span></p>
                                <input type="text"  id="bilingstate" name="bilingstate" value="<?php echo $row['billingState'];?>" required>
                                </div>

                                <div class="checkout__form__input">
                                <p>Billing City<span>*</span></p>
                                <input type="text" id="billingcity" name="billingcity" required="required" value="<?php echo $row['billingCity'];?>" >
                                </div>

                                <div class="checkout__form__input">
                                <p>Billing Postal Code<span>*</span></p>
                                <input type="text" id="billingpincode" name="billingpincode" required="required" value="<?php echo $row['billingPincode'];?>" >
                                </div>
                                <button type="submit" name="billingupdate" class="site-btn" id="submit">Update</button>
                                </form>
                                <?php } ?>
                            </div>  
                        </div>

                        <div class="col-lg-6">
                        <h4 style="text-align: center" class="mb-4">Shipping Address</h4>
                            <div class="col-lg-12">
                            <?php
$query=mysqli_query($con,"select * from users where id='".$_SESSION['id']."'");
while($row=mysqli_fetch_array($query))
{
?>
                            <form action="#" class="checkout__form" role="form" method="post" name="register" onSubmit="return valid();">
                                <div class="checkout__form__input">
                                <p>Shipping Address <span>*</span></p>
                                <input type="text" name="shippingaddress" class="form-control" required="required" value="<?php echo $row['shippingAddress'];?>">
                                </div>
                             
                                <div class="checkout__form__input">
                                <p>Shipping State <span>*</span></p>
                                <input type="text"  id="shippingstate" name="shippingstate" value="<?php echo $row['shippingState'];?>" required>
                                </div>

                                <div class="checkout__form__input">
                                <p>Shipping City<span>*</span></p>
                                <input type="text" id="shippingcity" name="shippingcity" required="required" value="<?php echo $row['shippingCity'];?>" >
                                </div>

                                <div class="checkout__form__input">
                                <p>Shipping Postal Code<span>*</span></p>
                                <input type="text" id="shippingpincode" name="shippingpincode" required="required" value="<?php echo $row['shippingPincode'];?>" >
                                </div>
                                <button type="submit" name="shippingupdate" class="site-btn" id="submit">Update</button>
                                </form>
                                <?php } ?>
                            </div>  
                        </div>
                        </div>
            </div>
        </section>
        <!-- Checkout Section End -->

        <!-- Instagram Begin -->
        <div class="instagram">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                        <div class="instagram__item set-bg" data-setbg="img/instagram/insta-1.jpg">
                            <div class="instagram__text">
                                <i class="fa fa-instagram"></i>
                                <a href="#">@ ashion_shop</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                        <div class="instagram__item set-bg" data-setbg="img/instagram/insta-2.jpg">
                            <div class="instagram__text">
                                <i class="fa fa-instagram"></i>
                                <a href="#">@ ashion_shop</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                        <div class="instagram__item set-bg" data-setbg="img/instagram/insta-3.jpg">
                            <div class="instagram__text">
                                <i class="fa fa-instagram"></i>
                                <a href="#">@ ashion_shop</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                        <div class="instagram__item set-bg" data-setbg="img/instagram/insta-4.jpg">
                            <div class="instagram__text">
                                <i class="fa fa-instagram"></i>
                                <a href="#">@ ashion_shop</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                        <div class="instagram__item set-bg" data-setbg="img/instagram/insta-5.jpg">
                            <div class="instagram__text">
                                <i class="fa fa-instagram"></i>
                                <a href="#">@ ashion_shop</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                        <div class="instagram__item set-bg" data-setbg="img/instagram/insta-6.jpg">
                            <div class="instagram__text">
                                <i class="fa fa-instagram"></i>
                                <a href="#">@ ashion_shop</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Instagram End -->

        <!-- Footer Section Begin -->
        <footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-sm-7">
                        <div class="footer__about">
                            <div class="footer__logo">
                                <a href="./index.html"><img src="img/logo.png" alt=""></a>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                            cilisis.</p>
                            <div class="footer__payment">
                                <a href="#"><img src="img/payment/payment-1.png" alt=""></a>
                                <a href="#"><img src="img/payment/payment-2.png" alt=""></a>
                                <a href="#"><img src="img/payment/payment-3.png" alt=""></a>
                                <a href="#"><img src="img/payment/payment-4.png" alt=""></a>
                                <a href="#"><img src="img/payment/payment-5.png" alt=""></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-5">
                        <div class="footer__widget">
                            <h6>Quick links</h6>
                            <ul>
                                <li><a href="#">About</a></li>
                                <li><a href="#">Blogs</a></li>
                                <li><a href="#">Contact</a></li>
                                <li><a href="#">FAQ</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4">
                        <div class="footer__widget">
                            <h6>Account</h6>
                            <ul>
                                <li><a href="#">My Account</a></li>
                                <li><a href="#">Orders Tracking</a></li>
                                <li><a href="#">Checkout</a></li>
                                <li><a href="#">Wishlist</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-8 col-sm-8">
                        <div class="footer__newslatter">
                            <h6>NEWSLETTER</h6>
                            <form action="#">
                                <input type="text" placeholder="Email">
                                <button type="submit" class="site-btn">Subscribe</button>
                            </form>
                            <div class="footer__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-youtube-play"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-pinterest"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <div class="footer__copyright__text">
                            <p>Copyright &copy; <script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>
                        </div>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer Section End -->

        <!-- Search Begin -->
        <div class="search-model">
            <div class="h-100 d-flex align-items-center justify-content-center">
                <div class="search-close-switch">+</div>
                <form class="search-model-form">
                    <input type="text" id="search-input" placeholder="Search here.....">
                </form>
            </div>
        </div>
        <!-- Search End -->

        <!-- Js Plugins -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/mixitup.min.js"></script>
        <script src="js/jquery.countdown.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.nicescroll.min.js"></script>
        <script src="js/main.js"></script>
    </body>
    </html>
    <?php } ?>