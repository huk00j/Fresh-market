<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <title>ThewayShop - Ecommerce Bootstrap 4 HTML Template</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/freshshop-master/images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="<%=request.getContextPath()%>/freshshop-master/images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/freshshop-master/css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/freshshop-master/css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/freshshop-master/css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/freshshop-master/css/custom.css">

    <!--[if lt IE 9]>
      <script src="<%=request.getContextPath()%>/freshshop-master/https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="<%=request.getContextPath()%>/freshshop-master/https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
    <!-- Start Main Top -->
    <div class="main-top">
		<div class="container-fluid">
			<div class="row">

				<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
					<div class="text-slid-box">
						<div id="offer-box" class="carouselTicker">

							<ul class="offer-box">
								<li><i class="fab fa-opencart"></i> 111</li>
								<li><i class="fab fa-opencart"></i> 222</li>
								<li><i class="fab fa-opencart"></i> 333</li>
								<li><i class="fab fa-opencart"></i> 444</li>
							</ul>

						</div>
					</div>
				</div>

				<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
					<div class="our-link">
						<ul>

							<c:choose>
								<c:when test="${sessionScope.sid != null}">
									<li id=idcolor><a href="#"><i
											class="fa fa-user s_color"></i> ${sessionScope.sid}</a></li>
									<li><a href="#"><i class="fas fa-location-arrow"></i>
											로그아웃</a></li>
								</c:when>

								<c:otherwise>
									<li><a href="#"><i class="fa fa-user s_color"></i> 손님</a></li>
									<li><a href="<%=request.getContextPath()%>/login/login.jsp"><i
											class="fas fa-location-arrow"></i> 로그인</a></li>
								</c:otherwise>
							</c:choose>

						</ul>
					</div>

					<div class="login-box">
						<select onchange="if(this.value) location.href=(this.value);"
							id="basic" class="selectpicker show-tick form-control"
							data-placeholder="Sign In">
							<option>목록</option>
							<option>내 정보</option>
							<option>기타 등등</option>
							<!-- <a href="wishlist.html">Wishlist</a> -->
						</select>
					</div>
				</div>

			</div>
		</div>
	</div>
    <!-- End Main Top -->

    <!-- Start Main Top -->
    <header class="main-header">
        <!-- Start Navigation -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
            <div class="container">
                <!-- Start Header Navigation -->
                <div class="navbar-header">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                    <a class="navbar-brand" href="<%=request.getContextPath()%>/freshshop-master/index.html"><img src="<%=request.getContextPath()%>/freshshop-master/images/logo.png" class="logo" alt=""></a>
                </div>
                <!-- End Header Navigation -->

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="navbar-menu">
					<ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
						<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/freshshop-master/index.html">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/freshshop-master/about.html">About Us</a></li>
		
		<%--	
						<li class="dropdown active">
							<a href="<%=request.getContextPath()%>/freshshop-master/#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">SHOP</a>
							<ul class="dropdown-menu">
								<li><a href="<%=request.getContextPath()%>/freshshop-master/shop.html">Sidebar Shop</a></li>
								<li><a href="<%=request.getContextPath()%>/freshshop-master/shop-detail.html">Shop Detail</a></li>
								<li><a href="<%=request.getContextPath()%>/freshshop-master/cart.html">Cart</a></li>
								<li><a href="<%=request.getContextPath()%>/freshshop-master/checkout.html">Checkout</a></li>
								<li><a href="<%=request.getContextPath()%>/freshshop-master/my-account.html">My Account</a></li>
								<li><a href="<%=request.getContextPath()%>/freshshop-master/wishlist.html">Wishlist</a></li>
							</ul>
						</li>
		--%>
		
						<c:choose>
								<c:when test="${sessionScope.sid != '관리자'}">
									<li class="nav-item"><a class="nav-link"
									href="<%=request.getContextPath()%>/ProductServlet?command=product_List">상품 목록</a></li>
								</c:when>

							<c:otherwise>
								<li class="dropdown"><a class="nav-link dropdown-toggle arrow" data-toggle="dropdown">SHOP</a>
								<ul class="dropdown-menu">
									<li><a href="<%=request.getContextPath()%>/freshshop-Manager/mProduct_enroll.jsp">상품 등록</a></li>
									<li><a href="<%=request.getContextPath()%>/ManagerServlet?command=enroll_list_action">상품 목록</a></li>
								</ul>
								</li>
							</c:otherwise>
						</c:choose>
						
						<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/freshshop-master/gallery.html">Gallery</a></li>
						<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/freshshop-master/contact-us.html">Contact Us</a></li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->

                <!-- Start Atribute Navigation -->
                <div class="attr-nav">
					<ul>
						<li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
						<li class="side-menu"><a href="<%=request.getContextPath()%>/GuestServlet?command=cart_action&id=${sessionScope.sid }"> <i
								class="fa fa-shopping-bag"></i> <span class="badge">3</span>
								장바구니
						</a></li>
					</ul>
				</div>
                <!-- End Atribute Navigation -->
            </div>
            <!-- Start Side Menu -->
            <div class="side">
                <a href="<%=request.getContextPath()%>/freshshop-master/#" class="close-side"><i class="fa fa-times"></i></a>
                <li class="cart-box">
                    <ul class="cart-list">
                        <li>
                            <a href="<%=request.getContextPath()%>/freshshop-master/#" class="photo"><img src="<%=request.getContextPath()%>/freshshop-master/images/img-pro-01.jpg" class="cart-thumb" alt="" /></a>
                            <h6><a href="<%=request.getContextPath()%>/freshshop-master/#">Delica omtantur </a></h6>
                            <p>1x - <span class="price">$80.00</span></p>
                        </li>
                        <li>
                            <a href="<%=request.getContextPath()%>/freshshop-master/#" class="photo"><img src="<%=request.getContextPath()%>/freshshop-master/images/img-pro-02.jpg" class="cart-thumb" alt="" /></a>
                            <h6><a href="<%=request.getContextPath()%>/freshshop-master/#">Omnes ocurreret</a></h6>
                            <p>1x - <span class="price">$60.00</span></p>
                        </li>
                        <li>
                            <a href="<%=request.getContextPath()%>/freshshop-master/#" class="photo"><img src="<%=request.getContextPath()%>/freshshop-master/images/img-pro-03.jpg" class="cart-thumb" alt="" /></a>
                            <h6><a href="<%=request.getContextPath()%>/freshshop-master/#">Agam facilisis</a></h6>
                            <p>1x - <span class="price">$40.00</span></p>
                        </li>
                        <li class="total">
                            <a href="<%=request.getContextPath()%>/freshshop-master/#" class="btn btn-default hvr-hover btn-cart">VIEW CART</a>
                            <span class="float-right"><strong>Total</strong>: $180.00</span>
                        </li>
                    </ul>
                </li>
            </div>
            <!-- End Side Menu -->
        </nav>
        <!-- End Navigation -->
    </header>
    <!-- End Main Top -->

    <!-- Start Top Search -->
    <div class="top-search">
        <div class="container">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-search"></i></span>
                <input type="text" class="form-control" placeholder="Search">
                <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
            </div>
        </div>
    </div>
    <!-- End Top Search -->

    <!-- Start All Title Box -->
    <div class="all-title-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>My Account</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/freshshop-master/#">Shop</a></li>
                        <li class="breadcrumb-item active">My Account</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->

    <!-- Start My Account  -->
    <div class="my-account-box-main">
        <div class="container">
            <div class="my-account-page">
                <div class="row">
                    <div class="col-lg-4 col-md-12">
                        <div class="account-box">
                            <div class="service-box">
                                <div class="service-icon">
                                    <a href="<%=request.getContextPath()%>/freshshop-master/#"> <i class="fa fa-gift"></i> </a>
                                </div>
                                <div class="service-desc">
                                    <h4>Your Orders</h4>
                                    <p>Track, return, or buy things again</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12">
                        <div class="account-box">
                            <div class="service-box">
                                <div class="service-icon">
                                    <a href="<%=request.getContextPath()%>/freshshop-master/#"><i class="fa fa-lock"></i> </a>
                                </div>
                                <div class="service-desc">
                                    <h4>Login &amp; security</h4>
                                    <p>Edit login, name, and mobile number</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12">
                        <div class="account-box">
                            <div class="service-box">
                                <div class="service-icon">
                                    <a href="<%=request.getContextPath()%>/freshshop-master/#"> <i class="fa fa-location-arrow"></i> </a>
                                </div>
                                <div class="service-desc">
                                    <h4>Your Addresses</h4>
                                    <p>Edit addresses for orders and gifts</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12">
                        <div class="account-box">
                            <div class="service-box">
                                <div class="service-icon">
                                    <a href="<%=request.getContextPath()%>/freshshop-master/#"> <i class="fa fa-credit-card"></i> </a>
                                </div>
                                <div class="service-desc">
                                    <h4>Payment options</h4>
                                    <p>Edit or add payment methods</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12">
                        <div class="account-box">
                            <div class="service-box">
                                <div class="service-icon">
                                    <a href="<%=request.getContextPath()%>/freshshop-master/#"> <i class="fab fa-paypal"></i> </a>
                                </div>
                                <div class="service-desc">
                                    <h4>PayPal</h4>
                                    <p>View benefits and payment settings</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12">
                        <div class="account-box">
                            <div class="service-box">
                                <div class="service-icon">
                                    <a href="<%=request.getContextPath()%>/freshshop-master/#"> <i class="fab fa-amazon"></i> </a>
                                </div>
                                <div class="service-desc">
                                    <h4>Amazon Pay balance</h4>
                                    <p>Add money to your balance</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="bottom-box">
                    <div class="row">
                        <div class="col-lg-4 col-md-12">
                            <div class="account-box">
                                <div class="service-box">
                                    <div class="service-desc">
                                        <h4>Gold &amp; Diamond Jewellery</h4>
                                        <ul>
                                            <li> <a href="<%=request.getContextPath()%>/freshshop-master/#">Apps and more</a> </li>
                                            <li> <a href="<%=request.getContextPath()%>/freshshop-master/#">Content and devices</a> </li>
                                            <li> <a href="<%=request.getContextPath()%>/freshshop-master/#">Music settings</a> </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12">
                            <div class="account-box">
                                <div class="service-box">
                                    <div class="service-desc">
                                        <h4>Handloom &amp; Handicraft Store</h4>
                                        <ul>
                                            <li> <a href="<%=request.getContextPath()%>/freshshop-master/#">Advertising preferences </a> </li>
                                            <li> <a href="<%=request.getContextPath()%>/freshshop-master/#">Communication preferences</a> </li>
                                            <li> <a href="<%=request.getContextPath()%>/freshshop-master/#">SMS alert preferences</a> </li>
                                            <li> <a href="<%=request.getContextPath()%>/freshshop-master/#">Message center</a> </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12">
                            <div class="account-box">
                                <div class="service-box">
                                    <div class="service-desc">
                                        <h4>The Designer Boutique</h4>
                                        <ul>
                                            <li> <a href="<%=request.getContextPath()%>/freshshop-master/#">Amazon Pay</a> </li>
                                            <li> <a href="<%=request.getContextPath()%>/freshshop-master/#">Bank accounts for refunds</a> </li>
                                            <li> <a href="<%=request.getContextPath()%>/freshshop-master/#">Coupons</a> </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12">
                            <div class="account-box">
                                <div class="service-box">
                                    <div class="service-desc">
                                        <h4>Gift Boxes, Gift Tags, Greeting Cards</h4>
                                        <ul>
                                            <li> <a href="<%=request.getContextPath()%>/freshshop-master/#">Leave delivery feedback</a> </li>
                                            <li> <a href="<%=request.getContextPath()%>/freshshop-master/#">Lists</a> </li>
                                            <li> <a href="<%=request.getContextPath()%>/freshshop-master/#">Photo ID proofs</a> </li>
                                            <li> <a href="<%=request.getContextPath()%>/freshshop-master/#">Profile</a> </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12">
                            <div class="account-box">
                                <div class="service-box">
                                    <div class="service-desc">
                                        <h4>Other accounts</h4>
                                        <ul>
                                            <li> <a href="<%=request.getContextPath()%>/freshshop-master/#">Amazon Business registration</a> </li>
                                            <li> <a href="<%=request.getContextPath()%>/freshshop-master/#">Seller account</a> </li>
                                            <li> <a href="<%=request.getContextPath()%>/freshshop-master/#">Amazon Web Services</a> </li>
                                            <li> <a href="<%=request.getContextPath()%>/freshshop-master/#">Login with Amazon</a> </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12">
                            <div class="account-box">
                                <div class="service-box">
                                    <div class="service-desc">
                                        <h4>Shopping programs and rentals</h4>
                                        <ul>
                                            <li> <a href="<%=request.getContextPath()%>/freshshop-master/#">Subscribe &amp; Save</a> </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End My Account -->

    <!-- Start Instagram Feed  -->
    <div class="instagram-box">
        <div class="main-instagram owl-carousel owl-theme">
            <div class="item">
                <div class="ins-inner-box">
                    <img src="<%=request.getContextPath()%>/freshshop-master/images/instagram-img-01.jpg" alt="" />
                    <div class="hov-in">
                        <a href="<%=request.getContextPath()%>/freshshop-master/#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="<%=request.getContextPath()%>/freshshop-master/images/instagram-img-02.jpg" alt="" />
                    <div class="hov-in">
                        <a href="<%=request.getContextPath()%>/freshshop-master/#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="<%=request.getContextPath()%>/freshshop-master/images/instagram-img-03.jpg" alt="" />
                    <div class="hov-in">
                        <a href="<%=request.getContextPath()%>/freshshop-master/#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="<%=request.getContextPath()%>/freshshop-master/images/instagram-img-04.jpg" alt="" />
                    <div class="hov-in">
                        <a href="<%=request.getContextPath()%>/freshshop-master/#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="<%=request.getContextPath()%>/freshshop-master/images/instagram-img-05.jpg" alt="" />
                    <div class="hov-in">
                        <a href="<%=request.getContextPath()%>/freshshop-master/#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="<%=request.getContextPath()%>/freshshop-master/images/instagram-img-06.jpg" alt="" />
                    <div class="hov-in">
                        <a href="<%=request.getContextPath()%>/freshshop-master/#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="<%=request.getContextPath()%>/freshshop-master/images/instagram-img-07.jpg" alt="" />
                    <div class="hov-in">
                        <a href="<%=request.getContextPath()%>/freshshop-master/#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="<%=request.getContextPath()%>/freshshop-master/images/instagram-img-08.jpg" alt="" />
                    <div class="hov-in">
                        <a href="<%=request.getContextPath()%>/freshshop-master/#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="<%=request.getContextPath()%>/freshshop-master/images/instagram-img-09.jpg" alt="" />
                    <div class="hov-in">
                        <a href="<%=request.getContextPath()%>/freshshop-master/#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="<%=request.getContextPath()%>/freshshop-master/images/instagram-img-05.jpg" alt="" />
                    <div class="hov-in">
                        <a href="<%=request.getContextPath()%>/freshshop-master/#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Instagram Feed  -->


    <!-- Start Footer  -->
    <footer>
        <div class="footer-main">
            <div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-12 col-sm-12">
						<div class="footer-top-box">
							<h3>Business Time</h3>
							<ul class="list-time">
								<li>Monday - Friday: 08.00am to 05.00pm</li> <li>Saturday: 10.00am to 08.00pm</li> <li>Sunday: <span>Closed</span></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-4 col-md-12 col-sm-12">
						<div class="footer-top-box">
							<h3>Newsletter</h3>
							<form class="newsletter-box">
								<div class="form-group">
									<input class="" type="email" name="Email" placeholder="Email Address*" />
									<i class="fa fa-envelope"></i>
								</div>
								<button class="btn hvr-hover" type="submit">Submit</button>
							</form>
						</div>
					</div>
					<div class="col-lg-4 col-md-12 col-sm-12">
						<div class="footer-top-box">
							<h3>Social Media</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
							<ul>
                                <li><a href="<%=request.getContextPath()%>/freshshop-master/#"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="<%=request.getContextPath()%>/freshshop-master/#"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="<%=request.getContextPath()%>/freshshop-master/#"><i class="fab fa-linkedin" aria-hidden="true"></i></a></li>
                                <li><a href="<%=request.getContextPath()%>/freshshop-master/#"><i class="fab fa-google-plus" aria-hidden="true"></i></a></li>
                                <li><a href="<%=request.getContextPath()%>/freshshop-master/#"><i class="fa fa-rss" aria-hidden="true"></i></a></li>
                                <li><a href="<%=request.getContextPath()%>/freshshop-master/#"><i class="fab fa-pinterest-p" aria-hidden="true"></i></a></li>
                                <li><a href="<%=request.getContextPath()%>/freshshop-master/#"><i class="fab fa-whatsapp" aria-hidden="true"></i></a></li>
                            </ul>
						</div>
					</div>
				</div>
				<hr>
                <div class="row">
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-widget">
                            <h4>About Freshshop</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p> 
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p> 							
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-link">
                            <h4>Information</h4>
                            <ul>
                                <li><a href="<%=request.getContextPath()%>/freshshop-master/#">About Us</a></li>
                                <li><a href="<%=request.getContextPath()%>/freshshop-master/#">Customer Service</a></li>
                                <li><a href="<%=request.getContextPath()%>/freshshop-master/#">Our Sitemap</a></li>
                                <li><a href="<%=request.getContextPath()%>/freshshop-master/#">Terms &amp; Conditions</a></li>
                                <li><a href="<%=request.getContextPath()%>/freshshop-master/#">Privacy Policy</a></li>
                                <li><a href="<%=request.getContextPath()%>/freshshop-master/#">Delivery Information</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-link-contact">
                            <h4>Contact Us</h4>
                            <ul>
                                <li>
                                    <p><i class="fas fa-map-marker-alt"></i>Address: Michael I. Days 3756 <br>Preston Street Wichita,<br> KS 67213 </p>
                                </li>
                                <li>
                                    <p><i class="fas fa-phone-square"></i>Phone: <a href="<%=request.getContextPath()%>/freshshop-master/tel:+1-888705770">+1-888 705 770</a></p>
                                </li>
                                <li>
                                    <p><i class="fas fa-envelope"></i>Email: <a href="<%=request.getContextPath()%>/freshshop-master/mailto:contactinfo@gmail.com">contactinfo@gmail.com</a></p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- End Footer  -->

    <!-- Start copyright  -->
    <div class="footer-copyright">
        <p class="footer-company">All Rights Reserved. &copy; 2018 <a href="<%=request.getContextPath()%>/freshshop-master/#">ThewayShop</a> Design By :
            <a href="<%=request.getContextPath()%>/freshshop-master/https://html.design/">html design</a></p>
    </div>
    <!-- End copyright  -->

    <a href="<%=request.getContextPath()%>/freshshop-master/#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

    <!-- ALL JS FILES -->
    <script src="<%=request.getContextPath()%>/freshshop-master/js/jquery-3.2.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/freshshop-master/js/popper.min.js"></script>
    <script src="<%=request.getContextPath()%>/freshshop-master/js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
    <script src="<%=request.getContextPath()%>/freshshop-master/js/jquery.superslides.min.js"></script>
    <script src="<%=request.getContextPath()%>/freshshop-master/js/bootstrap-select.js"></script>
    <script src="<%=request.getContextPath()%>/freshshop-master/js/inewsticker.js"></script>
    <script src="<%=request.getContextPath()%>/freshshop-master/js/bootsnav.js."></script>
    <script src="<%=request.getContextPath()%>/freshshop-master/js/images-loded.min.js"></script>
    <script src="<%=request.getContextPath()%>/freshshop-master/js/isotope.min.js"></script>
    <script src="<%=request.getContextPath()%>/freshshop-master/js/owl.carousel.min.js"></script>
    <script src="<%=request.getContextPath()%>/freshshop-master/js/baguetteBox.min.js"></script>
    <script src="<%=request.getContextPath()%>/freshshop-master/js/form-validator.min.js"></script>
    <script src="<%=request.getContextPath()%>/freshshop-master/js/contact-form-script.js"></script>
    <script src="<%=request.getContextPath()%>/freshshop-master/js/custom.js"></script>
</body>

</html>