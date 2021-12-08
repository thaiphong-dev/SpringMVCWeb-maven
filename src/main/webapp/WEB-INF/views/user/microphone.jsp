<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="content">
	<div class="breadcrumbs">
		<div class="container">
			<div class="row">
				<ul>
					<li class="home"><a href="home-01.html"
						title="Go to Home Page">Trang chủ</a> <span>|</span></li>
					<li class="category3"><strong>Microphone</strong></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">

			<div id="main"
				class="col-lg-12 col-md-12 col-sm-8 col-xs-12 col-main">


				<div id="catalog-listing">

					<ul class="products-grid row">
						<c:forEach var="item" items="${ microphone }">

							<li class="col-lg-3 col-md-3 col-sm-6 col-xs-12 item">
								<div class="item-wrap">
									<div class="item-image">
										<a class="product-image no-touch" href="#"
											title="${ item.name }"> <img class="first_image"
											src="<c:url value='/assets/images/microphone/${item.imageLink }' />"
											alt="${ item.name }">
										</a>
										<div class="item-btn">
											<div class="box-inner">
												<a title="Add to wishlist" href="#" class="link-wishlist">&nbsp;</a>
												<a title="Add to compare" href="#" class="link-compare">&nbsp;</a>
												<span class="qview"><a href="detail.html"></a> <a
													class="vt_quickview_handler"
													data-original-title="Quick View" data-placement="left"
													data-toggle="tooltip" href="#"><span>Quick View</span></a>
												</span>
											</div>
										</div>
										<a title="Add to cart" class="btn-cart" href="AddCart/${ item.id }">&nbsp;</a>
									</div>
									<div class="pro-info">
										<div class="pro-inner">
											<div class="pro-title product-name">
												<a href="detail.html">${ item.name }</a>
											</div>
											<div class="pro-content">
												<div class="wrap-price">
													<div class="price-box">
														<span class="regular-price"> <span class="price">${ item.price }</span></span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div> <!--end item wrap -->
							</li>

						</c:forEach>
						
					</ul>
					<div class="toolbar-bottom">
						<div class="toolbar">
							<div class="pager">
								<div class="pages">
									<strong>Pages</strong>
									<ol>
										<li><a class="previous" href="grid.html?p=2"
											title="previous"> &nbsp; </a></li>
										<li class="current">1</li>
										<li><a href="grid.html?p=2">2</a></li>
										<li><a class="next" href="grid.html?p=2" title="Next">
												&nbsp; </a></li>
									</ol>
								</div>
								<!--<label class="item-pp"></label>-->
							</div>

						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>