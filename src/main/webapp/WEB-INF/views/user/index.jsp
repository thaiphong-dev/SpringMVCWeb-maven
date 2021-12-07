<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<body>
<div id="box-content">
	<div class="container">
		<div class="row">
			<div class="slide-show">
				<div class="vt-slideshow">
				
					<ul>
					<c:forEach var="item" items="${slide}">
					<li class="slide1" data-transition="random"><img src= "<c:url value='/assets/images/banner/${item.image}' />" alt="" /></li>
					<li class="slide1" data-transition="random"><img src= "<c:url value='/assets/images/banner/${item.image}' />" alt="" /></li>
					<li class="slide1" data-transition="random"><img src= "<c:url value='/assets/images/banner/${item.image}' />" alt="" /></li>
					</c:forEach>
						
						
					</ul>
				
				</div>
			</div>
		</div>
	</div>
	<div class="position-10">
		<div class="container">
			<div class="title">
			<h5>Streamlined colorful brilliance on an edge-to-edge,</h5> <h5>bezel-less screen</h5>
			<h6>The HP Pavilion 22xw IPS LED backlit monitor is dynamically modern, efficiently thin, and Technicolor-certified.1</h6>
			<div class="content">
				<a class="img01" href="#"><img src="<c:url value='/assets/images/position-10/p10-01.jpg' />" alt=""/></a>
				<a class="img02" href="#"><img src="<c:url value='/assets/images/position-10/p10-02.jpg' />" alt=""/></a>
				<a class="img03" href="#"><img src="<c:url value='/assets/images/position-10/p10-03.jpg' />" alt=""/></a>
				<a class="img04" href="#"><img src="<c:url value='/assets/images/position-10/p10-04.jpg' />" alt=""/></a>
			</div>
			</div>
		</div>
	</div>
	<div class="position-03">
	<div class="container">
			<div class="row">
				<div class="box-1">
				 <h2>featured</h2>
				  <ul class="control">
					<li data-rel="0px" class="ct1 active">Bàn phím cơ</li>
					<li data-rel="-852px" class="ct2">Chuột - lót chuột</li>
					<li data-rel="-1704px" class="ct3">tai nghe - loa</li>
					<li data-rel="-2556px" class="ct4">Microphone</li>
					<li data-rel="-3408px" class="last ct5">Ghế gamming</li>
				  </ul>
				</div>
				<div class="box-2">
				<div class="slide">
				<div class="item">
					<div class="box-image"><a href="#"><img src="<c:url value='/assets/images/product/larg/air-a4.jpg' />" alt=""/></a></div>
					  <div class="product-shop">
						<div class="pro-info">
							 <div class="pro-inner">
								<div class="pro-title product-name"><a href="detail.html">Ipad Air and iOS7</a></div>
								<div class="pro-content">
								   <div class="wrap-price">
									  <div class="price-box">
										 <span class="regular-price">
										 <span class="price">$800.00</span></span>
									  </div>
								   </div>
								   <div class="ratings">
									  <div class="rating-box">
										 <div class="rating" style="width:80%"></div>
									  </div>
									  <span class="amount"><a href="#">1(s)</a></span>
								   </div>
								</div>
							 </div>
						  </div>
						  <div class="std">
					  Cras id leo aliquet, dictum orci at, varius ligula. Duis aliquet pellentesque tincidunt. Vestibulum finibus augue sit amet ex elementum, non consequat libero mattis.
					  </div>
					  <div class="item-btn">
						<div class="box-inner">
						   <a title="Add to wishlist" href="#" class="link-wishlist">&nbsp;</a>
						   <a title="Add to compare" href="#" class="link-compare">&nbsp;</a>
						   <span class="qview">
							<a class="vt_quickview_handler" data-original-title="Quick View" data-placement="left" data-toggle="tooltip" href="#"><span>Quick View</span></a>
						   </span>
						   <a title="Add to cart" class="btn-cart" href="#">Add to Cart</a>
						</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="box-image"><a href="#"><img src="<c:url value='/assets/images/product/larg/demo11.jpg' />" alt=""/></a></div>
					  <div class="product-shop">
						<div class="pro-info">
							 <div class="pro-inner">
								<div class="pro-title product-name"><a href="detail.html">Ipad Air and iOS7</a></div>
								<div class="pro-content">
								   <div class="wrap-price">
									  <div class="price-box">
										 <span class="regular-price">
										 <span class="price">$800.00</span></span>
										 <p class="special-price">
											<span class="price">$1.459.00</span>
										</p>
									  </div>
								   </div>
								   <div class="ratings">
									  <div class="rating-box">
										 <div class="rating" style="width:80%"></div>
									  </div>
									  <span class="amount"><a href="#">1(s)</a></span>
								   </div>
								</div>
							 </div>
						  </div>
						  <div class="std">
					  Cras id leo aliquet, dictum orci at, varius ligula. Duis aliquet pellentesque tincidunt. Vestibulum finibus augue sit amet ex elementum, non consequat libero mattis.
					  </div>
					  <div class="item-btn">
						<div class="box-inner">
						   <a title="Add to wishlist" href="#" class="link-wishlist">&nbsp;</a>
						   <a title="Add to compare" href="#" class="link-compare">&nbsp;</a>
						   <span class="qview">
							<a class="vt_quickview_handler" data-original-title="Quick View" data-placement="left" data-toggle="tooltip" href="#"><span>Quick View</span></a>
						   </span>
						   <a title="Add to cart" class="btn-cart" href="#">Add to Cart</a>
						</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="box-image"><a href="#"><img src="<c:url value='/assets/images/product/larg/laptop.jpg' />" alt=""/></a></div>
					  <div class="product-shop">
						<div class="pro-info">
							 <div class="pro-inner">
								<div class="pro-title product-name"><a href="detail.html">Ipad Air and iOS7</a></div>
								<div class="pro-content">
								   <div class="wrap-price">
									  <div class="price-box">
										 <span class="regular-price">
										 <span class="price">$800.00</span></span>
										 <p class="special-price">
											<span class="price">$1.459.00</span>
										</p>
									  </div>
								   </div>
								   <div class="ratings">
									  <div class="rating-box">
										 <div class="rating" style="width:80%"></div>
									  </div>
									  <span class="amount"><a href="#">1(s)</a></span>
								   </div>
								</div>
							 </div>
						  </div>
						  <div class="std">
					  Cras id leo aliquet, dictum orci at, varius ligula. Duis aliquet pellentesque tincidunt. Vestibulum finibus augue sit amet ex elementum, non consequat libero mattis.
					  </div>
					  <div class="item-btn">
						<div class="box-inner">
						   <a title="Add to wishlist" href="#" class="link-wishlist">&nbsp;</a>
						   <a title="Add to compare" href="#" class="link-compare">&nbsp;</a>
						   <span class="qview">
							<a class="vt_quickview_handler" data-original-title="Quick View" data-placement="left" data-toggle="tooltip" href="#"><span>Quick View</span></a>
						   </span>
						   <a title="Add to cart" class="btn-cart" href="#">Add to Cart</a>
						</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="box-image"><a href="#"><img src="<c:url value='/assets/images/product/larg/desktop.jpg' />" alt=""/></a></div>
					  <div class="product-shop">
						<div class="pro-info">
							 <div class="pro-inner">
								<div class="pro-title product-name"><a href="detail.html">Ipad Air and iOS7</a></div>
								<div class="pro-content">
								   <div class="wrap-price">
									  <div class="price-box">
										 <span class="regular-price">
										 <span class="price">$800.00</span></span>
										 <p class="special-price">
											<span class="price">$1.459.00</span>
										</p>
									  </div>
								   </div>
								   <div class="ratings">
									  <div class="rating-box">
										 <div class="rating" style="width:80%"></div>
									  </div>
									  <span class="amount"><a href="#">1(s)</a></span>
								   </div>
								</div>
							 </div>
						  </div>
						  <div class="std">
					  Cras id leo aliquet, dictum orci at, varius ligula. Duis aliquet pellentesque tincidunt. Vestibulum finibus augue sit amet ex elementum, non consequat libero mattis.
					  </div>
					  <div class="item-btn">
						<div class="box-inner">
						   <a title="Add to wishlist" href="#" class="link-wishlist">&nbsp;</a>
						   <a title="Add to compare" href="#" class="link-compare">&nbsp;</a>
						   <span class="qview">
							<a class="vt_quickview_handler" data-original-title="Quick View" data-placement="left" data-toggle="tooltip" href="#"><span>Quick View</span></a>
						   </span>
						   <a title="Add to cart" class="btn-cart" href="#">Add to Cart</a>
						</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="box-image"><a href="#"><img src="<c:url value='/assets/images/product/larg/camera.jpg' />" alt=""/></a></div>
					  <div class="product-shop">
						<div class="pro-info">
							 <div class="pro-inner">
								<div class="pro-title product-name"><a href="detail.html">Ipad Air and iOS7</a></div>
								<div class="pro-content">
								   <div class="wrap-price">
									  <div class="price-box">
										 <span class="regular-price">
										 <span class="price">$800.00</span></span>
										 <p class="special-price">
											<span class="price">$1.459.00</span>
										</p>
									  </div>
								   </div>
								   <div class="ratings">
									  <div class="rating-box">
										 <div class="rating" style="width:80%"></div>
									  </div>
									  <span class="amount"><a href="#">1(s)</a></span>
								   </div>
								</div>
							 </div>
						  </div>
						  <div class="std">
					  Cras id leo aliquet, dictum orci at, varius ligula. Duis aliquet pellentesque tincidunt. Vestibulum finibus augue sit amet ex elementum, non consequat libero mattis.
					  </div>
					  <div class="item-btn">
						<div class="box-inner">
						   <a title="Add to wishlist" href="#" class="link-wishlist">&nbsp;</a>
						   <a title="Add to compare" href="#" class="link-compare">&nbsp;</a>
						   <span class="qview">
							<a class="vt_quickview_handler" data-original-title="Quick View" data-placement="left" data-toggle="tooltip" href="#"><span>Quick View</span></a>
						   </span>
						   <a title="Add to cart" class="btn-cart" href="#">Add to Cart</a>
						</div>
						</div>
					</div>
				</div>
				</div>
				</div>
			
			</div>
		</div>
	</div>
	<div class="position-02">
	<div class="container">
			<div class="row">
			<div class="title-sp">
			NEWEST DEALS
			<div class="std">
			Get these exclusive online store products.
			</div>
			</div>
			<div class="block vt-slider vt-slider3">
			   <div class="slider-inner">
				  <div class="container-slider">
					 <div class="products-grid">
						<div class="item">
						   <div class="item-wrap">
							  <div class="item-image">
									 <a class="product-image no-touch" href="#" title="Ipad Air and iOS7">
									 <img class="first_image" src="<c:url value='/assets/images/product/larg/demo1.jpg' />" alt="Product demo" /> 
									 </a>
									 <div class="item-btn">
										<div class="box-inner">
										   <a title="Add to wishlist" href="#" class="link-wishlist">&nbsp;</a>
										   <a title="Add to compare" href="#" class="link-compare">&nbsp;</a>
										   <span class="qview">
										    <a class="vt_quickview_handler" data-original-title="Quick View" data-placement="left" data-toggle="tooltip" href="#"><span>Quick View</span></a>
										   </span>
										</div>
									 </div>
									 <a title="Add to cart" class="btn-cart" href="#">&nbsp;</a>
								  </div>
								  <div class="pro-info">
									 <div class="pro-inner">
										<div class="pro-title product-name"><a href="detail.html">Ipad Air and iOS7</a></div>
										<div class="pro-content">
										   <div class="wrap-price">
											  <div class="price-box">
												 <span class="regular-price">
												 <span class="price">$800.00</span></span>
												 <p class="special-price">
													<span class="price">$1.459.00</span>
												</p>
											  </div>
										   </div><!-- 
										   <div class="ratings">
											  <div class="rating-box">
												 <div class="rating" style="width:80%"></div>
											  </div>
											  <span class="amount"><a href="#">1(s)</a></span>
										   </div> -->
										</div>
									 </div>
								  </div>
							   </div>
						   <!--end item wrap -->
							</div>
							<div class="item">
						   <div class="item-wrap">
							  <div class="item-image">
									 <a class="product-image no-touch" href="#" title="Ipad Air and iOS7">
									 <img class="first_image" src="<c:url value='/assets/images/product/larg/demo2.jpg' />" alt="Product demo" /> 
									 </a>
									 <div class="item-btn">
										<div class="box-inner">
										   <a title="Add to wishlist" href="#" class="link-wishlist">&nbsp;</a>
										   <a title="Add to compare" href="#" class="link-compare">&nbsp;</a>
										   <span class="qview">
										    <a class="vt_quickview_handler" data-original-title="Quick View" data-placement="left" data-toggle="tooltip" href="#"><span>Quick View</span></a>
										   </span>
										</div>
									 </div>
									 <a title="Add to cart" class="btn-cart" href="#">&nbsp;</a>
								  </div>
								  <div class="pro-info">
									 <div class="pro-inner">
										<div class="pro-title product-name"><a href="detail.html">Ipad Air and iOS7</a></div>
										<div class="pro-content">
										   <div class="wrap-price">
											  <div class="price-box">
												 <span class="regular-price">
												 <span class="price">$800.00</span></span>
												 <p class="special-price">
													<span class="price">$1.459.00</span>
												</p>
											  </div>
										   </div>
										   <!-- <div class="ratings">
											  <div class="rating-box">
												 <div class="rating" style="width:80%"></div>
											  </div>
											  <span class="amount"><a href="#">1(s)</a></span>
										   </div> -->
										</div>
									 </div>
								  </div>
							   </div>
						   <!--end item wrap -->
							</div>
							<div class="item">
						   <div class="item-wrap">
							  <div class="item-image">
									 <a class="product-image no-touch" href="#" title="Ipad Air and iOS7">
									 <img class="first_image" src="<c:url value='/assets/images/product/larg/demo3.jpg' />" alt="Product demo" /> 
									 </a>
									 <div class="item-btn">
										<div class="box-inner">
										   <a title="Add to wishlist" href="#" class="link-wishlist">&nbsp;</a>
										   <a title="Add to compare" href="#" class="link-compare">&nbsp;</a>
										   <span class="qview">
										   <a class="vt_quickview_handler" data-original-title="Quick View" data-placement="left" data-toggle="tooltip" href="#"><span>Quick View</span></a>
										   </span>
										</div>
									 </div>
									 <a title="Add to cart" class="btn-cart" href="#">&nbsp;</a>
								  </div>
								  <div class="pro-info">
									 <div class="pro-inner">
										<div class="pro-title product-name"><a href="detail.html">Ipad Air and iOS7</a></div>
										<div class="pro-content">
										   <div class="wrap-price">
											  <div class="price-box">
												 <span class="regular-price">
												 <span class="price">$800.00</span></span>
												 <p class="special-price">
													<span class="price">$1.459.00</span>
												</p>
											  </div>
										   </div>
										   <!-- div class="ratings">
											  <div class="rating-box">
												 <div class="rating" style="width:80%"></div>
											  </div>
											  <span class="amount"><a href="#">1(s)</a></span>
										   </div> -->
										</div>
									 </div>
								  </div>
							   </div>
						   <!--end item wrap -->
							</div>
							<div class="item">
						   <div class="item-wrap">
							  <div class="item-image">
									 <a class="product-image no-touch" href="#" title="Ipad Air and iOS7">
									 <img class="first_image" src="<c:url value='/assets/images/product/larg/demo4.jpg' />" alt="Product demo" /> 
									 </a>
									 <div class="item-btn">
										<div class="box-inner">
										   <a title="Add to wishlist" href="#" class="link-wishlist">&nbsp;</a>
										   <a title="Add to compare" href="#" class="link-compare">&nbsp;</a>
										   <span class="qview">
										    <a class="vt_quickview_handler" data-original-title="Quick View" data-placement="left" data-toggle="tooltip" href="#"><span>Quick View</span></a>
										   </span>
										</div>
									 </div>
									 <a title="Add to cart" class="btn-cart" href="#">&nbsp;</a>
								  </div>
								  <div class="pro-info">
									 <div class="pro-inner">
										<div class="pro-title product-name"><a href="detail.html">Ipad Air and iOS7</a></div>
										<div class="pro-content">
										   <div class="wrap-price">
											  <div class="price-box">
												 <span class="regular-price">
												 <span class="price">$800.00</span></span>
												 <p class="special-price">
													<span class="price">$1.459.00</span>
												</p>
											  </div>
										   </div>
										   <!-- <div class="ratings">
											  <div class="rating-box">
												 <div class="rating" style="width:80%"></div>
											  </div>
											  <span class="amount"><a href="#">1(s)</a></span>
										   </div> -->
										</div>
									 </div>
								  </div>
							   </div>
						   <!--end item wrap -->
							</div>
							<div class="item">
						   <div class="item-wrap">
							  <div class="item-image">
									 <a class="product-image no-touch" href="#" title="Ipad Air and iOS7">
									 <img class="first_image" src="<c:url value='/assets/images/product/larg/demo5.jpg' />" alt="Product demo" /> 
									 </a>
									 <div class="item-btn">
										<div class="box-inner">
										   <a title="Add to wishlist" href="#" class="link-wishlist">&nbsp;</a>
										   <a title="Add to compare" href="#" class="link-compare">&nbsp;</a>
										   <span class="qview">
										    <a class="vt_quickview_handler" data-original-title="Quick View" data-placement="left" data-toggle="tooltip" href="#"><span>Quick View</span></a>
										   </span>
										</div>
									 </div>
									 <a title="Add to cart" class="btn-cart" href="#">&nbsp;</a>
								  </div>
								  <div class="pro-info">
									 <div class="pro-inner">
										<div class="pro-title product-name"><a href="detail.html">Ipad Air and iOS7</a></div>
										<div class="pro-content">
										   <div class="wrap-price">
											  <div class="price-box">
												 <span class="regular-price">
												 <span class="price">$800.00</span></span>
												 <p class="special-price">
													<span class="price">$1.459.00</span>
												</p>
											  </div>
										   </div>
										   <!-- <div class="ratings">
											  <div class="rating-box">
												 <div class="rating" style="width:80%"></div>
											  </div>
											  <span class="amount"><a href="#">1(s)</a></span>
										   </div> -->
										</div>
									 </div>
								  </div>
							   </div>
						   <!--end item wrap -->
							</div>
						</div>
					 </div>
					 <div class="navslider">
						<a class="prev" href="#">Prev</a>
						<a class="next" href="#">Next</a>
					</div>

				  </div>
			
				</div>
			</div>
		</div>
	</div>
	<div class="position-04">
		<div class="container">
		  <div class="row">
			<div class="title-sp">
			BEST SELLING
			<div class="std">
			Getting a new line? Check out Theone affordable plans
			</div>
			<ul class="view-more">
			<li><a href="#">View more Laptops</a></li>
			<li><a href="#">View more Desktops</a></li>
			</ul>
			</div>
			<div class="block vt-slider vt-slider4">
			   <div class="slider-inner">
				  <div class="container-slider">
					 <div class="products-grid">
						<div class="item">
						   <div class="item-wrap">
							      <div class="item-image">
									 <a class="product-image no-touch" href="#" title="Ipad Air and iOS7">
									 <img class="first_image" src="<c:url value='/assets/images/product/larg/demo1.jpg' />" alt="Product demo" /> 
									 </a>
								  </div>
								  <div class="product-shop">
									<div class="pro-info">
										 <div class="pro-inner">
											<div class="pro-title product-name"><a href="detail.html">Ipad Air and iOS7</a></div>
											<div class="pro-content">
											   <div class="wrap-price">
												  <div class="price-box">
													 <span class="regular-price">
													 <span class="price">$800.00</span></span>
													 <p class="special-price">
														<span class="price">$1.459.00</span>
													</p>
												  </div>
											   </div>
											   <div class="ratings">
												  <div class="rating-box">
													 <div class="rating" style="width:80%"></div>
												  </div>
												  <span class="amount"><a href="#">1(s)</a></span>
											   </div>
											</div>
										 </div>
									  </div>
									  <div class="item-btn">
									<div class="box-inner">
									   <a title="Add to wishlist" href="#" class="link-wishlist">&nbsp;</a>
									   <a title="Add to compare" href="#" class="link-compare">&nbsp;</a>
									   <span class="qview">
										<a class="vt_quickview_handler" data-original-title="Quick View" data-placement="left" data-toggle="tooltip" href="#"><span>Quick View</span></a>
									   </span>
									   <a title="Add to cart" class="btn-cart" href="#">&nbsp;</a>
									</div>
									</div>
								</div>
							   </div>
						   <!--end item wrap -->
						<div class="item-wrap">
						 <div class="item-image">
									 <a class="product-image no-touch" href="#" title="Ipad Air and iOS7">
									 <img class="first_image" src="<c:url value='/assets/images/product/larg/demo2.jpg' />" alt="Product demo" /> 
									 </a>
								  </div>
								    <div class="product-shop">
									<div class="pro-info">
										 <div class="pro-inner">
											<div class="pro-title product-name"><a href="detail.html">Ipad Air and iOS7</a></div>
											<div class="pro-content">
											   <div class="wrap-price">
												  <div class="price-box">
													 <span class="regular-price">
													 <span class="price">$800.00</span></span>
													 <p class="special-price">
													<span class="price">$1.459.00</span>
												</p>
												  </div>
											   </div>
											   <div class="ratings">
												  <div class="rating-box">
													 <div class="rating" style="width:80%"></div>
												  </div>
												  <span class="amount"><a href="#">1(s)</a></span>
											   </div>
											</div>
										 </div>
									  </div>
									 <div class="item-btn">
									<div class="box-inner">
									   <a title="Add to wishlist" href="#" class="link-wishlist">&nbsp;</a>
									   <a title="Add to compare" href="#" class="link-compare">&nbsp;</a>
									   <span class="qview">
										<a class="vt_quickview_handler" data-original-title="Quick View" data-placement="left" data-toggle="tooltip" href="#"><span>Quick View</span></a>
									   </span>
									   <a title="Add to cart" class="btn-cart" href="#">&nbsp;</a>
									</div>
									</div>
								</div>
						   </div>
					   <!--end item wrap -->
					   <div class="item-wrap">
						  <div class="item-image">
								 <a class="product-image no-touch" href="#" title="Ipad Air and iOS7">
								 <img class="first_image" src="<c:url value='/assets/images/product/larg/demo3.jpg' />" alt="Product demo" /> 
								 </a>
							  </div>
							    <div class="product-shop">
									<div class="pro-info">
										 <div class="pro-inner">
											<div class="pro-title product-name"><a href="detail.html">Ipad Air and iOS7</a></div>
											<div class="pro-content">
											   <div class="wrap-price">
												  <div class="price-box">
													 <span class="regular-price">
													 <span class="price">$800.00</span></span>
													 <p class="special-price">
														<span class="price">$1.459.00</span>
													</p>
												  </div>
											   </div>
											   <div class="ratings">
												  <div class="rating-box">
													 <div class="rating" style="width:80%"></div>
												  </div>
												  <span class="amount"><a href="#">1(s)</a></span>
											   </div>
											</div>
										 </div>
									  </div>
									  <div class="item-btn">
									<div class="box-inner">
									   <a title="Add to wishlist" href="#" class="link-wishlist">&nbsp;</a>
									   <a title="Add to compare" href="#" class="link-compare">&nbsp;</a>
									   <span class="qview">
										<a class="vt_quickview_handler" data-original-title="Quick View" data-placement="left" data-toggle="tooltip" href="#"><span>Quick View</span></a>
									   </span>
									   <a title="Add to cart" class="btn-cart" href="#">&nbsp;</a>
									</div>
									</div>
								</div>
						   </div>
					   <!--end item wrap -->
					   <div class="item-wrap">
						  <div class="item-image">
									 <a class="product-image no-touch" href="#" title="Ipad Air and iOS7">
									 <img class="first_image" src="<c:url value='/assets/images/product/larg/demo1.jpg' />" alt="Product demo" /> 
									 </a>
								  </div>
								    <div class="product-shop">
									<div class="pro-info">
										 <div class="pro-inner">
											<div class="pro-title product-name"><a href="detail.html">Ipad Air and iOS7</a></div>
											<div class="pro-content">
											   <div class="wrap-price">
												  <div class="price-box">
													 <span class="regular-price">
													 <span class="price">$800.00</span></span>
													 <p class="special-price">
														<span class="price">$1.459.00</span>
													</p>
												  </div>
											   </div>
											   <div class="ratings">
												  <div class="rating-box">
													 <div class="rating" style="width:80%"></div>
												  </div>
												  <span class="amount"><a href="#">1(s)</a></span>
											   </div>
											</div>
										 </div>
									  </div>
									  <div class="item-btn">
										<div class="box-inner">
										   <a title="Add to wishlist" href="#" class="link-wishlist">&nbsp;</a>
										   <a title="Add to compare" href="#" class="link-compare">&nbsp;</a>
										   <span class="qview">
											<a class="vt_quickview_handler" data-original-title="Quick View" data-placement="left" data-toggle="tooltip" href="#"><span>Quick View</span></a>
										   </span>
										   <a title="Add to cart" class="btn-cart" href="#">&nbsp;</a>
										</div>
										</div>
								</div>
						   </div>
					   <!--end item wrap -->
						</div>
						<div class="item">
						   <div class="item-wrap">
							  <div class="item-image">
									 <a class="product-image no-touch" href="#" title="Ipad Air and iOS7">
									 <img class="first_image" src="<c:url value='/assets/images/product/larg/demo1.jpg' />" alt="Product demo" /> 
									 </a>
								  </div>
							  <div class="product-shop">
									<div class="pro-info">
										 <div class="pro-inner">
											<div class="pro-title product-name"><a href="detail.html">Ipad Air and iOS7</a></div>
											<div class="pro-content">
											   <div class="wrap-price">
												  <div class="price-box">
													 <span class="regular-price">
													 <span class="price">$800.00</span></span>
													 <p class="special-price">
														<span class="price">$1.459.00</span>
													</p>
												  </div>
											   </div>
											   <div class="ratings">
												  <div class="rating-box">
													 <div class="rating" style="width:80%"></div>
												  </div>
												  <span class="amount"><a href="#">1(s)</a></span>
											   </div>
											</div>
										 </div>
									  </div>
									  <div class="item-btn">
										<div class="box-inner">
										   <a title="Add to wishlist" href="#" class="link-wishlist">&nbsp;</a>
										   <a title="Add to compare" href="#" class="link-compare">&nbsp;</a>
										   <span class="qview">
											<a class="vt_quickview_handler" data-original-title="Quick View" data-placement="left" data-toggle="tooltip" href="#"><span>Quick View</span></a>
										   </span>
										   <a title="Add to cart" class="btn-cart" href="#">&nbsp;</a>
										</div>
										</div>
								</div>
						   </div>
							   </div>
						   <!--end item wrap -->
							</div>
						</div>
					 </div>
					 <div class="navslider">
						<a class="prev" href="#">Prev</a>
						<a class="next" href="#">Next</a>
					</div>

				  </div>
			</div>
			
		  </div>
	   </div>
	
	
	
</div>

</body>