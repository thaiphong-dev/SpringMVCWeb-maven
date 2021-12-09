<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Giỏ hàng</title>
</head>
<body>
<div class="row">
	<div class="span12">
    <ul class="breadcrumb">
		<li><a href="index.html">Trang chủ</a> <span class="divider"></span></li>
		<li class="active">Giỏ hàng</li>
    </ul>
	<div class="well well-small">
		<h1>Giỏ hàng <small class="pull-right"> ${ TotalQuantyCart } Sản phẩm trong giỏ hàng </small></h1>
	<hr class="soften"/>	

	<table class="table table-bordered table-condensed">
              <thead>
                <tr>
                  <th>Hình ảnh</th>
                  <th>Mô tả</th>
                  <th>Giá bán</th>
                  <th>Số lượng </th>
                  <th>Chỉnh sửa </th>
                  <th>Xóa </th>
                  <th>Tổng tiền</th>
				</tr>
              </thead>
              <tbody>
              
				 <c:forEach var="item" items="${ Cart }">
					<tr>
	                  <td><img width="100" src="<c:url value="/assets/images/${ item.value.product.imageLink }"/>" alt=""></td>
	                  <td>${ item.value.product.description }</td>
	                  <td><fmt:formatNumber type="number" groupingUsed="true" value="${ item.value.product.price }"/> ₫</td>
	                  <td>
						<input type="number" min="0" max="1000" class="span1" style="max-width:34px" placeholder="1" id="quanty-cart-${ item.key }" size="16" type="text" value="${ item.value.quanty }">
					  </td>
	                  <td>
	                  	<button data-id="${ item.key }" class="btn btn-mini btn-danger edit-cart" type="button"> 
	                  		<span class="icon-edit"></span>
	                  	</button>
	                  </td>
	                  <td>
	                  	<a href="<c:url value="/DeleteCart/${ item.key }"/>" class="btn btn-mini btn-danger" type="button">
	                  		<span class="icon-remove"></span>
	                  	</a>
	                  </td>
	                  <td><fmt:formatNumber type="number" groupingUsed="true" value="${ item.value.totalPrice }"/> ₫</td>
	                </tr>
				</c:forEach>
                
				</tbody>
            </table><br/> 
	<h3>Tổng Cộng: <fmt:formatNumber type="number" groupingUsed="true" value="${ TotalPriceCart }"/> ₫</h3>
	
	<form:form action="gio-hang" methd="POST" modelAttribute="order" class="form-horizontal">
		<h3>Thanh toán đơn hàng</h3>
		<div class="control-group">
			<label class="control-label">Họ tên</label>
			<div class="controls">
				<form:input path="customerName" type="text"/>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label">Số điện thoại</label>
			<div class="controls">
				<form:input path="customerPhone" type="phone-number"/>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label">Email</label>
			<div class="controls">
				<form:input path="customerEmail" type="email"/>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label">Địa chỉ</label>
			<div class="controls">
				<form:input path="customerAddress" type="text"/>
			</div>
		</div>
		
		<div class="controls">
			<button type="submit" class="btn block">Thanh toán</button>
		</div>
		
		<h3> ${ status } </h3>
	</form:form>

</div>
</div>
</div>

<content tag="script">
<script>
	$(".edit-cart").on("click", function() {
		var id = $(this).data("id");
		var quanty = $("#quanty-cart-"+id).val();
		window.location = "EditCart/" + id + "/" + quanty;
	});
</script>
</content>

</body>
</html>