<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="box-header"> 
	<div class="header-container">
		<div class="header"> 
			<div class="box-header-01">
				<div class="container">
					<div class="row">
					<div class="logo">
					<a href="home-01.html"><img src="<c:url value='/assets/images/logodefault.png' />" alt=""/></a>
					</div>
					<div class="menu">
						<div class="box-main-menu">
							<div class="main-menu">
								<ul>
									<li class="item1 first"><a href="/MavenProject/trang-chu">Trang chủ</a></li>
									<li class="item2"><a href="ban-phim-co">Bàn phím cơ</a>
									
									</li>
																		<li class="item4"><a href="chuot-lot-chuot">Chuột - lót chuột </a></li>
									<li class="item5"><a href="tai-nghe">Tai nghe - loa</a></li>
									<li class="item6"><a href="microphone">Microphone</a></li>
									
									<li class="item7 last"><a href="ghe-gaming">Ghế gaming</a></li>
									<li class="item7 last"><a href="ghe-gaming">${LoginInfo.userName}</a></li>
								</ul>
							</div>
								</div>
							<div>
						</div>
					</div>
					<div class="account-and-cart">
					<div class="my-account">
					<div class="content">
						<ul class="left">
							<li><a class="top-link-myaccount" href="#">Tài khoản của tôi</li>
							<li><a class="top-link-wishlist" href="#">Danh mục yêu thích</a></li>
							<li><a class="top-link-checkout" href="#">Checkout</a></li>
							<li><a class="top-link-login" href="dang-nhap">Đăng nhập</a></li>
						</ul>
						
					</div>
					</div>
					<div class="box-cart">
						<div class="cart-mini">
							<div class="title">
							<span class="item">0</span>
							</div>
							<div class="block-content">
							   <div class="inner">
								  <p class="block-subtitle">Sản phẩm thêm gần đây)</p>
								  <ol id="cart-sidebar" class="mini-products-list">
									 <li class="item">
										<a href="#" title="Fashion Product 09" class="product-image">
										<img src="images/product/small/image-demo-1.jpg" alt="Fashion Product 09" />
										</a>
										<a href="#" title="Xóa" class="btn-remove">Xóa sản phẩm</a>
										<a href="#" title="Chỉnh sửa" class="btn-edit">Edit item</a>
										<div class="product-details">
										   <p class="product-name"><a title="Fashion Product 09" href="#">Fashion Product 09</a></p>
										   <span class="price">$200.00</span>       
											<div class="qty-abc">
										   <a title="Giảm" class="qty-change-left" href="#">down</a>
										   <input class="input-text qty" type="text" value="1" />
										   <a title="Tăng" class="qty-change-right" href="#">up</a>
										   </div>
										</div>
									 </li>
								  </ol>
								  <div class="summary">
									 <p class="subtotal">
										<span class="label">Thành tiền:</span> <span class="price">$200.00</span>                                                                        
									 </p>
								  </div>
								  <div class="actions">
									 <div class="a-inner">
										<a class="btn-mycart" href="gio-hang" title="View my cart">Xem giỏ hàng</a>
										<a href="" title="Thanh toán" class="btn-checkout">Thanh toán</a>
									 </div>
								  </div>
							   </div>
							</div> 
						</div>
					</div>
					</div>
				</div>	
			</div>
			<div class="bgr-menu">
				</div>
			</div>
			
		</div>
	</div>
</div>