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
    <title>Freshshop - Ecommerce Bootstrap 4 HTML Template</title>
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
                    <a class="navbar-brand" href="<%=request.getContextPath()%>/freshshop-master/index.jsp"><img src="<%=request.getContextPath()%>/freshshop-master/images/logo.png" class="logo" alt=""></a>
                </div>
                <!-- End Header Navigation -->

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="navbar-menu">
                    <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                        <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/freshshop-master/index.jsp">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/freshshop-master/about.jsp">About Us</a></li>
                       
                  <%--      
                        <li class="dropdown active">
                            <a href="<%=request.getContextPath()%>/freshshop-master/#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">SHOP</a>
                            <ul class="dropdown-menu">
								<li><a href="<%=request.getContextPath()%>/freshshop-master/shop.jsp">Sidebar Shop</a></li>
								<li><a href="<%=request.getContextPath()%>/freshshop-master/shop-detail.jsp">Shop Detail</a></li>
                                <li><a href="<%=request.getContextPath()%>/freshshop-master/cart.jsp">Cart</a></li>
                                <li><a href="<%=request.getContextPath()%>/freshshop-master/checkout.jsp">Checkout</a></li>
                                <li><a href="<%=request.getContextPath()%>/freshshop-master/my-account.jsp">My Account</a></li>
                                <li><a href="<%=request.getContextPath()%>/freshshop-master/wishlist.jsp">Wishlist</a></li>
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
                       
                       
                        <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/freshshop-master/gallery.jsp">Gallery</a></li>
                        
                        <li class="nav-item"><a class="nav-link"
							href="<%=request.getContextPath()%>/QnAServlet?command=QnA_List">질문 게시판</a></li>
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
                    <h2>Shop</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/freshshop-master/#">Home</a></li>
                        <li class="breadcrumb-item active">Shop</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->

    <!-- Start Shop Page  -->
    <div class="shop-box-inner">
        <div class="container">
            <div class="row">
                <div class="col-xl-9 col-lg-9 col-sm-12 col-xs-12 shop-content-right">
                    <div class="right-product-box">
                        <div class="product-item-filter row">
                            <div class="col-12 col-sm-8 text-center text-sm-left">
                                <div class="toolbar-sorter-right">
                                    <span>Sort by </span>
                                    <select id="basic" class="selectpicker show-tick form-control" data-placeholder="$ USD">
									<option data-display="Select">Nothing</option>
									<option value="1">Popularity</option>
									<option value="2">High Price → High Price</option>
									<option value="3">Low Price → High Price</option>
									<option value="4">Best Selling</option>
								</select>
                                </div>
                                <p>Showing all 4 results</p>
                            </div>
                            <div class="col-12 col-sm-4 text-center text-sm-right">
                                <ul class="nav nav-tabs ml-auto">
                                    <li>
                                        <a class="nav-link active" href="<%=request.getContextPath()%>/freshshop-master/#grid-view" data-toggle="tab"> <i class="fa fa-th"></i> </a>
                                    </li>
                                    <li>
                                        <a class="nav-link" href="<%=request.getContextPath()%>/freshshop-master/#list-view" data-toggle="tab"> <i class="fa fa-list-ul"></i> </a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="product-categorie-box">
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane fade show active" id="grid-view">
                                    <div class="row">
                    <%---------------------------------------------------                 
                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                            <div class="products-single fix">
                                                <div class="box-img-hover">
                                                    <div class="type-lb">
                                                        <p class="sale">Sale</p>
                                                    </div>
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
                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                            <div class="products-single fix">
                                                <div class="box-img-hover">
                                                    <div class="type-lb">
                                                        <p class="new">New</p>
                                                    </div>
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
                   ------------------------------------------------------------ --%>      
                   					<c:forEach items="${pList}" var="plist">
                   
                                       <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                            <div class="products-single fix">
                                            
                                            	<form name="add_Cart_Shop" method="post" action="GuestServlet?command=add_cart_action">
                                            	<input type="hidden" name="pId" value="${sessionScope.sid}">
                                            	 <input type="hidden" name="pNum" value="${plist.num }">
                                            	  <input type="hidden" name="pName" value="${plist.name }">
                                            	   <input type="hidden" name="pAmount" value="${plist.amount }">
                                            	    <input type="hidden" name="pPrice" value="${plist.price }">
                                            
                                            
                                                <div class="box-img-hover">
                                                    <div class="type-lb">
                                                        <p class="sale">Sale</p>
                                                    </div>
                                                    <img src="./upload/${plist.image}" class="img-fluid" alt="Image">
                                                    <div class="mask-icon">
                                                        <ul>
                                                            <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                            <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                            <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                                        </ul>
                                                        
                                               		<%-- 
                                                        <a class="cart" href="<%=request.getContextPath()%>/freshshop-master/#">장바구니 담기</a>
                                               		--%>    
                                                      <%--
                                                         <a class="cart" href="javascript:document.add_Cart_Shop.submit();">장바구니 담기</a>
                                                      --%>
                                         
                                                    </div>
                                                </div>
                                                <div class="why-text">
                                                    <h4><a href = "<%=request.getContextPath()%>/ProductServlet?command=product_detail&pNum=${plist.num}">${plist.name }</a></h4>
                                                    <h5>${plist.price } 원</h5>
                                                </div>
                                                
                                                
                                                </form>
                                                
                                                
                                            </div>
                                        </div>
                                       
                                       
                                    </c:forEach>
                                       
                                       
                                       
                                       
              <%--------------------------------------------------------------- --%>                          
                                        
                                        
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane fade" id="list-view">
                     <%--    
                                    <div class="list-view-box">
                                        <div class="row">
                                            <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                                <div class="products-single fix">
                                                    <div class="box-img-hover">
                                                        <div class="type-lb">
                                                            <p class="new">New</p>
                                                        </div>
                                                        <img src="<%=request.getContextPath()%>/freshshop-master/images/img-pro-01.jpg" class="img-fluid" alt="Image">
                                                        <div class="mask-icon">
                                                            <ul>
                                                                <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                                <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                                <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                                            </ul>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-md-6 col-lg-8 col-xl-8">
                                                <div class="why-text full-width">
                                                    <h4>Lorem ipsum dolor sit amet</h4>
                                                    <h5> <del>$ 60.00</del> $40.79</h5>
                                                    <p>Integer tincidunt aliquet nibh vitae dictum. In turpis sapien, imperdiet quis magna nec, iaculis ultrices ante. Integer vitae suscipit nisi. Morbi dignissim risus sit amet orci porta, eget aliquam purus
                                                        sollicitudin. Cras eu metus felis. Sed arcu arcu, sagittis in blandit eu, imperdiet sit amet eros. Donec accumsan nisi purus, quis euismod ex volutpat in. Vestibulum eleifend eros ac lobortis aliquet.
                                                        Suspendisse at ipsum vel lacus vehicula blandit et sollicitudin quam. Praesent vulputate semper libero pulvinar consequat. Etiam ut placerat lectus.</p>
                                                    <a class="btn hvr-hover" href="<%=request.getContextPath()%>/freshshop-master/#">Add to Cart</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="list-view-box">
                                        <div class="row">
                                            <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                                <div class="products-single fix">
                                                    <div class="box-img-hover">
                                                        <div class="type-lb">
                                                            <p class="sale">Sale</p>
                                                        </div>
                                                        <img src="<%=request.getContextPath()%>/freshshop-master/images/img-pro-02.jpg" class="img-fluid" alt="Image">
                                                        <div class="mask-icon">
                                                            <ul>
                                                                <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                                <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                                <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                                            </ul>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-md-6 col-lg-8 col-xl-8">
                                                <div class="why-text full-width">
                                                    <h4>Lorem ipsum dolor sit amet</h4>
                                                    <h5> <del>$ 60.00</del> $40.79</h5>
                                                    <p>Integer tincidunt aliquet nibh vitae dictum. In turpis sapien, imperdiet quis magna nec, iaculis ultrices ante. Integer vitae suscipit nisi. Morbi dignissim risus sit amet orci porta, eget aliquam purus
                                                        sollicitudin. Cras eu metus felis. Sed arcu arcu, sagittis in blandit eu, imperdiet sit amet eros. Donec accumsan nisi purus, quis euismod ex volutpat in. Vestibulum eleifend eros ac lobortis aliquet.
                                                        Suspendisse at ipsum vel lacus vehicula blandit et sollicitudin quam. Praesent vulputate semper libero pulvinar consequat. Etiam ut placerat lectus.</p>
                                                    <a class="btn hvr-hover" href="<%=request.getContextPath()%>/freshshop-master/#">Add to Cart</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="list-view-box">
                                        <div class="row">
                                            <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                                <div class="products-single fix">
                                                    <div class="box-img-hover">
                                                        <div class="type-lb">
                                                            <p class="sale">Sale</p>
                                                        </div>
                                                        <img src="<%=request.getContextPath()%>/freshshop-master/images/img-pro-03.jpg" class="img-fluid" alt="Image">
                                                        <div class="mask-icon">
                                                            <ul>
                                                                <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                                <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                                <li><a href="<%=request.getContextPath()%>/freshshop-master/#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                                            </ul>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-md-6 col-lg-8 col-xl-8">
                                                <div class="why-text full-width">
                                                    <h4>Lorem ipsum dolor sit amet</h4>
                                                    <h5> <del>$ 60.00</del> $40.79</h5>
                                                    <p>Integer tincidunt aliquet nibh vitae dictum. In turpis sapien, imperdiet quis magna nec, iaculis ultrices ante. Integer vitae suscipit nisi. Morbi dignissim risus sit amet orci porta, eget aliquam purus
                                                        sollicitudin. Cras eu metus felis. Sed arcu arcu, sagittis in blandit eu, imperdiet sit amet eros. Donec accumsan nisi purus, quis euismod ex volutpat in. Vestibulum eleifend eros ac lobortis aliquet.
                                                        Suspendisse at ipsum vel lacus vehicula blandit et sollicitudin quam. Praesent vulputate semper libero pulvinar consequat. Etiam ut placerat lectus.</p>
                                                    <a class="btn hvr-hover" href="<%=request.getContextPath()%>/freshshop-master/#">Add to Cart</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                     --%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <%-- search here --%>
				<div class="col-xl-3 col-lg-3 col-sm-12 col-xs-12 sidebar-shop-left">
                    <div class="product-categori">
                        <div class="search-product">
                            <form action="#">
                                <input class="form-control" placeholder="Search here..." type="text">
                                <button type="submit"> <i class="fa fa-search"></i> </button>
                            </form>
                        </div>
                        <div class="filter-sidebar-left">
                            <div class="title-left">
                                <h3>Categories</h3>
                            </div>
                            <div class="list-group list-group-collapse list-group-sm list-group-tree" id="list-group-men" data-children=".sub-men">
                                <div class="list-group-collapse sub-men">
                                    <a class="list-group-item list-group-item-action" href="<%=request.getContextPath()%>/freshshop-master/#sub-men1" data-toggle="collapse" aria-expanded="true" aria-controls="sub-men1">Fruits & Drinks <small class="text-muted">(100)</small>
								</a>
                                    <div class="collapse show" id="sub-men1" data-parent="#list-group-men">
                                        <div class="list-group">
                                            <a href="<%=request.getContextPath()%>/freshshop-master/#" class="list-group-item list-group-item-action active">Fruits 1 <small class="text-muted">(50)</small></a>
                                            <a href="<%=request.getContextPath()%>/freshshop-master/#" class="list-group-item list-group-item-action">Fruits 2 <small class="text-muted">(10)</small></a>
                                            <a href="<%=request.getContextPath()%>/freshshop-master/#" class="list-group-item list-group-item-action">Fruits 3 <small class="text-muted">(10)</small></a>
                                            <a href="<%=request.getContextPath()%>/freshshop-master/#" class="list-group-item list-group-item-action">Fruits 4 <small class="text-muted">(10)</small></a>
                                            <a href="<%=request.getContextPath()%>/freshshop-master/#" class="list-group-item list-group-item-action">Fruits 5 <small class="text-muted">(20)</small></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="list-group-collapse sub-men">
                                    <a class="list-group-item list-group-item-action" href="<%=request.getContextPath()%>/freshshop-master/#sub-men2" data-toggle="collapse" aria-expanded="false" aria-controls="sub-men2">Vegetables 
								<small class="text-muted">(50)</small>
								</a>
                                    <div class="collapse" id="sub-men2" data-parent="#list-group-men">
                                        <div class="list-group">
                                            <a href="<%=request.getContextPath()%>/freshshop-master/#" class="list-group-item list-group-item-action">Vegetables 1 <small class="text-muted">(10)</small></a>
                                            <a href="<%=request.getContextPath()%>/freshshop-master/#" class="list-group-item list-group-item-action">Vegetables 2 <small class="text-muted">(20)</small></a>
                                            <a href="<%=request.getContextPath()%>/freshshop-master/#" class="list-group-item list-group-item-action">Vegetables 3 <small class="text-muted">(20)</small></a>
                                        </div>
                                    </div>
                                </div>
                                <a href="<%=request.getContextPath()%>/freshshop-master/#" class="list-group-item list-group-item-action"> Grocery  <small class="text-muted">(150) </small></a>
                                <a href="<%=request.getContextPath()%>/freshshop-master/#" class="list-group-item list-group-item-action"> Grocery <small class="text-muted">(11)</small></a>
                                <a href="<%=request.getContextPath()%>/freshshop-master/#" class="list-group-item list-group-item-action"> Grocery <small class="text-muted">(22)</small></a>
                            </div>
                        </div>
                        <div class="filter-price-left">
                            <div class="title-left">
                                <h3>Price</h3>
                            </div>
                            <div class="price-box-slider">
                                <div id="slider-range"></div>
                                <p>
                                    <input type="text" id="amount" readonly style="border:0; color:#fbb714; font-weight:bold;">
                                    <button class="btn hvr-hover" type="submit">Filter</button>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Shop Page -->

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
    <script src="<%=request.getContextPath()%>/freshshop-master/js/jquery-ui.js"></script>
    <script src="<%=request.getContextPath()%>/freshshop-master/js/jquery.nicescroll.min.js"></script>
    <script src="<%=request.getContextPath()%>/freshshop-master/js/form-validator.min.js"></script>
    <script src="<%=request.getContextPath()%>/freshshop-master/js/contact-form-script.js"></script>
    <script src="<%=request.getContextPath()%>/freshshop-master/js/custom.js"></script>
</body>

</html>