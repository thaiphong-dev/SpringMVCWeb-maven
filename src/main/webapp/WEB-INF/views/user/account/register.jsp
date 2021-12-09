<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file ="/WEB-INF/views/layouts/user/taglib.jsp" %>


<body>
<div style="display: flex; flex-direction: row">
<div id="box-content" style="max-width: 50%; padding: 20px">
<div class="mx-auto">
		<div id="register">
			<div class="container">
				<div id="register-row"
					class="row justify-content-center align-items-center">
					<div id="register-column" class="col-md-5">
						<div id="login-box" class="col-md-12">
							
							<form:form class="form" action="dang-ky" method="POST" modelAttribute="user">
								<h3 class="text-center text-info">Đăng ký</h3>
								<div class="form-group">
									<label class="text-info" for="username">Email</label><br>
									<form:input class="form-control" type="email" id="username" name="username" placeholder="Nhập email" path="userName" /> 
									<h5>${status}</h5>
								</div>
								<div class="form-group">
									<label class="control-label" for="password">Mật khẩu</label><br>
									 <form:input class="form-control" type="password" id="password" name="password" placeholder="Nhập mật khẩu" path="password" /> 
								</div>
								<div class="form-group">
									<label class="control-label" for="fullname">Họ và Tên</label><br>
									 <form:input class="form-control" type="text" id="fullname" name="fullname" placeholder="Nhập họ và tên" path="fullName" /> 
								</div>
								<div class="form-group">
									<label class="control-label" for="address">Địa chỉ</label><br>
									 <form:input class="form-control" type="text" id="address" name="address" placeholder="Nhập địa chỉ" path="address" /> 
								</div>
								<div class="form-group">
									<input type="submit"
										name="Đăng ký" class="btn btn-info btn-md" value="Đăng ký">
								</div>
								<!-- <div id="register-link" class="text-right">Đã có tài khoản? 
									<a href="dang-nhap">Đăng nhập</a>
								</div> -->
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div></div>
		</div>
		<div id="box-content"  style="max-width: 50%; padding: 20px">
		<div class="mx-auto">
			<div id="login">
				<div class="container" style="max-width: 100%;">
					<div id="login-row"
						class="row justify-content-center align-items-center">
						<div id="login-column" class="col-md-12">
							<div id="login-box" class="col-md-12">
								<form:form class="form" action="dang-nhap" method="POST" modelAttribute="user">
									<h3 class="text-center text-info">Đăng nhập</h3>
									<div class="form-group">
										<label class="text-info" for="username">Email</label><br>
										<form:input class="form-control" type="email" id="username"
											name="username" placeholder="Nhập email" path="userName" />
									</div>
									<div class="form-group">
										<label class="control-label" for="password">Mật khẩu</label><br>
										<form:input class="form-control" type="password" id="password"
											name="password" placeholder="Nhập mật khẩu" path="password" />
									</div>
									<div class="form-group">
										<input type="submit" name="Đăng nhập" class="btn btn-info btn-md"
											value="Đăng nhập">
									</div>
									<h5>${statusLogin}</h5>
									<!--  <div id="register-link" class="text-right">
										Chưa có tài khoản? <a href="dang-ky">Đăng ký</a>
									</div>-->
								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

</body>

