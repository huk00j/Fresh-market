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
							<option value="../login/login.jsp">로그인</option>
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
                        <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/freshshop-master/gallery.html">Gallery</a></li>
                        <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/freshshop-master/contact-us.html">Contact Us</a></li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->

                <!-- Start Atribute Navigation -->
                <div class="attr-nav">
                    <ul>
                        <li class="search"><a href="<%=request.getContextPath()%>/freshshop-master/#"><i class="fa fa-search"></i></a></li>
                        <li class="side-menu"><a href="<%=request.getContextPath()%>/freshshop-master/#">
						<i class="fa fa-shopping-bag"></i>
                            <span class="badge">3</span>
							<p>My Cart</p>
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
                    <h2>Shop Detail</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/freshshop-master/#">Shop</a></li>
                        <li class="breadcrumb-item active">Shop Detail </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->

    <!-- Start Shop Detail  -->
    <div class="shop-detail-box-main">
        <div class="container">
           
			
			<div class="row my-5">
				<div class="card card-outline-secondary my-4">
					<div class="card-header">
						<h2>Product Reviews</h2>
					</div>
					
					<div class="row">
                <div class="col-lg-12">
                    <div class="table-main table-responsive">
                        <table class="table">
                            
                            <tbody>
                                <tr>
                                    <td class="thumbnail-img">
										<h2> 제목</h2>
                                    </td>
                                    
                                    <td class="name-pr">
                                        <a href="#">
									ex) 판매 대행에 관련하여 문의 드립니다.
								</a>
                                    </td>
                                   
                                </tr>
                                
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
					
					<%-------------------------------------------- --%>
					
					
			<div class="row">
                <div class="col-lg-12">
                    <div class="table-main table-responsive">
                        <table class="table">
                            
                            <tbody>
                                <tr>
                                    <td class="thumbnail-img">
										<h3>아이디</h3>
                                    </td>
                                    
                                    <td class="name-pr">
                                        <a href="#">ex) 판매 대행에 관련하여 문의 드립니다.</a>
                                    </td>
                                   
                                </tr>
                                

                                
                                <tr>
                                    <td class="thumbnail-img">
										<h2> 블라블라</h2>
                                    </td>
                                    
                                    <td class="name-pr">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
                                    </td>
                                   
                                </tr>
                                
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
					
					
					
					
					<%-------------------------------------- --%>
					
					<div class="card-body">
						<div class="media mb-3">
							<div class="mr-2"> 
								<img class="rounded-circle border p-1" src="<%=request.getContextPath()%>/freshshop-master/data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%2264%22%20height%3D%2264%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2064%2064%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_160c142c97c%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_160c142c97c%22%3E%3Crect%20width%3D%2264%22%20height%3D%2264%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2213.5546875%22%20y%3D%2236.5%22%3E64x64%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" alt="Generic placeholder image">
							</div>
							<div class="media-body">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
								<small class="text-muted">Posted by Anonymous on 3/1/18</small>
							</div>
						</div>
						<hr>
						
						<div class="media mb-3">
							<div class="mr-2"> 
								<h3>아아아</h3>
							</div>
							<div class="media-body">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
								<small class="text-muted">Posted by Anonymous on 3/1/18</small>
							</div>
						</div>
						<hr>
						
						<div class="media mb-3">
							<div class="mr-2"> 
								<h3>내가그린기린그림</h3>
							</div>
							<div class="media-body">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
								<small class="text-muted">Posted by Anonymous on 3/1/18</small>
							</div>
						</div>
						<hr>
						
						
						<!--  
						<div class="card-header">
						<h2>Product Reviews</h2>
						</div>
						 -->
						
						
						<div class="cart-box-main">
           
                        <div class="col-md-12 col-lg-12">
                            <div class="odr-box">
                                <div class="title-left">
                                    <h3>Shopping cart</h3>
                                </div>
                                <div class="rounded p-2 bg-light">
                                    <div class="media mb-2 border-bottom">
                                        <div class="media-body"> <a href="detail.html">
                                        Lorem ipsum dolor sit amet</a>
                                        </div>
                                    </div>
                                    
                                    
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 col-lg-12">
                            <div class="order-box">
                                <div class="title-left">
                                    <h3>Your order</h3>
                                </div>
                                <div class="d-flex">
                                    <div class="font-weight-bold">Product</div>
                                    <div class="ml-auto font-weight-bold">Total</div>
                                </div>
                                <hr class="my-1">
                                <div class="d-flex">
                                    <h4>Sub Total</h4>
                                    <div class="ml-auto font-weight-bold"> $ 440 </div>
                                </div>
                                <div class="d-flex">
                                    <h4>Discount</h4>
                                    <div class="ml-auto font-weight-bold"> $ 40 </div>
                                </div>
                                <hr class="my-1">
                                <div class="d-flex">
                                    <h4>Shipping Cost</h4>
                                    <div class="ml-auto font-weight-bold"> Free </div>
                                </div>
                                <hr>
                                <div class="d-flex gr-total">
                                    <h5>Grand Total</h5>
                                    <div class="ml-auto h5"> $ 388 </div>
                                </div>
                                <hr> </div>
                        </div>
                        <div class="col-12 d-flex shopping-box"> <a href="checkout.html" class="ml-auto btn hvr-hover">Place Order</a> </div>

    </div>
						
						
						
						
						
						
						
						<div class="form-group">
										<label>내용</label>
										<textarea class="form-control" id="message" name="enrollintroduce"
											placeholder="Your Message" rows="2"
											data-error="Write your message" required></textarea>
										<div class="help-block with-errors"></div>
									</div>
						
						<a href="<%=request.getContextPath()%>/freshshop-master/#" class="btn hvr-hover">Leave a Review</a>
					</div>
				  </div>
			</div>

            <div class="row my-5">
                <div class="col-lg-12">
                    <div class="title-all text-center">
                        <h1>Featured Products</h1>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet lacus enim.</p>
                    </div>
                    <div class="featured-products-box owl-carousel owl-theme">
                        <div class="item">
                            <div class="products-single fix">
                                <div class="box-img-hover">
                                    <img src="<%=request.getContextPath()%>/freshshop-master/images/img-pro-01.jpg" class="img-fluid" alt="Image">
                                    <div class="mask-icon">
                                        <ul>
                                            <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                            <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                            <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                        </ul>
                                        <a class="cart" href="<%=request.getContextPath()%>/freshshop-master/#">Add to Cart</a>
                                    </div>
                                </div>
                                <div class="why-text">
                                    <h4>Lorem ipsum dolor sit amet</h4>
                                    <h5> $9.79</h5>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="products-single fix">
                                <div class="box-img-hover">
                                    <img src="<%=request.getContextPath()%>/freshshop-master/images/img-pro-02.jpg" class="img-fluid" alt="Image">
                                    <div class="mask-icon">
                                        <ul>
                                            <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                            <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                            <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                        </ul>
                                        <a class="cart" href="<%=request.getContextPath()%>/freshshop-master/#">Add to Cart</a>
                                    </div>
                                </div>
                                <div class="why-text">
                                    <h4>Lorem ipsum dolor sit amet</h4>
                                    <h5> $9.79</h5>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="products-single fix">
                                <div class="box-img-hover">
                                    <img src="<%=request.getContextPath()%>/freshshop-master/images/img-pro-03.jpg" class="img-fluid" alt="Image">
                                    <div class="mask-icon">
                                        <ul>
                                            <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                            <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                            <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                        </ul>
                                        <a class="cart" href="<%=request.getContextPath()%>/freshshop-master/#">Add to Cart</a>
                                    </div>
                                </div>
                                <div class="why-text">
                                    <h4>Lorem ipsum dolor sit amet</h4>
                                    <h5> $9.79</h5>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="products-single fix">
                                <div class="box-img-hover">
                                    <img src="<%=request.getContextPath()%>/freshshop-master/images/img-pro-04.jpg" class="img-fluid" alt="Image">
                                    <div class="mask-icon">
                                        <ul>
                                            <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                            <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                            <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                        </ul>
                                        <a class="cart" href="<%=request.getContextPath()%>/freshshop-master/#">Add to Cart</a>
                                    </div>
                                </div>
                                <div class="why-text">
                                    <h4>Lorem ipsum dolor sit amet</h4>
                                    <h5> $9.79</h5>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="products-single fix">
                                <div class="box-img-hover">
                                    <img src="<%=request.getContextPath()%>/freshshop-master/images/img-pro-01.jpg" class="img-fluid" alt="Image">
                                    <div class="mask-icon">
                                        <ul>
                                            <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                            <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                            <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                        </ul>
                                        <a class="cart" href="<%=request.getContextPath()%>/freshshop-master/#">Add to Cart</a>
                                    </div>
                                </div>
                                <div class="why-text">
                                    <h4>Lorem ipsum dolor sit amet</h4>
                                    <h5> $9.79</h5>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="products-single fix">
                                <div class="box-img-hover">
                                    <img src="<%=request.getContextPath()%>/freshshop-master/images/img-pro-02.jpg" class="img-fluid" alt="Image">
                                    <div class="mask-icon">
                                        <ul>
                                            <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                            <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                            <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                        </ul>
                                        <a class="cart" href="<%=request.getContextPath()%>/freshshop-master/#">Add to Cart</a>
                                    </div>
                                </div>
                                <div class="why-text">
                                    <h4>Lorem ipsum dolor sit amet</h4>
                                    <h5> $9.79</h5>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="products-single fix">
                                <div class="box-img-hover">
                                    <img src="<%=request.getContextPath()%>/freshshop-master/images/img-pro-03.jpg" class="img-fluid" alt="Image">
                                    <div class="mask-icon">
                                        <ul>
                                            <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                            <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                            <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                        </ul>
                                        <a class="cart" href="<%=request.getContextPath()%>/freshshop-master/#">Add to Cart</a>
                                    </div>
                                </div>
                                <div class="why-text">
                                    <h4>Lorem ipsum dolor sit amet</h4>
                                    <h5> $9.79</h5>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="products-single fix">
                                <div class="box-img-hover">
                                    <img src="<%=request.getContextPath()%>/freshshop-master/images/img-pro-04.jpg" class="img-fluid" alt="Image">
                                    <div class="mask-icon">
                                        <ul>
                                            <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                            <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                            <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                        </ul>
                                        <a class="cart" href="<%=request.getContextPath()%>/freshshop-master/#">Add to Cart</a>
                                    </div>
                                </div>
                                <div class="why-text">
                                    <h4>Lorem ipsum dolor sit amet</h4>
                                    <h5> $9.79</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- End Cart -->

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