 
 <?php 

if(isset($_Get['action'])){
       if(!empty($_SESSION['cart'])){
       foreach($_POST['quantity'] as $key => $val){
           if($val==0){
               unset($_SESSION['cart'][$key]);
           }else{
               $_SESSION['cart'][$key]['quantity']=$val;
           }
       }
       }
   }
?>

 <!-- Offcanvas Menu Begin -->
 <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="offcanvas__close">+</div>
        <ul class="offcanvas__widget">
            <li><span class="icon_search search-switch"></span></li>
            <?php if(strlen($_SESSION['login']))
    {   ?>
                            <li><a href="my-wishlist.php"><span class="icon_heart_alt"></span>
                            <div class="tip">2</div></li>
                            <?php } ?>
            <li><a href="#"><span class="icon_bag_alt"></span>
            <?php
if(!empty($_SESSION['cart'])){
	?>
                <div class="tip"><?php echo $_SESSION['qnty'];?></div>
                <?php  ?>
                <?php }else  {?>
                    <div class="tip">0</div>
                    <?php }?>
            </a></li>
        </ul>
        <div class="offcanvas__logo">
            <a href="./index.html"><img src="img/logo.png" alt=""></a>
        </div>
        <div id="mobile-menu-wrap"></div>
        <div class="offcanvas__auth">
        <?php if(strlen($_SESSION['login'])==0)
    {   ?>
            <a href="login.php">Login/Register</a>
            <?php }
            else{ ?>
                <a href="logout.php">Logout</a>
                <?php } ?>
        </div>
    </div>
    <!-- Offcanvas Menu End -->                         

    <!-- Header Section Begin -->
    <header class="header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-3 col-lg-2">
                    <div class="header__logo">
                        <a href="./index.html"><img src="img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-7">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><a href="index.php">Home</a></li>
                            <?php $sql=mysqli_query($con,"select id,categoryName  from category limit 3");
while($row=mysqli_fetch_array($sql))
{
    ?>
                            <li><a href="category.php?cid=<?php echo $row['id'];?>"><?php echo $row['categoryName'];?></a></li>
                            <?php } ?>
                            <li><a href="shop.php">Shop</a></li>
                            <?php if(strlen($_SESSION['login']))
    {   ?>
                            <li><a href="#">My Account</a>
                            <ul class="dropdown">
                                    <li><a href="my-account.php">Profile</a></li>
                                    <li><a href="order-history.php">Order History</a></li>
                                </ul>
                            </li>
                            <?php } ?>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__right">                      
                        <ul class="header__right__widget">
                            <li><span class="icon_search search-switch"></span></li>
                            <?php if(strlen($_SESSION['login']))
    {   ?>
                            <li><a href="my-wishlist.php"><span class="icon_heart_alt"></span>
                            <div class="tip">2</div></li>
                            <?php } ?>
                            <li><a href="my-cart.php"><span class="icon_bag_alt"></span>
                            <?php
if(!empty($_SESSION['cart'])){
	?>
                                <div class="tip"><?php echo $_SESSION['qnty'];?></div>
                                <?php  ?>
<?php }else  {?>
                                    <div class="tip">0</div>
                                    <?php }?>
                            </a></li>
                        </ul>

                        <div class="header__right__auth">
                  <?php if(strlen($_SESSION['login'])==0)
    {   ?>
              
                            <a href="login.php">Login/ Register</a>
                            <?php }
else{ ?>
                         <a href="logout.php">Logout</a>
                         <?php } ?>
                        </div>
                    </div>
                </div>
            </div>
            <div class="canvas__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->