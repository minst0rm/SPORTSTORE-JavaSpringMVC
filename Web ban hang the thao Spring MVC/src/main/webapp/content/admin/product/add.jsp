<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%--/.header --%>
<s:include value="../layout/header.jsp" />
<!--/.main content -->
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
	<div class="row">
		<ol class="breadcrumb">
			<li><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
			<li class="active">Sản phẩm</li>
		</ol>
	</div>
	<!--/.row-->

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">Thêm mới sản phẩm</div>
				<div class="panel-body">
					<s:form action="add" enctype="multipart/form-data" role="form">

						<div class="form-group">
							<label for="input-id">Chọn danh mục</label>
							<s:fielderror style="color: red;" fieldName="product.category.id" />
							<s:select headerKey="0" headerValue="--Chọn--" list="categories"
								listKey="id" listValue="name" name="product.category.id"
								class="form-control" />
						</div>

						<div class="form-group">
							<label for="input-id">Tên sản phẩm</label>
							<s:fielderror style="color: red;" fieldName="product.name" />
							<s:textfield name="product.name" class="form-control"
								 />
						</div>

						<%-- <div class="form-group">
							<label for="input-id">Tóm tắt chức năng</label>
							<s:textfield name="product.intro" class="form-control"
								 />
						</div> --%>

						<%-- <div class="form-group">
							<label for="input-id">Phụ kiện đi kèm gồm có : </label>
							<s:textfield name="product.packet" class="form-control" />
						</div> --%>

						<%-- <div class="form-group">
							<label for="input-id">Khuyễn mãi (tối đa 3 mục)</label>
							<div class="row">
								<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
									khuyễn mại 1 :
									<s:textfield name="product.promo1" class="form-control"
										value="khuyễn mãi 1" />
								</div>
								<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
									khuyễn mại 2 :
									<s:textfield name="product.promo2" class="form-control"
										value="khuyễn mãi 2" />
								</div>
								<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
									khuyễn mại 3 :
									<s:textfield name="product.promo3" class="form-control"
										value="khuyễn mãi 3" />
								</div>
							</div>
						</div> --%>

						<div class="form-group">
							<div class="row">
								<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
									Hình ảnh :
									<s:file name="upload" accept="image/jpeg" class="form-control" />
								</div>
								<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">
									Giá bán :
									<s:textfield name="product.price" class="form-control"/>
								</div>
								<%-- <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
									Tag :
									<s:textfield name="product.tag" class="form-control"
										 />
								</div> --%>
							</div>
						</div>

						<div class="form-group">
							<label for="input-id"> Chi tiết sản phẩm</label>
							<div class="row">
								<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
									Kích thước :
									<s:textfield name="proDetail.size" class="form-control"
										/>
								</div>
								<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
									Màu sắc :
									<s:textfield name="proDetail.color" class="form-control"
										 />
								</div>
								<div class="col-xs-12 col-sm-3 col-md-2 col-lg-2">
									Số Lượng :
									<s:textfield name="proDetail.quantity" class="form-control"
										 />
								</div>

						<div class="form-group">
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
									<label for="input-id">Bài đánh giá chi tiết</label>
									<s:textarea name="product.review" class="form-control" rows="4"
										 />
									<%--<script type="text/javascript">
											var editor = CKEDITOR
													.replace(
															'txtReview',
															{
																language : 'vi',
																filebrowserImageBrowseUrl : 'plugin/ckfinder/ckfinder.html?Type=Images',
																filebrowserFlashBrowseUrl : 'plugin/ckfinder/ckfinder.html?Type=Flash',
																filebrowserImageUploadUrl : 'plugin/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
																filebrowserFlashUploadUrl : 'plugin/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
															});
										</script>--%>
								</div>
							</div>
						</div>

						<button type="submit" class="btn btn-primary">Thêm mới</button>
						<button type="reset" class="btn btn-default">Nhập lại</button>
					</s:form>
				</div>
			</div>
		</div>
		<!-- /.col-->
	</div>
	<!-- /.row -->

</div>
<!--/.main-->
<%--/.footer --%>
<s:include value="../layout/footer.jsp" />