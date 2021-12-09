<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>

<body>
	<div id="box-content">
		<div class="mx-auto">
			<div id="login">
				<div class="container">
					<div id="login-row"
						class="row justify-content-center align-items-center">
						<div id="login-column" class="col-md-6">
							<div id="login-box" class="col-md-12">
								<form:form class="form" action="dang-nhap" method="POST" modelAttribute="user1">
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
										<input type="submit" name="submit" class="btn btn-info btn-md"
											value="submit">
									</div>
									<div id="register-link" class="text-right">
										Chưa có tài khoản? <a href="dang-ky">Đăng ký</a>
									</div>
								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>