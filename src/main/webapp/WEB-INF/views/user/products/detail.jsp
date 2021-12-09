<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<head>
<meta charset="UTF-8">
<title>Chi tiết sản phẩm</title>
<style>
.product-content {
	overflow-x: hidden;
}
</style>
</head>
<body>
	<!-- 
Body Section 
-->
	<div class="row product-content">
		<div class="span9">
			<ul class="breadcrumb">
				<li><a href="index.html">Trang chủ</a> <span class="divider">/</span></li>
				<li><a href="products.html">Sản phẩm</a> <span class="divider">/</span></li>
				<li class="active">Chi tiết sản phẩm</li>
			</ul>
			<div class="container">

				<div id="box-content">
					<div class="container">
						<div class="row"></div>
					</div>

					<div class="position-03">
						<div class="container">
							<div class="row">
								<div class="box-1"></div>
								<div class="box-2">
									<div class="slide">
										<div class="item">
											<div class="box-image">
												<a href="#"><img
													src="<c:url value='/assets/images/keyboards/${product.imageLink }' />"
													alt=""></a>
											</div>
											<div class="product-shop">
												<div class="pro-info">
													<div class="pro-inner">
														<div class="pro-title product-name">
															<h2>${product.name}</h2>
														</div>
														<div class="pro-content">
															<div class="wrap-price">
																<div class="price-box">
																	<span class="regular-price"> <span class="price">${product.price}</span></span>
																</div>
															</div>

															<div class="ratings">
																<div class="rating-box">
																	<div class="rating" style="width: 80%"></div>
																</div>
																<span class="amount"><a href="#">1(s)</a></span>
															</div>
															<div>
																<h4>Số lượng còn: ${product.amount}</h4>
															</div>
														</div>
													</div>
												</div>
												<div class="std">${product.description}</div>
												<div class="item-btn">
													<div class="box-inner">

														<a title="Add to cart" class="btn-cart" href="#">Add
															to Cart</a>
													</div>
												</div>
											</div>
										</div>




									</div>
								</div>

							</div>
						</div>
					</div>






				</div>
				<ul id="productDetail" class="nav nav-tabs">
					<li class="active"><a href="#home" data-toggle="tab">Chi
							tiết sản phẩm</a></li>
				</ul>
				<div id="myTabContent" class="tab-content tabWrapper">
					<div class="tab-pane fade active in" id="home">
					<div class="row-fluid">
							
						
							
						</div>
					</div>
					

				</div>



			</div>

		</div>
	</div>
	<!-- Body wrapper -->
</body>