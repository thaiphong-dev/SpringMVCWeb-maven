<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
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
		<h1>Tài khoản </h1>
	<hr class="soften"/>	

	<table class="table table-bordered table-condensed">
              <thead>
                <tr>
                  <th>STT</th>
                  <th>Tài khoản</th>
                  <th>Mật khẩu</th>
                  <th>Họ và tên</th>
                  <th>Địa chỉ </th>
                  <th>Trạng thái</th>
                  <th>Quyền </th>
                  <th>Chỉnh sửa </th>
                  <th>xóa </th>
				</tr>
              </thead>
              <tbody>
              
				 <c:forEach var="item" items="${ AllUser }" varStatus="user" >
				 <form:form class="form" action="cap-nhat/${item.id}" method="GET" modelAttribute="user">
					<tr>
	                  <td>${user.index}</td>
	                  <td>
	                  <form:input type="text" name="username" class="span1" path="userName"  size="16"  value="${ item.userName }" />
	                  </td> 
	                  <td >${ item.password }</td>
	                  <td>
						 <form:input type="text"  path="fullName" id="quanty-cart-${ item.fullName }" size="16" value="${ item.fullName }"/>
					  </td>
					  <td>
						 <form:input type="text" class="span1" path="address" id="quanty-cart-${ item.address }" size="16" value="${ item.address }"/>
					  </td>
					  <td>
						 <form:input type="number" min="0" max="1" path="active" class="span1" style="width:34px"  placeholder="1" id="quanty-cart-${ item.active }" size="16"  value="${ item.active }"/>
					  </td>
					  <td>
						 <form:input type="number" min="0" max="1" path="role" class="span1" style="max-width:34px" placeholder="1" id="quanty-cart-${ item.role }" size="16"  value="${ item.role }"/>
					  </td>
	                  <td>
	                  	
	                  	<button  class="btn btn-mini btn-danger" type="submit">
	                  		<span class="icon-edit"></span>
	                  	</button>
	                  	
	                  </td>
	                  <td>
	                  	<a href="<c:url value="/xoa/${ item.userName }"/>"  class="btn btn-mini btn-danger" type="button">
	                  		<span class="icon-remove"></span>
	                  	</a>
	                  </td>
	                 
	                </tr>
	                </form:form>
				</c:forEach>
                
				</tbody>
            </table><br/> 
	
	
	

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
	<hr class="soften"/>	

	<table class="table table-bordered table-condensed">
              <thead>
                <tr>
                  <th>STT</th>
                  <th>Mã</th>
                  <th>Tên</th>
                  <th>Hình ảnh</th>
                  <th>Giá</th>
                  <th>Mô tả</th>
                  <th>Số lượng </th>
                  <th>Mã loại</th>
                  <th>Chỉnh sửa </th>
                  <th>xóa </th>
				</tr>
              </thead>
              <tbody>
              
				 <c:forEach var="item" items="${ allProduct }" varStatus="product">
				  <form:form class="form" action="dang-ky" method="POST" modelAttribute="product">
					<tr>
					<td>${product.index}</td>
	                  
	                  <td><form:input type="text" class="span1" id="quanty-cart-${ item.id }" size="16" path="id" value="${ item.id }"/></td>
	                  <td><form:input type="text" class="span1" id="quanty-cart-${ item.name }" size="16" path="name" value="${ item.name }"/></td>
	                  <td><form:input type="text" class="span1" id="quanty-cart-${ item.imageLink }" size="16" path="imageLink" value="${ item.imageLink }"/></td>
	                  
	                  <td>
						<form:input type="number" min="0" max="1000" class="span1" style="max-width:34px" placeholder="1" id="quanty-cart-${ item.price }" size="16" path="price" value="${ item.price }"/>
					  </td>
					  <td><form:input type="text" class="span1" id="quanty-cart-${ item.description }" size="16" path = "description" value="${ item.description }"/></td>
	                   <td>
						<form:input type="number" min="0" max="1000" class="span1" style="max-width:34px" placeholder="1" id="quanty-cart-${ item.amount }" size="16" path="amount" value="${ item.amount }"/>
					  </td>
					  <td>${ item.catalogId }</td>
	                  <td>
	                  	<button data-id="${ item.id }" class="btn btn-mini btn-danger edit-cart" type="button"> 
	                  		<span class="icon-edit"></span>
	                  	</button>
	                  </td>
	                  <td>
	                  	<a href="<c:url value="/DeleteCart/${ item.id }"/>" class="btn btn-mini btn-danger" type="button">
	                  		<span class="icon-remove"></span>
	                  	</a>
	                  </td>
	                </tr>
	                </form:form>
				</c:forEach>
                
				</tbody>
            </table><br/> 
	
	
	

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