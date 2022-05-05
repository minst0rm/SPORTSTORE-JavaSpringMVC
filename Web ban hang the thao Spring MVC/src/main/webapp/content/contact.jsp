<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%--/.header --%>
<s:include value="layout/header.jsp" />
<%--/.menu --%>
<s:include value="layout/menu.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Liên Hệ</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css"crossorigin="anonymous">

</head>
<body>
<div class="container-address">
	<div class="row padding">
		<hr>
		<div class="col-md-12 col-lg-6">
		<div class="thanhtrai">
		<h2> LIÊN HỆ VỚI CHÚNG TÔI </h2>
		<p>Bạn hãy điền nội dung tin nhắn vào đây và gửi cho chúng tôi.</p>
		<form action="" method="POST" role="form">
			<div class="form-group">
				<label for="">Họ và tên</label>
				<input type="text" class="form-control" id="name" name="name" placeholder="Nhập họ và tên...">
				<label for="">Email</label>
				<input type="text" class="form-control" id="email" name="email" placeholder="Nhập email...">
				<label for="">Số điện thoại</label>
				<input type="text" class="form-control" id="phone" name="phone" placeholder="Nhập số điện thoại...">
				<label for="">Địa chỉ</label>
				<input type="text" class="form-control" id="address" name="address" placeholder="Nhập địa chỉ...">
				<label for="">Nội dung</label>
				<textarea name="contact" placeholder="Nhập nội dung..."cols="72" rows="4"></textarea>
			</div>
		<button type="submit" class="btn btn-info">Gửi tin nhắn cho chúng tôi</button>
		</form>
	</div>
</div>
		<div class="col-lg-6">
			<div class="thanhphai">
			<i class="fas fa-map-marker-alt" style="color:#ffcc00;"></i>
			<span class="title-address"><strong>Địa chỉ: </strong></span>
			<span>97 Man Thiện, P.Hiệp Phú, Tp.Thủ Đức, Tp.Hồ Chí Minh</span><br>
			<i class="fas fa-mobile-alt"style="color:#ffcc00;"></i>
			<span class="title-address"><strong>Điện thoại: </strong></span>
			<span>033 997 8299</span><br>
			<i class="fas fa-envelope-square" style="color:#ffcc00;"></i>
			<span class="title-address"><strong>Email: </strong></span>
			<span>n18dcat050@student.ptithcm.edu.vn</span><br>
		</div>
	</div> 
	<p>SHOP MAN THIỆN chuyên cung cấp những mặt hàng thể thao chất lượng và uy tín trên toàn quốc!</p>
	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1631.7552336904473!2d106.78617880756723!3d10.846998645439669!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752772b245dff1%3A0xb838977f3d419d!2zSOG7jWMgdmnhu4duIEPDtG5nIG5naOG7hyBCxrB1IGNow61uaCBWaeG7hW4gdGjDtG5nIEPGoSBT4bufIFThuqFpIFRQLiBI4buTIENow60gTWluaMK3!5e0!3m2!1svi!2sus!4v1624075510204!5m2!1svi!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</div>
</div>
<%--/.footer --%>
<s:include value="layout/footer.jsp" />
</body>
</html>