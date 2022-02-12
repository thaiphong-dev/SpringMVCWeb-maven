<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<div class="row">
		<div class="span12">
			<!-- <ul class="breadcrumb">
		<li><a href="index.html">Trang chủ</a> <span class="divider"></span></li>
		<li class="active">Giỏ hàng</li>
    </ul> -->
			<div class="well well-small">
				<h1>Tài khoản</h1>
				<hr class="soften" />

				<table class="table table-bordered table-condensed">
					<thead>
						<tr>
							<th>STT</th>
							<th>Tài khoản</th>
							<th>Mật khẩu</th>
							<th>Họ và tên</th>
							<th>Địa chỉ</th>
							<th>Trạng thái</th>
							<th>Quyền</th>
							<th>Chỉnh sửa</th>
							<th>xóa</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach var="item" items="${ AllUser }" varStatus="user">
							<form:form class="form" action="cap-nhat-tai-khoan/${item.id}"
								method="GET" modelAttribute="user">
								<tr>
									<td>${user.index}</td>
									<td><form:input type="text" name="username" class="span1"
											path="userName" size="16" value="${ item.userName }" /></td>
									<td>${ item.password }</td>
									<td><form:input type="text" path="fullName"
											id="quanty-cart-${ item.fullName }" size="16"
											value="${ item.fullName }" /></td>
									<td><form:input type="text" class="span1" path="address"
											id="quanty-cart-${ item.address }" size="16"
											value="${ item.address }" /></td>
									<td><form:input type="number" min="0" max="1"
											path="active" class="span1" style="width:34px"
											placeholder="1" id="quanty-cart-${ item.active }" size="16"
											value="${ item.active }" /></td>
									<td><form:input type="number" min="0" max="1" path="role"
											class="span1" style="max-width:34px" placeholder="1"
											id="quanty-cart-${ item.role }" size="16"
											value="${ item.role }" /></td>
									<td>

										<button class="btn btn-mini btn-danger" type="submit">
											<span class="icon-edit"></span>
										</button>

									</td>
									<td><a
										href="<c:url value="/xoa-tai-khoan/${ item.userName }"/>"
										class="btn btn-mini btn-danger" type="button"> <span
											class="icon-remove"></span>
									</a></td>

								</tr>
							</form:form>
						</c:forEach>

					</tbody>
				</table>
				<br />




			</div>
		</div>
	</div>

	<div class="row">
		<div class="span12">
			<!-- <ul class="breadcrumb">
		<li><a href="index.html">Trang chủ</a> <span class="divider"></span></li>
		<li class="active">Giỏ hàng</li>
    </ul> -->
			<div class="well well-small">
				<h1>Tạo tài khoản</h1>
				<hr class="soften" />

				<table class="table table-bordered table-condensed">
					<thead>
						<tr>

							<th>Tài khoản</th>
							<th>Mật khẩu</th>
							<th>Họ và tên</th>
							<th>Địa chỉ</th>
							<th>Trạng thái</th>
							<th>Quyền</th>
							<th>Tạo</th>

						</tr>
					</thead>
					<tbody>


						<form:form class="form" action="tao-tai-khoan" method="POST"
							modelAttribute="user">
							<tr>

								<td><form:input type="text" name="username" class="span1"
										path="userName" size="16" value="${ user.userName }" /></td>
								<td><form:input type="password" path="password"
										id="quanty-cart-${ user.password }" size="16"
										value="${ user.password }" /></td>
								<td><form:input type="text" path="fullName"
										id="quanty-cart-${ user.fullName }" size="16"
										value="${ user.fullName }" /></td>
								<td><form:input type="text" class="span1" path="address"
										id="quanty-cart-${ user.address }" size="16"
										value="${ ituserem.address }" /></td>
								<td><form:input type="number" min="0" max="1" path="active"
										class="span1" style="width:34px" placeholder="1"
										id="quanty-cart-${ item.active }" size="16"
										value="${ item.active }" /></td>
								<td><form:input type="number" min="0" max="1" path="role"
										class="span1" style="max-width:34px" placeholder="1"
										id="quanty-cart-${ item.role }" size="16"
										value="${ item.role }" /></td>
								<td>

									<button class="btn btn-mini btn-danger" type="submit">
										<span class="icon-edit"></span>
									</button>

								</td>


							</tr>
						</form:form>

					</tbody>
				</table>
				<br />




			</div>
		</div>
	</div>



	<div class="row">
		<div class="span12">
			<!-- <ul class="breadcrumb">
		<li><a href="index.html">Trang chủ</a> <span class="divider"></span></li>
		<li class="active">Giỏ hàng</li>
    </ul> -->
			<div class="well well-small">
				<h1>Sản phẩm</h1>
				<hr class="soften" />

				<table class="table table-bordered table-condensed">
					<thead>
						<tr>
							<th>STT</th>
							<th>Mã</th>
							<th>Tên</th>
							<th>Hình ảnh</th>
							<th>Giá</th>
							<th>Mô tả</th>
							<th>Số lượng</th>
							<th>Mã loại</th>
							<th>Chỉnh sửa</th>
							<th>xóa</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach var="item" items="${ allProduct }" varStatus="product">
							<form:form class="form" action="cap-nhat-san-pham/${item.id}"
								method="GET" modelAttribute="product">
								<tr>
									<td>${product.index}</td>
									<td>${item.id}</td>
									<!-- <td><form:input type="text" class="span1" id="quanty-cart-${ item.id }" size="16" path="id" value="${ item.id }"/></td> -->
									<td><form:input type="text" class="span1"
											id="quanty-cart-${ item.name }" size="16" path="name"
											value="${ item.name }" /></td>
									<td><form:input type="text" class="span1"
											id="quanty-cart-${ item.imageLink }" size="16"
											path="imageLink" value="${ item.imageLink }" /></td>

									<td><form:input type="number" min="0" max="10000000"
											class="span1" style="max-width:34px" placeholder="1"
											id="quanty-cart-${ item.price }" size="16" path="price"
											value="${ item.price }" /></td>
									<td><form:input type="text" class="span1"
											id="quanty-cart-${ item.description }" size="16"
											path="description" value="${ item.description }" /></td>
									<td><form:input type="number" min="0" max="1000"
											class="span1" style="max-width:34px" placeholder="1"
											id="quanty-cart-${ item.amount }" size="16" path="amount"
											value="${ item.amount }" /></td>
									<td>${ item.catalogId }</td>
									<td>
										<button class="btn btn-mini btn-danger" type="submit">
											<span class="icon-edit"></span>
										</button>
									</td>
									<td><a href="<c:url value="/xoa-san-pham/${ item.id }"/>"
										class="btn btn-mini btn-danger" type="button"> <span
											class="icon-remove"></span>
									</a></td>
								</tr>
							</form:form>
						</c:forEach>

					</tbody>
				</table>
				<br />




			</div>
		</div>
	</div>

	<div class="row">
		<div class="span12">
			<!-- <ul class="breadcrumb">
		<li><a href="index.html">Trang chủ</a> <span class="divider"></span></li>
		<li class="active">Giỏ hàng</li>
    </ul> -->
			<div class="well well-small">
				<h1>Thêm Sản phẩm</h1>
				<hr class="soften" />

				<table class="table table-bordered table-condensed">
					<thead>
						<tr>
							<th>Mã</th>
							<th>Tên</th>
							<th>Hình ảnh</th>
							<th>Giá</th>
							<th>Mô tả</th>
							<th>Số lượng</th>
							<th>Mã loại</th>
							<th>Thêm</th>
						</tr>
					</thead>
					<tbody>


						<form:form class="form" action="tao-san-pham" method="POST"
							modelAttribute="product">
							<tr>


								<td><form:input type="text" class="span1"
										id="quanty-cart-${ item.id }" size="16" path="id"
										value="${ item.id }" /></td>
								<td><form:input type="text" class="span1"
										id="quanty-cart-${ product.name }" size="16" path="name"
										value="${ product.name }" /></td>
								<td><form:input type="text" class="span1"
										id="quanty-cart-${ product.imageLink }" size="16"
										path="imageLink" value="${ product.imageLink }" /></td>

								<td><form:input type="number" min="0" max="10000000"
										class="span1" style="max-width:34px" placeholder="1"
										id="quanty-cart-${ product.price }" size="16" path="price"
										value="${ item.price }" /></td>
								<td><form:input type="text" class="span1"
										id="quanty-cart-${ product.description }" size="16"
										path="description" value="${ product.description }" /></td>
								<td><form:input type="number" min="0" max="1000"
										class="span1" style="max-width:34px" placeholder="1"
										id="quanty-cart-${ product.amount }" size="16" path="amount"
										value="${ item.amount }" /></td>
								<td><form:input type="text" class="span1"
										id="quanty-cart-${ product.catalogId }" size="16"
										path="catalogId" value="${ product.catalogId }" /></td>

								<td>
									<button class="btn btn-mini btn-danger" type="submit">
										<span class="icon-edit"></span>
									</button>
								</td>

							</tr>
						</form:form>

					</tbody>
				</table>
				<br />




			</div>
		</div>
	</div>
	<div class="row">
		<div class="span12">
			<!-- <ul class="breadcrumb">
		<li><a href="index.html">Trang chủ</a> <span class="divider"></span></li>
		<li class="active">Giỏ hàng</li>
    </ul> -->
			<div class="well well-small">
				<h1>Hóa đơn</h1>
				<hr class="soften" />

				<table class="table table-bordered table-condensed">
					<thead>
						<tr>
							<th>STT</th>
							<th>Mã</th>
							<th>Tên khách hàng</th>
							<th>SDT</th>
							<th>Email</th>
							<th>Địa chỉ</th>
							<th>Ngày đặt</th>
							<th>tên tài khoản</th>
							<th>Chỉnh sửa</th>
							<th>xóa</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach var="item" items="${ allOrder }" varStatus="order">
							<form:form class="form" action="cap-nhat-san-pham/${item.id}"
								method="GET" modelAttribute="order">
								<tr>
									<td>${order.index}</td>
									<td><form:input type="text" class="span1"
											id="quanty-cart-${ item.id }" size="16" path="id"
											value="${ item.id }" /></td>
									<td><form:input type="text" class="span1"
											id="quanty-cart-${ item.customerName }" size="16" path="customerName"
											value="${ item.customerName }" /></td>
									<td><form:input type="text" class="span1"
											id="quanty-cart-${ item.customerPhone }" size="16"
											path="customerPhone" value="${ item.customerPhone }" /></td>
									<td><form:input type="text" class="span1"
											id="quanty-cart-${ item.customerEmail }" size="16"
											path="customerEmail" value="${ item.customerEmail }" /></td>
									<td><form:input type="text" class="span1"
											id="quanty-cart-${ item.customerAddress }" size="16"
											path="customerAddress" value="${ item.customerAddress }" /></td>
									<td>${ item.orderDate }</td>

									<td>${ item.userName }</td>
									<td>
										<button class="btn btn-mini btn-danger" type="submit">
											<span class="icon-edit"></span>
										</button>
									</td>
									<td><a href="<c:url value="/xoa-san-pham/${ item.id }"/>"
										class="btn btn-mini btn-danger" type="button"> <span
											class="icon-remove"></span>
									</a></td>
								</tr>
							</form:form>
						</c:forEach>

					</tbody>
				</table>
				<br />




			</div>
		</div>
	</div>

	<content tag="script"> <script>
		$(".edit-cart").on("click", function() {
			var id = $(this).data("id");
			var quanty = $("#quanty-cart-" + id).val();
			window.location = "EditCart/" + id + "/" + quanty;
		});
	</script> </content>

</body>
</html>