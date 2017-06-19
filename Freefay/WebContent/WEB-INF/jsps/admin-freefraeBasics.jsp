<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>
	<c:choose>
		<c:when test="${(status==1)}">
			<script>
				setTimeout(function() {
					$('#toast-container').fadeOut();
				}, 3000);
			</script>


			<div id="toast-container" class="toast-bottom-full-width"
				aria-live="polite" role="alert">
				<div class="toast toast-success">
					<div class="toast-message">Updated Successfully</div>
				</div>
			</div>

		</c:when>
	</c:choose>


	<div class="l-spaced">
		<div class="l-box l-spaced-bottom">
			<div class="l-box-header">
				<h2 class="l-box-title">
					<span>FreeFrae</span> Settings
				</h2>
				<ul class="l-box-options">
					<li><a href="#"><i class="fa fa-cogs"></i></a></li>
					<li><a href="#" data-ason-type="fullscreen"
						data-ason-target=".l-box" data-ason-content="true"
						class="ason-widget"></a></li>
					<li><a href="#" data-ason-type="refresh"
						data-ason-target=".l-box" data-ason-duration="1000"
						class="ason-widget"><i class="fa fa-rotate-right"></i></a></li>
					<li><a href="#" data-ason-type="toggle"
						data-ason-find=".l-box" data-ason-target=".l-box-body"
						data-ason-content="true" data-ason-duration="200"
						class="ason-widget"></a></li>
					<li><a href="#" data-ason-type="delete"
						data-ason-target=".l-box" data-ason-content="true"
						data-ason-animation="fadeOut" class="ason-widget"></a></li>
				</ul>
			</div>
			<div class="l-box-body l-spaced">
				<ul role="tablist" class="nav nav-tabs">
					<li class="active"><a href="#home" role="tab"
						data-toggle="tab">Basics</a></li>
					<li><a href="#profile" role="tab" data-toggle="tab">Slider</a></li>
					<li><a href="#messages" role="tab" data-toggle="tab"
						onclick="myFunction()">Headers-1</a></li>
					<li><a href="#profile1" role="tab" data-toggle="tab"
						onclick="myFunction2()">Headers-2</a></li>
				</ul>
				<!-- Tab panes-->
				<div class="tab-content">
					<div id="home" class="tab-pane active l-spaced-vertical">
						<div class="l-page-header">
							<h2 class="l-page-title"></h2>
							<!--BREADCRUMB-->
							<ul class="breadcrumb t-breadcrumb-page">
								<li></li>
								<li></li>
								<li class="active"></li>
							</ul>
						</div>

						<div class="l-spaced">
							<div class="l-row">
								<div class="l-box">
									<div class="l-box-header">
										<h2 class="l-box-title">
											<span>Basics</span>
										</h2>
										<ul class="l-box-options">
											<li><a href="#"><i class="fa fa-cogs"></i></a></li>
											<li><a href="#" data-ason-type="fullscreen"
												data-ason-target=".l-box" data-ason-content="true"
												class="ason-widget"></a></li>
											<li><a
												href="${pageContext.request.contextPath}/admin/ListOfField.io"
												data-ason-type="refresh" data-ason-target=".l-box"
												data-ason-duration="1000" class="ason-widget"><i
													class="fa fa-rotate-right"></i></a></li>
											<li><a href="#" data-ason-type="toggle"
												data-ason-find=".l-box" data-ason-target=".l-box-body"
												data-ason-content="true" data-ason-duration="200"
												class="ason-widget"></a></li>
											<li><a href="#" data-ason-type="delete"
												data-ason-target=".l-box" data-ason-content="true"
												data-ason-animation="fadeOut" class="ason-widget"></a></li>
										</ul>
									</div>
									<div class="l-box-body">
										<div class="l-spaced">
											<form
												action="${pageContext.request.contextPath}/admin/updateBasicstab1.io"
												method="Post" role="form" class="form-horizontal">
												<div class="form-group">
													<div class="form-group">
														<label for="inputEmail3" class="col-md-3 control-label">Slogan</label>
														<div class="col-md-9">
															<input id="slogan" name="slogan" type="text"
																value="${basics.slogan}" placeholder="Slogan"
																class="form-control">
														</div>
													</div>
													<div class="form-group">

														<label for="inputEmail3" class="col-md-3 control-label">Address</label>
														<div class="col-md-9">
															<input id="address" name="address" type="text"
																value="${basics.address}" placeholder="Address"
																class="form-control">
														</div>
													</div>
													<div class="form-group">

														<label for="inputEmail3" class="col-md-3 control-label">ContactNo</label>
														<div class="col-md-9">
															<input id="contactno" name="contactno" type="text"
																value="${basics.contactNo}" placeholder="ContactNo"
																class="form-control">
														</div>
													</div>
													<div class="form-group">

														<label for="inputEmail3" class="col-md-3 control-label">EmailId</label>
														<div class="col-md-9">
															<input id="emailId" name="emailId" type="text"
																value="${basics.emailId}" placeholder="EmailId"
																class="form-control">
														</div>
													</div>
													<div class="form-group">

														<label for="inputEmail3" class="col-md-3 control-label">FaceBook</label>
														<div class="col-md-9">
															<input id="fb" name="fb" type="text"
																value="${basics.socialLabel1}" placeholder="Link"
																class="form-control">
														</div>
													</div>
													<div class="form-group">

														<label for="inputEmail3" class="col-md-3 control-label">Twitter</label>
														<div class="col-md-9">
															<input id="tw" name="tw" type="text"
																value="${basics.socialLabel2}" placeholder="Link"
																class="form-control">
														</div>
													</div>
													<div class="form-group">

														<label for="inputEmail3" class="col-md-3 control-label">Google+</label>
														<div class="col-md-9">
															<input id="gp" name="gp" type="text"
																value="${basics.socialLabel3}" placeholder="Link"
																class="form-control">
														</div>
													</div>
													<div class="form-group">

														<label for="inputEmail3" class="col-md-3 control-label">Pinterest</label>
														<div class="col-md-9">
															<input id="pt" name="pt" type="text"
																value="${basics.socialLabel4}" placeholder="Link"
																class="form-control">
														</div>
													</div>
													<div class="form-group">

														<label for="inputEmail3" class="col-md-3 control-label">Vimeo</label>
														<div class="col-md-9">
															<input id="vi" name="vi" type="text"
																value="${basics.socialLabel5}" placeholder="Link"
																class="form-control">
														</div>
													</div>
													<div class="form-group">

														<label for="inputEmail3" class="col-md-3 control-label">LinkedIn</label>
														<div class="col-md-9">
															<input id="li" name="li" type="text"
																value="${basics.socialLabel6}" placeholder="Link"
																class="form-control">
														</div>
													</div>
													<div class="form-group">

														<label for="inputEmail3" class="col-md-3 control-label">About
															FreeFrae-(Brief)</label>
														<div class="col-md-9">
															<textarea id="brief" name="brief" rows="4" cols="100"
																maxlength="500">${basics.aboutfreefrae}</textarea>

														</div>
													</div>

													<div class="form-group">
														<div class="col-md-offset-3 col-md-9">
															<button type="submit" class="btn btn-default">Update/Save</button>
														</div>
													</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id="profile" class="tab-pane l-spaced-vertical">
					<div class="l-page-header">
						<h2 class="l-page-title"></h2>
						<!--BREADCRUMB-->
						<ul class="breadcrumb t-breadcrumb-page">
							<li></li>
							<li></li>
							<li class="active"></li>
						</ul>
					</div>
					<div class="l-spaced">
						<div class="l-row">
							<div class="l-box">
								<div class="l-box-header">
									<h2 class="l-box-title">
										<span>Slider</span> Home-Page
									</h2>
									<ul class="l-box-options">
										<li><a href="#"><i class="fa fa-cogs"></i></a></li>
										<li><a href="#" data-ason-type="fullscreen"
											data-ason-target=".l-box" data-ason-content="true"
											class="ason-widget"></a></li>
										<li><a
											href="${pageContext.request.contextPath}/admin/ListOfField.io"
											data-ason-type="refresh" data-ason-target=".l-box"
											data-ason-duration="1000" class="ason-widget"><i
												class="fa fa-rotate-right"></i></a></li>
										<li><a href="#" data-ason-type="toggle"
											data-ason-find=".l-box" data-ason-target=".l-box-body"
											data-ason-content="true" data-ason-duration="200"
											class="ason-widget"></a></li>
										<li><a href="#" data-ason-type="delete"
											data-ason-target=".l-box" data-ason-content="true"
											data-ason-animation="fadeOut" class="ason-widget"></a></li>
									</ul>
								</div>
								<div class="l-box-body">
									<div class="l-spaced">
										<form
											action="${pageContext.request.contextPath}/admin/updateBasicstab2.io"
											method="Post" role="form" class="form-horizontal"
											enctype="multipart/form-data">
											<div class="form-group">
												<div class="form-group">
													<label for="inputEmail3" class="col-md-3 control-label">Slide-1-(1600*532px)</label>
													<div class="col-md-9">

														<input id="s1Img" name="s1Img" type="file"
															placeholder="Slide1--(1600*532px)-png" accept="image/png"
															class="form-control">
													</div>
												</div>
												<div class="form-group">

													<label for="inputEmail3" class="col-md-3 control-label">S1-Heading</label>
													<div class="col-md-9">
														<input id="S1Heading" name="S1Heading" type="text"
															value="${basics.s1Label1}" placeholder="S1-Heading"
															class="form-control">
													</div>
												</div>
												<div class="form-group">

													<label for="inputEmail3" class="col-md-3 control-label">S1-SubHeading</label>
													<div class="col-md-9">
														<input id="S1SubHeading" name="S1SubHeading" type="text"
															value="${basics.s1Label2}" placeholder="s1-subHeading"
															class="form-control">
													</div>
												</div>
												<div class="form-group">

													<label for="inputEmail3" class="col-md-3 control-label">S1-Description</label>
													<div class="col-md-9">
														<input id="S1Description" name="S1Description" type="text"
															value="${basics.s1Label3}" placeholder="S1-Description"
															class="form-control">
													</div>
												</div>
												<div class="form-group">

													<label for="inputEmail3" class="col-md-3 control-label">S1-Button1-Name</label>
													<div class="col-md-9">
														<input id="s1B1Name" name="S1B1Name" type="text"
															value="${basics.s1B1Name}" placeholder="Button-Name"
															class="form-control">
													</div>
												</div>
												<div class="form-group">

													<label for="inputEmail3" class="col-md-3 control-label">S1-Button1-Link</label>
													<div class="col-md-9">
														<input id="s1B1" name="s1B1" type="text"
															value="${basics.s1B1}" placeholder="Link"
															class="form-control">
													</div>
												</div>
												<div class="form-group">

													<label for="inputEmail3" class="col-md-3 control-label">S1-Button2-Name</label>
													<div class="col-md-9">
														<input id="s1B2Name" name="s1B2Name" type="text"
															value="${basics.s1B2Name}" placeholder="Button-Name"
															class="form-control">
													</div>
												</div>
												<div class="form-group">

													<label for="inputEmail3" class="col-md-3 control-label">S1-Button2-Link</label>
													<div class="col-md-9">
														<input id="s1B2" name="s1B2" type="text"
															value="${basics.s1B2}" placeholder="Link"
															class="form-control">
													</div>
												</div>
												<div class="form-group">

													<label for="inputEmail3" class="col-md-3 control-label">Slider-2-(1600*532px)</label>
													<div class="col-md-9">

														<input id="s2Img" name="s2Img" type="file"
															placeholder="Slide2--(1600*532px)-png" accept="image/png"
															class="form-control">
													</div>
												</div>
												<div class="form-group">

													<label for="inputEmail3" class="col-md-3 control-label">S2-Label-1</label>
													<div class="col-md-9">
														<input id="s2Label1" name="s2Label1" type="text"
															value="${basics.s2Label1}" placeholder="S2-Label-1"
															class="form-control">
													</div>
												</div>
												<div class="form-group">

													<label for="inputEmail3" class="col-md-3 control-label">S2-Label-2</label>
													<div class="col-md-9">
														<input id="s2Label2" name="s2Label2" type="text"
															value="${basics.s2Label2}" placeholder="S2-Label-2"
															class="form-control">
													</div>
												</div>
												<div class="form-group">

													<label for="inputEmail3" class="col-md-3 control-label">S2-Label-3</label>
													<div class="col-md-9">
														<input id="s2Label3" name="s2Label3" type="text"
															value="${basics.s2Label3}" placeholder="S2-Label-3"
															class="form-control">
													</div>
												</div>
												<div class="form-group">

													<label for="inputEmail3" class="col-md-3 control-label">S2-Label-4</label>
													<div class="col-md-9">
														<input id="s2Label4" name="s2Label4" type="text"
															value="${basics.s2Label4}" placeholder="S2-Label-4"
															class="form-control">
													</div>
												</div>
												<div class="form-group">

													<label for="inputEmail3" class="col-md-3 control-label">S2-Label-5</label>
													<div class="col-md-9">
														<input id="s2Label5" name="s2Label5" type="text"
															value="${basics.s2Label5}" placeholder="S2-Label-5"
															class="form-control">
													</div>
												</div>
												<div class="form-group">

													<label for="inputEmail3" class="col-md-3 control-label">S2-Label-6</label>
													<div class="col-md-9">
														<input id="s2Label6" name="s2Label6" type="text"
															value="${basics.s2Label6}" placeholder="S2-Label-6"
															class="form-control">
													</div>
												</div>


												<div class="form-group">

													<label for="inputEmail3" class="col-md-3 control-label">Slider-3-(1600*532px)</label>
													<div class="col-md-9">

														<input id="s3Img" name="s3Img" type="file"
															placeholder="Slide3--(1600*532px)-png" accept="image/png"
															class="form-control">
													</div>
												</div>
												<div class="form-group">

													<label for="inputEmail3" class="col-md-3 control-label">S3-Heading</label>
													<div class="col-md-9">
														<input id="s3Header" name="s3Header" type="text"
															value="${basics.s3Header}" placeholder="S3-heading"
															class="form-control">
													</div>
												</div>
												<div class="form-group">

													<label for="inputEmail3" class="col-md-3 control-label">S3-Label-1</label>
													<div class="col-md-9">
														<input id="s3Label1" name="s3Label1" type="text"
															value="${basics.s3Label1}" placeholder="S3-Label-1"
															class="form-control">
													</div>
												</div>
												<div class="form-group">

													<label for="inputEmail3" class="col-md-3 control-label">S3-Label-2</label>
													<div class="col-md-9">
														<input id="s3Label2" name="s3Label2" type="text"
															value="${basics.s3Label2}" placeholder="S3-Label-2"
															class="form-control">
													</div>
												</div>
												<div class="form-group">

													<label for="inputEmail3" class="col-md-3 control-label">S3-Label-3</label>
													<div class="col-md-9">
														<input id="s3Label3" name="s3Label3" type="text"
															value="${basics.s3Label3}" placeholder="S3-Label-3"
															class="form-control">
													</div>
												</div>
												<div class="form-group">
													<label for="inputEmail3" class="col-md-3 control-label">S3-Label-4</label>
													<div class="col-md-9">
														<input id="s3Label4" name="s3Label4" type="text"
															value="${basics.s3Label4}" placeholder="S3-Label-4"
															class="form-control">
													</div>
												</div>
												<div class="form-group">

													<label for="inputEmail3" class="col-md-3 control-label">S3-Label-5</label>
													<div class="col-md-9">
														<input id="s3Label5" name="s3Label5" type="text"
															value="${basics.s3Label5}" placeholder="S3-Label-5"
															class="form-control">
													</div>
												</div>
												<div class="form-group">
													<label for="inputEmail3" class="col-md-3 control-label">S3-Label-6</label>
													<div class="col-md-9">
														<input id="s3Label6" name="s3Label6" type="text"
															value="${basics.s3Label6}" placeholder="S3-Label-6"
															class="form-control">
													</div>
												</div>
												<div class="form-group">
													<label for="inputEmail3" class="col-md-3 control-label">Slide-4-(1600*532px)</label>
													<div class="col-md-9">
														<input id="s4Img" name="s4Img" type="file"
															placeholder="Slide4--(1600*532px)-png" accept="image/png"
															class="form-control">
													</div>
												</div>
												<div class="form-group">

													<label for="inputEmail3" class="col-md-3 control-label">S4-Heading</label>
													<div class="col-md-9">
														<input id="s4Header" name="s4Header" type="text"
															value="${basics.s4Header}" placeholder="S4-Heading"
															class="form-control">
													</div>
												</div>
												<div class="form-group">

													<label for="inputEmail3" class="col-md-3 control-label">S4-SubHeading</label>
													<div class="col-md-9">
														<input id="s4SubHeader" name="s4SubHeader" type="text"
															value="${basics.s4Label1}" placeholder="s4-subHeading"
															class="form-control">
													</div>
												</div>
												<div class="form-group">

													<label for="inputEmail3" class="col-md-3 control-label">S4-Description</label>
													<div class="col-md-9">
														<input id="s4Description" name="s4Description" type="text"
															value="${basics.s4Label2}" placeholder="S4-Description"
															class="form-control">
													</div>
												</div>
												<div class="form-group">

													<label for="inputEmail3" class="col-md-3 control-label">S4-Button1-Name</label>
													<div class="col-md-9">
														<input id="s4B1Name" name="s4B1Name" type="text"
															value="${basics.s4B1Name}" placeholder="Button-Name"
															class="form-control">
													</div>
												</div>
												<div class="form-group">

													<label for="inputEmail3" class="col-md-3 control-label">S4-Button1-Link</label>
													<div class="col-md-9">
														<input id="s4B1" name="s4B1" type="text"
															value="${basics.s4B1}" placeholder="Link"
															class="form-control">
													</div>
												</div>
												<div class="form-group">
													<div class="col-md-offset-3 col-md-9">
														<button type="submit" class="btn btn-default">Update/Save</button>
													</div>
												</div>
										</form>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="profile1" class="tab-pane l-spaced-vertical">
				<div class="l-page-header">
					<h2 class="l-page-title"></h2>
					<!--BREADCRUMB-->
					<ul class="breadcrumb t-breadcrumb-page">
						<li></li>
						<li></li>
						<li class="active"></li>
					</ul>
				</div>
				<div class="l-spaced">
					<div class="l-row">
						<div class="l-box">
							<div class="l-box-header">
								<h2 class="l-box-title">
									<span>Headings-2</span> Home-Page
								</h2>
								<ul class="l-box-options">
									<li><a href="#"><i class="fa fa-cogs"></i></a></li>
									<li><a href="#" data-ason-type="fullscreen"
										data-ason-target=".l-box" data-ason-content="true"
										class="ason-widget"></a></li>
									<li><a
										href="${pageContext.request.contextPath}/admin/ListOfField.io"
										data-ason-type="refresh" data-ason-target=".l-box"
										data-ason-duration="1000" class="ason-widget"><i
											class="fa fa-rotate-right"></i></a></li>
									<li><a href="#" data-ason-type="toggle"
										data-ason-find=".l-box" data-ason-target=".l-box-body"
										data-ason-content="true" data-ason-duration="200"
										class="ason-widget"></a></li>
									<li><a href="#" data-ason-type="delete"
										data-ason-target=".l-box" data-ason-content="true"
										data-ason-animation="fadeOut" class="ason-widget"></a></li>
								</ul>
							</div>
							<script>
								function myFunction2() {
									document.getElementById("h5icon1").value = document
											.getElementById('h5Img1').value;
									document.getElementById("h5icon2").value = document
											.getElementById('h5Img2').value;
									document.getElementById("h5icon3").value = document
											.getElementById('h5Img3').value;
									document.getElementById("h5icon4").value = document
											.getElementById('h5Img4').value;

								};
							</script>
							<input id="h5Img1" name="h5Img1" type="hidden"
								value="${basics.h5Img1}"> <input id="h5Img2"
								name="h5Img2" type="hidden" value="${basics.h5Img2}"> <input
								id="h5Img3" name="h5Img3" type="hidden" value="${basics.h5Img3}">
							<input id="h5Img4" name="h5Img4" type="hidden"
								value="${basics.h5Img4}">
							<div class="l-box-body">
								<div class="l-spaced">
									<form
										action="${pageContext.request.contextPath}/admin/updateBasicstab4.io"
										method="Post" role="form" class="form-horizontal">
										<div class="form-group">
											<div class="form-group">
												<label for="inputEmail3" class="col-md-3 control-label">Heading-4</label>
												<div class="col-md-9">
													<input id="header4" name="header4" type="text"
														value="${basics.heading4}" placeholder="Heading-4"
														class="form-control">
												</div>
											</div>
											<div class="form-group">

												<label for="inputEmail3" class="col-md-3 control-label">h4-description</label>
												<div class="col-md-9">
													<textarea id="h4Description" name="h4Description" rows="4"
														cols="100" maxlength="500">${basics.h4Label1}</textarea>
												</div>
											</div>
											<div class="form-group">

												<label for="inputEmail3" class="col-md-3 control-label">h4-tab-label-1</label>
												<div class="col-md-9">
													<input id="h4label1" name="h4label1" type="text"
														value="${basics.h4Label5}" placeholder="label"
														class="form-control">
												</div>
											</div>
											<div class="form-group">

												<label for="inputEmail3" class="col-md-3 control-label">h4-tab-Description</label>
												<div class="col-md-9">
													<textarea id="h4Description1" name="h4Description1"
														rows="4" cols="100" maxlength="2000">${basics.h4Label2}</textarea>

												</div>
											</div>
											<div class="form-group">

												<label for="inputEmail3" class="col-md-3 control-label">h4-tab-label-2</label>
												<div class="col-md-9">
													<input id="h4label2" name="h4label2" type="text"
														value="${basics.h4Label6}" placeholder="Label"
														class="form-control">
												</div>
											</div>
											<div class="form-group">

												<label for="inputEmail3" class="col-md-3 control-label">h4-tab-description</label>
												<div class="col-md-9">
													<textarea id="h4Description2" name="h4Description2"
														rows="4" cols="100" maxlength="2000">${basics.h4Label3}</textarea>
												</div>
											</div>
											<div class="form-group">

												<label for="inputEmail3" class="col-md-3 control-label">h4-tab-label-3</label>
												<div class="col-md-9">
													<input id="h4label3" name="h4label3" type="text"
														value="${basics.h4Label7}" placeholder="Label"
														class="form-control">
												</div>
											</div>
											<div class="form-group">

												<label for="inputEmail3" class="col-md-3 control-label">h4-tab-description</label>
												<div class="col-md-9">
													<textarea id="h4Description3" name="h4Description3"
														rows="4" cols="100" maxlength="2000">${basics.h4Label4}</textarea>
												</div>
											</div>
											<div class="form-group">

												<label for="inputEmail3" class="col-md-3 control-label">Heading-5</label>
												<div class="col-md-9">
													<input id="header5" name="header5" type="text"
														value="${basics.heading5}" placeholder="heading"
														class="form-control">
												</div>
											</div>
											<div class="form-group">

												<label for="inputEmail3" class="col-md-3 control-label">h5-description</label>
												<div class="col-md-9">
													<input id="h5Description" name="h5Description" type="text"
														value="${basics.h5Label9}" placeholder="description"
														class="form-control">
												</div>
											</div>
											<div class="form-group">

												<label for="inputEmail3" class="col-md-3 control-label">h5-icon-1</label>
												<div class="col-md-9">
													<select class="fa-select" name="h5icon1" id="h5icon1">
														<option label="Select icon" />
														<option value="fa fa-glass" label="&#xf000" />
														<option value="fa fa-music" label="&#xf001" />
														<option value="fa fa-search" label="&#xf002" />
														<option value="fa fa-envelope-o" label="&#xf003" />
														<option value="fa fa-heart" label="&#xf004" />
														<option value="fa fa-star" label="&#xf005" />
														<option value="fa fa-star-o" label="&#xf006" />
														<option value="fa fa-user" label="&#xf007" />
														<option value="fa fa-film" label="&#xf008" />
														<option value="fa fa-th-large" label="&#xf009" />
														<option value="fa fa-th" label="&#xf00a" />
														<option value="fa fa-th-list" label="&#xf00b" />
														<option value="fa fa-check" label="&#xf00c" />
														<option value="fa fa-times" label="&#xf00d" />
														<option value="fa fa-search-plus" label="&#xf00e" />
														<option value="fa fa-search-minus" label="&#xf010" />
														<option value="fa fa-power-off" label="&#xf011" />
														<option value="fa fa-signal" label="&#xf012" />
														<option value="fa fa-cog" label="&#xf013" />
														<option value="fa fa-trash-o" label="&#xf014" />
														<option value="fa fa-home" label="&#xf015" />
														<option value="fa fa-file-o" label="&#xf016" />
														<option value="fa fa-clock-o" label="&#xf017" />
														<option value="fa fa-road" label="&#xf018" />
														<option value="fa fa-download" label="&#xf019" />
														<option value="fa fa-arrow-circle-o-down" label="&#xf01a" />
														<option value="fa fa-arrow-circle-o-up" label="&#xf01b" />
														<option value="fa fa-inbox" label="&#xf01c" />
														<option value="fa fa-play-circle-o" label="&#xf01d" />
														<option value="fa fa-repeat" label="&#xf01e" />
														<option value="fa fa-refresh" label="&#xf021" />
														<option value="fa fa-list-alt" label="&#xf022" />
														<option value="fa fa-lock" label="&#xf023" />
														<option value="fa fa-flag" label="&#xf024" />
														<option value="fa fa-headphones" label="&#xf025" />
														<option value="fa fa-volume-off" label="&#xf026" />
														<option value="fa fa-volume-down" label="&#xf027" />
														<option value="fa fa-volume-up" label="&#xf028" />
														<option value="fa fa-qrcode" label="&#xf029" />
														<option value="fa fa-barcode" label="&#xf02a" />
														<option value="fa fa-tag" label="&#xf02b" />
														<option value="fa fa-tags" label="&#xf02c" />
														<option value="fa fa-book" label="&#xf02d" />
														<option value="fa fa-bookmark" label="&#xf02e" />
														<option value="fa fa-print" label="&#xf02f" />
														<option value="fa fa-camera" label="&#xf030" />
														<option value="fa fa-font" label="&#xf031" />
														<option value="fa fa-bold" label="&#xf032" />
														<option value="fa fa-italic" label="&#xf033" />
														<option value="fa fa-text-height" label="&#xf034" />
														<option value="fa fa-text-width" label="&#xf035" />
														<option value="fa fa-align-left" label="&#xf036" />
														<option value="fa fa-align-center" label="&#xf037" />
														<option value="fa fa-align-right" label="&#xf038" />
														<option value="fa fa-align-justify" label="&#xf039" />
														<option value="fa fa-list" label="&#xf03a" />
														<option value="fa fa-outdent" label="&#xf03b" />
														<option value="fa fa-indent" label="&#xf03c" />
														<option value="fa fa-video-camera" label="&#xf03d" />
														<option value="fa fa-picture-o" label="&#xf03e" />
														<option value="fa fa-pencil" label="&#xf040" />
														<option value="fa fa-map-marker" label="&#xf041" />
														<option value="fa fa-adjust" label="&#xf042" />
														<option value="fa fa-tint" label="&#xf043" />
														<option value="fa fa-pencil-square-o" label="&#xf044" />
														<option value="fa fa-share-square-o" label="&#xf045" />
														<option value="fa fa-check-square-o" label="&#xf046" />
														<option value="fa fa-arrows" label="&#xf047" />
														<option value="fa fa-step-backward" label="&#xf048" />
														<option value="fa fa-fast-backward" label="&#xf049" />
														<option value="fa fa-backward" label="&#xf04a" />
														<option value="fa fa-play" label="&#xf04b" />
														<option value="fa fa-pause" label="&#xf04c" />
														<option value="fa fa-stop" label="&#xf04d" />
														<option value="fa fa-forward" label="&#xf04e" />
														<option value="fa fa-fast-forward" label="&#xf050" />
														<option value="fa fa-step-forward" label="&#xf051" />
														<option value="fa fa-eject" label="&#xf052" />
														<option value="fa fa-chevron-left" label="&#xf053" />
														<option value="fa fa-chevron-right" label="&#xf054" />
														<option value="fa fa-plus-circle" label="&#xf055" />
														<option value="fa fa-minus-circle" label="&#xf056" />
														<option value="fa fa-times-circle" label="&#xf057" />
														<option value="fa fa-check-circle" label="&#xf058" />
														<option value="fa fa-question-circle" label="&#xf059" />
														<option value="fa fa-info-circle" label="&#xf05a" />
														<option value="fa fa-crosshairs" label="&#xf05b" />
														<option value="fa fa-times-circle-o" label="&#xf05c" />
														<option value="fa fa-check-circle-o" label="&#xf05d" />
														<option value="fa fa-ban" label="&#xf05e" />
														<option value="fa fa-arrow-left" label="&#xf060" />
														<option value="fa fa-arrow-right" label="&#xf061" />
														<option value="fa fa-arrow-up" label="&#xf062" />
														<option value="fa fa-arrow-down" label="&#xf063" />
														<option value="fa fa-share" label="&#xf064" />
														<option value="fa fa-expand" label="&#xf065" />
														<option value="fa fa-compress" label="&#xf066" />
														<option value="fa fa-plus" label="&#xf067" />
														<option value="fa fa-minus" label="&#xf068" />
														<option value="fa fa-asterisk" label="&#xf069" />
														<option value="fa fa-exclamation-circle" label="&#xf06a" />
														<option value="fa fa-gift" label="&#xf06b" />
														<option value="fa fa-leaf" label="&#xf06c" />
														<option value="fa fa-fire" label="&#xf06d" />
														<option value="fa fa-eye" label="&#xf06e" />
														<option value="fa fa-eye-slash" label="&#xf070" />
														<option value="fa fa-exclamation-triangle" label="&#xf071" />
														<option value="fa fa-plane" label="&#xf072" />
														<option value="fa fa-calendar" label="&#xf073" />
														<option value="fa fa-random" label="&#xf074" />
														<option value="fa fa-comment" label="&#xf075" />
														<option value="fa fa-magnet" label="&#xf076" />
														<option value="fa fa-chevron-up" label="&#xf077" />
														<option value="fa fa-chevron-down" label="&#xf078" />
														<option value="fa fa-retweet" label="&#xf079" />
														<option value="fa fa-shopping-cart" label="&#xf07a" />
														<option value="fa fa-folder" label="&#xf07b" />
														<option value="fa fa-folder-open" label="&#xf07c" />
														<option value="fa fa-arrows-v" label="&#xf07d" />
														<option value="fa fa-arrows-h" label="&#xf07e" />
														<option value="fa fa-bar-chart" label="&#xf080" />
														<option value="fa fa-twitter-square" label="&#xf081" />
														<option value="fa fa-facebook-square" label="&#xf082" />
														<option value="fa fa-camera-retro" label="&#xf083" />
														<option value="fa fa-key" label="&#xf084" />
														<option value="fa fa-cogs" label="&#xf085" />
														<option value="fa fa-comments" label="&#xf086" />
														<option value="fa fa-thumbs-o-up" label="&#xf087" />
														<option value="fa fa-thumbs-o-down" label="&#xf088" />
														<option value="fa fa-star-half" label="&#xf089" />
														<option value="fa fa-heart-o" label="&#xf08a" />
														<option value="fa fa-sign-out" label="&#xf08b" />
														<option value="fa fa-linkedin-square" label="&#xf08c" />
														<option value="fa fa-thumb-tack" label="&#xf08d" />
														<option value="fa fa-external-link" label="&#xf08e" />
														<option value="fa fa-sign-in" label="&#xf090" />
														<option value="fa fa-trophy" label="&#xf091" />
														<option value="fa fa-github-square" label="&#xf092" />
														<option value="fa fa-upload" label="&#xf093" />
														<option value="fa fa-lemon-o" label="&#xf094" />
														<option value="fa fa-phone" label="&#xf095" />
														<option value="fa fa-square-o" label="&#xf096" />
														<option value="fa fa-bookmark-o" label="&#xf097" />
														<option value="fa fa-phone-square" label="&#xf098" />
														<option value="fa fa-twitter" label="&#xf099" />
														<option value="fa fa-facebook" label="&#xf09a" />
														<option value="fa fa-github" label="&#xf09b" />
														<option value="fa fa-unlock" label="&#xf09c" />
														<option value="fa fa-credit-card" label="&#xf09d" />
														<option value="fa fa-rss" label="&#xf09e" />
														<option value="fa fa-hdd-o" label="&#xf0a0" />
														<option value="fa fa-bullhorn" label="&#xf0a1" />
														<option value="fa fa-bell" label="&#xf0f3" />
														<option value="fa fa-certificate" label="&#xf0a3" />
														<option value="fa fa-hand-o-right" label="&#xf0a4" />
														<option value="fa fa-hand-o-left" label="&#xf0a5" />
														<option value="fa fa-hand-o-up" label="&#xf0a6" />
														<option value="fa fa-hand-o-down" label="&#xf0a7" />
														<option value="fa fa-arrow-circle-left" label="&#xf0a8" />
														<option value="fa fa-arrow-circle-right" label="&#xf0a9" />
														<option value="fa fa-arrow-circle-up" label="&#xf0aa" />
														<option value="fa fa-arrow-circle-down" label="&#xf0ab" />
														<option value="fa fa-globe" label="&#xf0ac" />
														<option value="fa fa-wrench" label="&#xf0ad" />
														<option value="fa fa-tasks" label="&#xf0ae" />
														<option value="fa fa-filter" label="&#xf0b0" />
														<option value="fa fa-briefcase" label="&#xf0b1" />
														<option value="fa fa-arrows-alt" label="&#xf0b2" />
														<option value="fa fa-users" label="&#xf0c0" />
														<option value="fa fa-link" label="&#xf0c1" />
														<option value="fa fa-cloud" label="&#xf0c2" />
														<option value="fa fa-flask" label="&#xf0c3" />
														<option value="fa fa-scissors" label="&#xf0c4" />
														<option value="fa fa-files-o" label="&#xf0c5" />
														<option value="fa fa-paperclip" label="&#xf0c6" />
														<option value="fa fa-floppy-o" label="&#xf0c7" />
														<option value="fa fa-square" label="&#xf0c8" />
														<option value="fa fa-bars" label="&#xf0c9" />
														<option value="fa fa-list-ul" label="&#xf0ca" />
														<option value="fa fa-list-ol" label="&#xf0cb" />
														<option value="fa fa-strikethrough" label="&#xf0cc" />
														<option value="fa fa-underline" label="&#xf0cd" />
														<option value="fa fa-table" label="&#xf0ce" />
														<option value="fa fa-magic" label="&#xf0d0" />
														<option value="fa fa-truck" label="&#xf0d1" />
														<option value="fa fa-pinterest" label="&#xf0d2" />
														<option value="fa fa-pinterest-square" label="&#xf0d3" />
														<option value="fa fa-google-plus-square" label="&#xf0d4" />
														<option value="fa fa-google-plus" label="&#xf0d5" />
														<option value="fa fa-money" label="&#xf0d6" />
														<option value="fa fa-caret-down" label="&#xf0d7" />
														<option value="fa fa-caret-up" label="&#xf0d8" />
														<option value="fa fa-caret-left" label="&#xf0d9" />
														<option value="fa fa-caret-right" label="&#xf0da" />
														<option value="fa fa-columns" label="&#xf0db" />
														<option value="fa fa-sort" label="&#xf0dc" />
														<option value="fa fa-sort-desc" label="&#xf0dd" />
														<option value="fa fa-sort-asc" label="&#xf0de" />
														<option value="fa fa-envelope" label="&#xf0e0" />
														<option value="fa fa-linkedin" label="&#xf0e1" />
														<option value="fa fa-undo" label="&#xf0e2" />
														<option value="fa fa-gavel" label="&#xf0e3" />
														<option value="fa fa-tachometer" label="&#xf0e4" />
														<option value="fa fa-comment-o" label="&#xf0e5" />
														<option value="fa fa-comments-o" label="&#xf0e6" />
														<option value="fa fa-bolt" label="&#xf0e7" />
														<option value="fa fa-sitemap" label="&#xf0e8" />
														<option value="fa fa-umbrella" label="&#xf0e9" />
														<option value="fa fa-clipboard" label="&#xf0ea" />
														<option value="fa fa-lightbulb-o" label="&#xf0eb" />
														<option value="fa fa-exchange" label="&#xf0ec" />
														<option value="fa fa-cloud-download" label="&#xf0ed" />
														<option value="fa fa-cloud-upload" label="&#xf0ee" />
														<option value="fa fa-user-md" label="&#xf0f0" />
														<option value="fa fa-stethoscope" label="&#xf0f1" />
														<option value="fa fa-suitcase" label="&#xf0f2" />
														<option value="fa fa-bell-o" label="&#xf0a2" />
														<option value="fa fa-coffee" label="&#xf0f4" />
														<option value="fa fa-cutlery" label="&#xf0f5" />
														<option value="fa fa-file-text-o" label="&#xf0f6" />
														<option value="fa fa-building-o" label="&#xf0f7" />
														<option value="fa fa-hospital-o" label="&#xf0f8" />
														<option value="fa fa-ambulance" label="&#xf0f9" />
														<option value="fa fa-medkit" label="&#xf0fa" />
														<option value="fa fa-fighter-jet" label="&#xf0fb" />
														<option value="fa fa-beer" label="&#xf0fc" />
														<option value="fa fa-h-square" label="&#xf0fd" />
														<option value="fa fa-plus-square" label="&#xf0fe" />
														<option value="fa fa-angle-double-left" label="&#xf100" />
														<option value="fa fa-angle-double-right" label="&#xf101" />
														<option value="fa fa-angle-double-up" label="&#xf102" />
														<option value="fa fa-angle-double-down" label="&#xf103" />
														<option value="fa fa-angle-left" label="&#xf104" />
														<option value="fa fa-angle-right" label="&#xf105" />
														<option value="fa fa-angle-up" label="&#xf106" />
														<option value="fa fa-angle-down" label="&#xf107" />
														<option value="fa fa-desktop" label="&#xf108" />
														<option value="fa fa-laptop" label="&#xf109" />
														<option value="fa fa-tablet" label="&#xf10a" />
														<option value="fa fa-mobile" label="&#xf10b" />
														<option value="fa fa-circle-o" label="&#xf10c" />
														<option value="fa fa-quote-left" label="&#xf10d" />
														<option value="fa fa-quote-right" label="&#xf10e" />
														<option value="fa fa-spinner" label="&#xf110" />
														<option value="fa fa-circle" label="&#xf111" />
														<option value="fa fa-reply" label="&#xf112" />
														<option value="fa fa-github-alt" label="&#xf113" />
														<option value="fa fa-folder-o" label="&#xf114" />
														<option value="fa fa-folder-open-o" label="&#xf115" />
														<option value="fa fa-smile-o" label="&#xf118" />
														<option value="fa fa-frown-o" label="&#xf119" />
														<option value="fa fa-meh-o" label="&#xf11a" />
														<option value="fa fa-gamepad" label="&#xf11b" />
														<option value="fa fa-keyboard-o" label="&#xf11c" />
														<option value="fa fa-flag-o" label="&#xf11d" />
														<option value="fa fa-flag-checkered" label="&#xf11e" />
														<option value="fa fa-terminal" label="&#xf120" />
														<option value="fa fa-code" label="&#xf121" />
														<option value="fa fa-reply-all" label="&#xf122" />
														<option value="fa fa-star-half-o" label="&#xf123" />
														<option value="fa fa-location-arrow" label="&#xf124" />
														<option value="fa fa-crop" label="&#xf125" />
														<option value="fa fa-code-fork" label="&#xf126" />
														<option value="fa fa-chain-broken" label="&#xf127" />
														<option value="fa fa-question" label="&#xf128" />
														<option value="fa fa-info" label="&#xf129" />
														<option value="fa fa-exclamation" label="&#xf12a" />
														<option value="fa fa-superscript" label="&#xf12b" />
														<option value="fa fa-subscript" label="&#xf12c" />
														<option value="fa fa-eraser" label="&#xf12d" />
														<option value="fa fa-puzzle-piece" label="&#xf12e" />
														<option value="fa fa-microphone" label="&#xf130" />
														<option value="fa fa-microphone-slash" label="&#xf131" />
														<option value="fa fa-shield" label="&#xf132" />
														<option value="fa fa-calendar-o" label="&#xf133" />
														<option value="fa fa-fire-extinguisher" label="&#xf134" />
														<option value="fa fa-rocket" label="&#xf135" />
														<option value="fa fa-maxcdn" label="&#xf136" />
														<option value="fa fa-chevron-circle-left" label="&#xf137" />
														<option value="fa fa-chevron-circle-right" label="&#xf138" />
														<option value="fa fa-chevron-circle-up" label="&#xf139" />
														<option value="fa fa-chevron-circle-down" label="&#xf13a" />
														<option value="fa fa-html5" label="&#xf13b" />
														<option value="fa fa-css3" label="&#xf13c" />
														<option value="fa fa-anchor" label="&#xf13d" />
														<option value="fa fa-unlock-alt" label="&#xf13e" />
														<option value="fa fa-bullseye" label="&#xf140" />
														<option value="fa fa-ellipsis-h" label="&#xf141" />
														<option value="fa fa-ellipsis-v" label="&#xf142" />
														<option value="fa fa-rss-square" label="&#xf143" />
														<option value="fa fa-play-circle" label="&#xf144" />
														<option value="fa fa-ticket" label="&#xf145" />
														<option value="fa fa-minus-square" label="&#xf146" />
														<option value="fa fa-minus-square-o" label="&#xf147" />
														<option value="fa fa-level-up" label="&#xf148" />
														<option value="fa fa-level-down" label="&#xf149" />
														<option value="fa fa-check-square" label="&#xf14a" />
														<option value="fa fa-pencil-square" label="&#xf14b" />
														<option value="fa fa-external-link-square" label="&#xf14c" />
														<option value="fa fa-share-square" label="&#xf14d" />
														<option value="fa fa-compass" label="&#xf14e" />
														<option value="fa fa-caret-square-o-down" label="&#xf150" />
														<option value="fa fa-caret-square-o-up" label="&#xf151" />
														<option value="fa fa-caret-square-o-right" label="&#xf152" />
														<option value="fa fa-eur" label="&#xf153" />
														<option value="fa fa-gbp" label="&#xf154" />
														<option value="fa fa-usd" label="&#xf155" />
														<option value="fa fa-inr" label="&#xf156" />
														<option value="fa fa-jpy" label="&#xf157" />
														<option value="fa fa-rub" label="&#xf158" />
														<option value="fa fa-krw" label="&#xf159" />
														<option value="fa fa-btc" label="&#xf15a" />
														<option value="fa fa-file" label="&#xf15b" />
														<option value="fa fa-file-text" label="&#xf15c" />
														<option value="fa fa-sort-alpha-asc" label="&#xf15d" />
														<option value="fa fa-sort-alpha-desc" label="&#xf15e" />
														<option value="fa fa-sort-amount-asc" label="&#xf160" />
														<option value="fa fa-sort-amount-desc" label="&#xf161" />
														<option value="fa fa-sort-numeric-asc" label="&#xf162" />
														<option value="fa fa-sort-numeric-desc" label="&#xf163" />
														<option value="fa fa-thumbs-up" label="&#xf164" />
														<option value="fa fa-thumbs-down" label="&#xf165" />
														<option value="fa fa-youtube-square" label="&#xf166" />
														<option value="fa fa-youtube" label="&#xf167" />
														<option value="fa fa-xing" label="&#xf168" />
														<option value="fa fa-xing-square" label="&#xf169" />
														<option value="fa fa-youtube-play" label="&#xf16a" />
														<option value="fa fa-dropbox" label="&#xf16b" />
														<option value="fa fa-stack-overflow" label="&#xf16c" />
														<option value="fa fa-instagram" label="&#xf16d" />
														<option value="fa fa-flickr" label="&#xf16e" />
														<option value="fa fa-adn" label="&#xf170" />
														<option value="fa fa-bitbucket" label="&#xf171" />
														<option value="fa fa-bitbucket-square" label="&#xf172" />
														<option value="fa fa-tumblr" label="&#xf173" />
														<option value="fa fa-tumblr-square" label="&#xf174" />
														<option value="fa fa-long-arrow-down" label="&#xf175" />
														<option value="fa fa-long-arrow-up" label="&#xf176" />
														<option value="fa fa-long-arrow-left" label="&#xf177" />
														<option value="fa fa-long-arrow-right" label="&#xf178" />
														<option value="fa fa-apple" label="&#xf179" />
														<option value="fa fa-windows" label="&#xf17a" />
														<option value="fa fa-android" label="&#xf17b" />
														<option value="fa fa-linux" label="&#xf17c" />
														<option value="fa fa-dribbble" label="&#xf17d" />
														<option value="fa fa-skype" label="&#xf17e" />
														<option value="fa fa-foursquare" label="&#xf180" />
														<option value="fa fa-trello" label="&#xf181" />
														<option value="fa fa-female" label="&#xf182" />
														<option value="fa fa-male" label="&#xf183" />
														<option value="fa fa-gratipay" label="&#xf184" />
														<option value="fa fa-sun-o" label="&#xf185" />
														<option value="fa fa-moon-o" label="&#xf186" />
														<option value="fa fa-archive" label="&#xf187" />
														<option value="fa fa-bug" label="&#xf188" />
														<option value="fa fa-vk" label="&#xf189" />
														<option value="fa fa-weibo" label="&#xf18a" />
														<option value="fa fa-renren" label="&#xf18b" />
														<option value="fa fa-pagelines" label="&#xf18c" />
														<option value="fa fa-stack-exchange" label="&#xf18d" />
														<option value="fa fa-arrow-circle-o-right" label="&#xf18e" />
														<option value="fa fa-arrow-circle-o-left" label="&#xf190" />
														<option value="fa fa-caret-square-o-left" label="&#xf191" />
														<option value="fa fa-dot-circle-o" label="&#xf192" />
														<option value="fa fa-wheelchair" label="&#xf193" />
														<option value="fa fa-vimeo-square" label="&#xf194" />
														<option value="fa fa-try" label="&#xf195" />
														<option value="fa fa-plus-square-o" label="&#xf196" />
														<option value="fa fa-space-shuttle" label="&#xf197" />
														<option value="fa fa-slack" label="&#xf198" />
														<option value="fa fa-envelope-square" label="&#xf199" />
														<option value="fa fa-wordpress" label="&#xf19a" />
														<option value="fa fa-openid" label="&#xf19b" />
														<option value="fa fa-university" label="&#xf19c" />
														<option value="fa fa-graduation-cap" label="&#xf19d" />
														<option value="fa fa-yahoo" label="&#xf19e" />
														<option value="fa fa-google" label="&#xf1a0" />
														<option value="fa fa-reddit" label="&#xf1a1" />
														<option value="fa fa-reddit-square" label="&#xf1a2" />
														<option value="fa fa-stumbleupon-circle" label="&#xf1a3" />
														<option value="fa fa-stumbleupon" label="&#xf1a4" />
														<option value="fa fa-delicious" label="&#xf1a5" />
														<option value="fa fa-digg" label="&#xf1a6" />
														<option value="fa fa-pied-piper" label="&#xf1a7" />
														<option value="fa fa-pied-piper-alt" label="&#xf1a8" />
														<option value="fa fa-drupal" label="&#xf1a9" />
														<option value="fa fa-joomla" label="&#xf1aa" />
														<option value="fa fa-language" label="&#xf1ab" />
														<option value="fa fa-fax" label="&#xf1ac" />
														<option value="fa fa-building" label="&#xf1ad" />
														<option value="fa fa-child" label="&#xf1ae" />
														<option value="fa fa-paw" label="&#xf1b0" />
														<option value="fa fa-spoon" label="&#xf1b1" />
														<option value="fa fa-cube" label="&#xf1b2" />
														<option value="fa fa-cubes" label="&#xf1b3" />
														<option value="fa fa-behance" label="&#xf1b4" />
														<option value="fa fa-behance-square" label="&#xf1b5" />
														<option value="fa fa-steam" label="&#xf1b6" />
														<option value="fa fa-steam-square" label="&#xf1b7" />
														<option value="fa fa-recycle" label="&#xf1b8" />
														<option value="fa fa-car" label="&#xf1b9" />
														<option value="fa fa-taxi" label="&#xf1ba" />
														<option value="fa fa-tree" label="&#xf1bb" />
														<option value="fa fa-spotify" label="&#xf1bc" />
														<option value="fa fa-deviantart" label="&#xf1bd" />
														<option value="fa fa-soundcloud" label="&#xf1be" />
														<option value="fa fa-database" label="&#xf1c0" />
														<option value="fa fa-file-pdf-o" label="&#xf1c1" />
														<option value="fa fa-file-word-o" label="&#xf1c2" />
														<option value="fa fa-file-excel-o" label="&#xf1c3" />
														<option value="fa fa-file-powerpoint-o" label="&#xf1c4" />
														<option value="fa fa-file-image-o" label="&#xf1c5" />
														<option value="fa fa-file-archive-o" label="&#xf1c6" />
														<option value="fa fa-file-audio-o" label="&#xf1c7" />
														<option value="fa fa-file-video-o" label="&#xf1c8" />
														<option value="fa fa-file-code-o" label="&#xf1c9" />
														<option value="fa fa-vine" label="&#xf1ca" />
														<option value="fa fa-codepen" label="&#xf1cb" />
														<option value="fa fa-jsfiddle" label="&#xf1cc" />
														<option value="fa fa-life-ring" label="&#xf1cd" />
														<option value="fa fa-circle-o-notch" label="&#xf1ce" />
														<option value="fa fa-rebel" label="&#xf1d0" />
														<option value="fa fa-empire" label="&#xf1d1" />
														<option value="fa fa-git-square" label="&#xf1d2" />
														<option value="fa fa-git" label="&#xf1d3" />
														<option value="fa fa-hacker-news" label="&#xf1d4" />
														<option value="fa fa-tencent-weibo" label="&#xf1d5" />
														<option value="fa fa-qq" label="&#xf1d6" />
														<option value="fa fa-weixin" label="&#xf1d7" />
														<option value="fa fa-paper-plane" label="&#xf1d8" />
														<option value="fa fa-paper-plane-o" label="&#xf1d9" />
														<option value="fa fa-history" label="&#xf1da" />
														<option value="fa fa-circle-thin" label="&#xf1db" />
														<option value="fa fa-header" label="&#xf1dc" />
														<option value="fa fa-paragraph" label="&#xf1dd" />
														<option value="fa fa-sliders" label="&#xf1de" />
														<option value="fa fa-share-alt" label="&#xf1e0" />
														<option value="fa fa-share-alt-square" label="&#xf1e1" />
														<option value="fa fa-bomb" label="&#xf1e2" />
														<option value="fa fa-futbol-o" label="&#xf1e3" />
														<option value="fa fa-tty" label="&#xf1e4" />
														<option value="fa fa-binoculars" label="&#xf1e5" />
														<option value="fa fa-plug" label="&#xf1e6" />
														<option value="fa fa-slideshare" label="&#xf1e7" />
														<option value="fa fa-twitch" label="&#xf1e8" />
														<option value="fa fa-yelp" label="&#xf1e9" />
														<option value="fa fa-newspaper-o" label="&#xf1ea" />
														<option value="fa fa-wifi" label="&#xf1eb" />
														<option value="fa fa-calculator" label="&#xf1ec" />
														<option value="fa fa-paypal" label="&#xf1ed" />
														<option value="fa fa-google-wallet" label="&#xf1ee" />
														<option value="fa fa-cc-visa" label="&#xf1f0" />
														<option value="fa fa-cc-mastercard" label="&#xf1f1" />
														<option value="fa fa-cc-discover" label="&#xf1f2" />
														<option value="fa fa-cc-amex" label="&#xf1f3" />
														<option value="fa fa-cc-paypal" label="&#xf1f4" />
														<option value="fa fa-cc-stripe" label="&#xf1f5" />
														<option value="fa fa-bell-slash" label="&#xf1f6" />
														<option value="fa fa-bell-slash-o" label="&#xf1f7" />
														<option value="fa fa-trash" label="&#xf1f8" />
														<option value="fa fa-copyright" label="&#xf1f9" />
														<option value="fa fa-at" label="&#xf1fa" />
														<option value="fa fa-eyedropper" label="&#xf1fb" />
														<option value="fa fa-paint-brush" label="&#xf1fc" />
														<option value="fa fa-birthday-cake" label="&#xf1fd" />
														<option value="fa fa-area-chart" label="&#xf1fe" />
														<option value="fa fa-pie-chart" label="&#xf200" />
														<option value="fa fa-line-chart" label="&#xf201" />
														<option value="fa fa-lastfm" label="&#xf202" />
														<option value="fa fa-lastfm-square" label="&#xf203" />
														<option value="fa fa-toggle-off" label="&#xf204" />
														<option value="fa fa-toggle-on" label="&#xf205" />
														<option value="fa fa-bicycle" label="&#xf206" />
														<option value="fa fa-bus" label="&#xf207" />
														<option value="fa fa-ioxhost" label="&#xf208" />
														<option value="fa fa-angellist" label="&#xf209" />
														<option value="fa fa-cc" label="&#xf20a" />
														<option value="fa fa-ils" label="&#xf20b" />
														<option value="fa fa-meanpath" label="&#xf20c" />
														<option value="fa fa-buysellads" label="&#xf20d" />
														<option value="fa fa-connectdevelop" label="&#xf20e" />
														<option value="fa fa-dashcube" label="&#xf210" />
														<option value="fa fa-forumbee" label="&#xf211" />
														<option value="fa fa-leanpub" label="&#xf212" />
														<option value="fa fa-sellsy" label="&#xf213" />
														<option value="fa fa-shirtsinbulk" label="&#xf214" />
														<option value="fa fa-simplybuilt" label="&#xf215" />
														<option value="fa fa-skyatlas" label="&#xf216" />
														<option value="fa fa-cart-plus" label="&#xf217" />
														<option value="fa fa-cart-arrow-down" label="&#xf218" />
														<option value="fa fa-diamond" label="&#xf219" />
														<option value="fa fa-ship" label="&#xf21a" />
														<option value="fa fa-user-secret" label="&#xf21b" />
														<option value="fa fa-motorcycle" label="&#xf21c" />
														<option value="fa fa-street-view" label="&#xf21d" />
														<option value="fa fa-heartbeat" label="&#xf21e" />
														<option value="fa fa-venus" label="&#xf221" />
														<option value="fa fa-mars" label="&#xf222" />
														<option value="fa fa-mercury" label="&#xf223" />
														<option value="fa fa-transgender" label="&#xf224" />
														<option value="fa fa-transgender-alt" label="&#xf225" />
														<option value="fa fa-venus-double" label="&#xf226" />
														<option value="fa fa-mars-double" label="&#xf227" />
														<option value="fa fa-venus-mars" label="&#xf228" />
														<option value="fa fa-mars-stroke" label="&#xf229" />
														<option value="fa fa-mars-stroke-v" label="&#xf22a" />
														<option value="fa fa-mars-stroke-h" label="&#xf22b" />
														<option value="fa fa-neuter" label="&#xf22c" />
														<option value="fa fa-facebook-official" label="&#xf230" />
														<option value="fa fa-pinterest-p" label="&#xf231" />
														<option value="fa fa-whatsapp" label="&#xf232" />
														<option value="fa fa-server" label="&#xf233" />
														<option value="fa fa-user-plus" label="&#xf234" />
														<option value="fa fa-user-times" label="&#xf235" />
														<option value="fa fa-bed" label="&#xf236" />
														<option value="fa fa-viacoin" label="&#xf237" />
														<option value="fa fa-train" label="&#xf238" />
														<option value="fa fa-subway" label="&#xf239" />
														<option value="fa fa-medium" label="&#xf23a" />
													</select>

												</div>
											</div>
											<div class="form-group">

												<label for="inputEmail3" class="col-md-3 control-label">h5-Label-1</label>
												<div class="col-md-9">
													<input id="h5label1" name="h5label1" type="text"
														value="${basics.h5Label1}" placeholder="Label"
														class="form-control">
												</div>
											</div>

											<div class="form-group">

												<label for="inputEmail3" class="col-md-3 control-label">h5-Label-description</label>
												<div class="col-md-9">
													<input id="h5Description1" name="h5Description1"
														type="text" value="${basics.h5Label5}"
														placeholder="S2-Label-4" class="form-control">
												</div>
											</div>

											<div class="form-group">

												<label for="inputEmail3" class="col-md-3 control-label">h5-icon-2</label>
												<div class="col-md-9">
													<select class="fa-select" name="h5icon2" id="h5icon2">
														<option label="Select icon " />
														<option value="fa fa-glass" label="&#xf000" />
														<option value="fa fa-music" label="&#xf001" />
														<option value="fa fa-search" label="&#xf002" />
														<option value="fa fa-envelope-o" label="&#xf003" />
														<option value="fa fa-heart" label="&#xf004" />
														<option value="fa fa-star" label="&#xf005" />
														<option value="fa fa-star-o" label="&#xf006" />
														<option value="fa fa-user" label="&#xf007" />
														<option value="fa fa-film" label="&#xf008" />
														<option value="fa fa-th-large" label="&#xf009" />
														<option value="fa fa-th" label="&#xf00a" />
														<option value="fa fa-th-list" label="&#xf00b" />
														<option value="fa fa-check" label="&#xf00c" />
														<option value="fa fa-times" label="&#xf00d" />
														<option value="fa fa-search-plus" label="&#xf00e" />
														<option value="fa fa-search-minus" label="&#xf010" />
														<option value="fa fa-power-off" label="&#xf011" />
														<option value="fa fa-signal" label="&#xf012" />
														<option value="fa fa-cog" label="&#xf013" />
														<option value="fa fa-trash-o" label="&#xf014" />
														<option value="fa fa-home" label="&#xf015" />
														<option value="fa fa-file-o" label="&#xf016" />
														<option value="fa fa-clock-o" label="&#xf017" />
														<option value="fa fa-road" label="&#xf018" />
														<option value="fa fa-download" label="&#xf019" />
														<option value="fa fa-arrow-circle-o-down" label="&#xf01a" />
														<option value="fa fa-arrow-circle-o-up" label="&#xf01b" />
														<option value="fa fa-inbox" label="&#xf01c" />
														<option value="fa fa-play-circle-o" label="&#xf01d" />
														<option value="fa fa-repeat" label="&#xf01e" />
														<option value="fa fa-refresh" label="&#xf021" />
														<option value="fa fa-list-alt" label="&#xf022" />
														<option value="fa fa-lock" label="&#xf023" />
														<option value="fa fa-flag" label="&#xf024" />
														<option value="fa fa-headphones" label="&#xf025" />
														<option value="fa fa-volume-off" label="&#xf026" />
														<option value="fa fa-volume-down" label="&#xf027" />
														<option value="fa fa-volume-up" label="&#xf028" />
														<option value="fa fa-qrcode" label="&#xf029" />
														<option value="fa fa-barcode" label="&#xf02a" />
														<option value="fa fa-tag" label="&#xf02b" />
														<option value="fa fa-tags" label="&#xf02c" />
														<option value="fa fa-book" label="&#xf02d" />
														<option value="fa fa-bookmark" label="&#xf02e" />
														<option value="fa fa-print" label="&#xf02f" />
														<option value="fa fa-camera" label="&#xf030" />
														<option value="fa fa-font" label="&#xf031" />
														<option value="fa fa-bold" label="&#xf032" />
														<option value="fa fa-italic" label="&#xf033" />
														<option value="fa fa-text-height" label="&#xf034" />
														<option value="fa fa-text-width" label="&#xf035" />
														<option value="fa fa-align-left" label="&#xf036" />
														<option value="fa fa-align-center" label="&#xf037" />
														<option value="fa fa-align-right" label="&#xf038" />
														<option value="fa fa-align-justify" label="&#xf039" />
														<option value="fa fa-list" label="&#xf03a" />
														<option value="fa fa-outdent" label="&#xf03b" />
														<option value="fa fa-indent" label="&#xf03c" />
														<option value="fa fa-video-camera" label="&#xf03d" />
														<option value="fa fa-picture-o" label="&#xf03e" />
														<option value="fa fa-pencil" label="&#xf040" />
														<option value="fa fa-map-marker" label="&#xf041" />
														<option value="fa fa-adjust" label="&#xf042" />
														<option value="fa fa-tint" label="&#xf043" />
														<option value="fa fa-pencil-square-o" label="&#xf044" />
														<option value="fa fa-share-square-o" label="&#xf045" />
														<option value="fa fa-check-square-o" label="&#xf046" />
														<option value="fa fa-arrows" label="&#xf047" />
														<option value="fa fa-step-backward" label="&#xf048" />
														<option value="fa fa-fast-backward" label="&#xf049" />
														<option value="fa fa-backward" label="&#xf04a" />
														<option value="fa fa-play" label="&#xf04b" />
														<option value="fa fa-pause" label="&#xf04c" />
														<option value="fa fa-stop" label="&#xf04d" />
														<option value="fa fa-forward" label="&#xf04e" />
														<option value="fa fa-fast-forward" label="&#xf050" />
														<option value="fa fa-step-forward" label="&#xf051" />
														<option value="fa fa-eject" label="&#xf052" />
														<option value="fa fa-chevron-left" label="&#xf053" />
														<option value="fa fa-chevron-right" label="&#xf054" />
														<option value="fa fa-plus-circle" label="&#xf055" />
														<option value="fa fa-minus-circle" label="&#xf056" />
														<option value="fa fa-times-circle" label="&#xf057" />
														<option value="fa fa-check-circle" label="&#xf058" />
														<option value="fa fa-question-circle" label="&#xf059" />
														<option value="fa fa-info-circle" label="&#xf05a" />
														<option value="fa fa-crosshairs" label="&#xf05b" />
														<option value="fa fa-times-circle-o" label="&#xf05c" />
														<option value="fa fa-check-circle-o" label="&#xf05d" />
														<option value="fa fa-ban" label="&#xf05e" />
														<option value="fa fa-arrow-left" label="&#xf060" />
														<option value="fa fa-arrow-right" label="&#xf061" />
														<option value="fa fa-arrow-up" label="&#xf062" />
														<option value="fa fa-arrow-down" label="&#xf063" />
														<option value="fa fa-share" label="&#xf064" />
														<option value="fa fa-expand" label="&#xf065" />
														<option value="fa fa-compress" label="&#xf066" />
														<option value="fa fa-plus" label="&#xf067" />
														<option value="fa fa-minus" label="&#xf068" />
														<option value="fa fa-asterisk" label="&#xf069" />
														<option value="fa fa-exclamation-circle" label="&#xf06a" />
														<option value="fa fa-gift" label="&#xf06b" />
														<option value="fa fa-leaf" label="&#xf06c" />
														<option value="fa fa-fire" label="&#xf06d" />
														<option value="fa fa-eye" label="&#xf06e" />
														<option value="fa fa-eye-slash" label="&#xf070" />
														<option value="fa fa-exclamation-triangle" label="&#xf071" />
														<option value="fa fa-plane" label="&#xf072" />
														<option value="fa fa-calendar" label="&#xf073" />
														<option value="fa fa-random" label="&#xf074" />
														<option value="fa fa-comment" label="&#xf075" />
														<option value="fa fa-magnet" label="&#xf076" />
														<option value="fa fa-chevron-up" label="&#xf077" />
														<option value="fa fa-chevron-down" label="&#xf078" />
														<option value="fa fa-retweet" label="&#xf079" />
														<option value="fa fa-shopping-cart" label="&#xf07a" />
														<option value="fa fa-folder" label="&#xf07b" />
														<option value="fa fa-folder-open" label="&#xf07c" />
														<option value="fa fa-arrows-v" label="&#xf07d" />
														<option value="fa fa-arrows-h" label="&#xf07e" />
														<option value="fa fa-bar-chart" label="&#xf080" />
														<option value="fa fa-twitter-square" label="&#xf081" />
														<option value="fa fa-facebook-square" label="&#xf082" />
														<option value="fa fa-camera-retro" label="&#xf083" />
														<option value="fa fa-key" label="&#xf084" />
														<option value="fa fa-cogs" label="&#xf085" />
														<option value="fa fa-comments" label="&#xf086" />
														<option value="fa fa-thumbs-o-up" label="&#xf087" />
														<option value="fa fa-thumbs-o-down" label="&#xf088" />
														<option value="fa fa-star-half" label="&#xf089" />
														<option value="fa fa-heart-o" label="&#xf08a" />
														<option value="fa fa-sign-out" label="&#xf08b" />
														<option value="fa fa-linkedin-square" label="&#xf08c" />
														<option value="fa fa-thumb-tack" label="&#xf08d" />
														<option value="fa fa-external-link" label="&#xf08e" />
														<option value="fa fa-sign-in" label="&#xf090" />
														<option value="fa fa-trophy" label="&#xf091" />
														<option value="fa fa-github-square" label="&#xf092" />
														<option value="fa fa-upload" label="&#xf093" />
														<option value="fa fa-lemon-o" label="&#xf094" />
														<option value="fa fa-phone" label="&#xf095" />
														<option value="fa fa-square-o" label="&#xf096" />
														<option value="fa fa-bookmark-o" label="&#xf097" />
														<option value="fa fa-phone-square" label="&#xf098" />
														<option value="fa fa-twitter" label="&#xf099" />
														<option value="fa fa-facebook" label="&#xf09a" />
														<option value="fa fa-github" label="&#xf09b" />
														<option value="fa fa-unlock" label="&#xf09c" />
														<option value="fa fa-credit-card" label="&#xf09d" />
														<option value="fa fa-rss" label="&#xf09e" />
														<option value="fa fa-hdd-o" label="&#xf0a0" />
														<option value="fa fa-bullhorn" label="&#xf0a1" />
														<option value="fa fa-bell" label="&#xf0f3" />
														<option value="fa fa-certificate" label="&#xf0a3" />
														<option value="fa fa-hand-o-right" label="&#xf0a4" />
														<option value="fa fa-hand-o-left" label="&#xf0a5" />
														<option value="fa fa-hand-o-up" label="&#xf0a6" />
														<option value="fa fa-hand-o-down" label="&#xf0a7" />
														<option value="fa fa-arrow-circle-left" label="&#xf0a8" />
														<option value="fa fa-arrow-circle-right" label="&#xf0a9" />
														<option value="fa fa-arrow-circle-up" label="&#xf0aa" />
														<option value="fa fa-arrow-circle-down" label="&#xf0ab" />
														<option value="fa fa-globe" label="&#xf0ac" />
														<option value="fa fa-wrench" label="&#xf0ad" />
														<option value="fa fa-tasks" label="&#xf0ae" />
														<option value="fa fa-filter" label="&#xf0b0" />
														<option value="fa fa-briefcase" label="&#xf0b1" />
														<option value="fa fa-arrows-alt" label="&#xf0b2" />
														<option value="fa fa-users" label="&#xf0c0" />
														<option value="fa fa-link" label="&#xf0c1" />
														<option value="fa fa-cloud" label="&#xf0c2" />
														<option value="fa fa-flask" label="&#xf0c3" />
														<option value="fa fa-scissors" label="&#xf0c4" />
														<option value="fa fa-files-o" label="&#xf0c5" />
														<option value="fa fa-paperclip" label="&#xf0c6" />
														<option value="fa fa-floppy-o" label="&#xf0c7" />
														<option value="fa fa-square" label="&#xf0c8" />
														<option value="fa fa-bars" label="&#xf0c9" />
														<option value="fa fa-list-ul" label="&#xf0ca" />
														<option value="fa fa-list-ol" label="&#xf0cb" />
														<option value="fa fa-strikethrough" label="&#xf0cc" />
														<option value="fa fa-underline" label="&#xf0cd" />
														<option value="fa fa-table" label="&#xf0ce" />
														<option value="fa fa-magic" label="&#xf0d0" />
														<option value="fa fa-truck" label="&#xf0d1" />
														<option value="fa fa-pinterest" label="&#xf0d2" />
														<option value="fa fa-pinterest-square" label="&#xf0d3" />
														<option value="fa fa-google-plus-square" label="&#xf0d4" />
														<option value="fa fa-google-plus" label="&#xf0d5" />
														<option value="fa fa-money" label="&#xf0d6" />
														<option value="fa fa-caret-down" label="&#xf0d7" />
														<option value="fa fa-caret-up" label="&#xf0d8" />
														<option value="fa fa-caret-left" label="&#xf0d9" />
														<option value="fa fa-caret-right" label="&#xf0da" />
														<option value="fa fa-columns" label="&#xf0db" />
														<option value="fa fa-sort" label="&#xf0dc" />
														<option value="fa fa-sort-desc" label="&#xf0dd" />
														<option value="fa fa-sort-asc" label="&#xf0de" />
														<option value="fa fa-envelope" label="&#xf0e0" />
														<option value="fa fa-linkedin" label="&#xf0e1" />
														<option value="fa fa-undo" label="&#xf0e2" />
														<option value="fa fa-gavel" label="&#xf0e3" />
														<option value="fa fa-tachometer" label="&#xf0e4" />
														<option value="fa fa-comment-o" label="&#xf0e5" />
														<option value="fa fa-comments-o" label="&#xf0e6" />
														<option value="fa fa-bolt" label="&#xf0e7" />
														<option value="fa fa-sitemap" label="&#xf0e8" />
														<option value="fa fa-umbrella" label="&#xf0e9" />
														<option value="fa fa-clipboard" label="&#xf0ea" />
														<option value="fa fa-lightbulb-o" label="&#xf0eb" />
														<option value="fa fa-exchange" label="&#xf0ec" />
														<option value="fa fa-cloud-download" label="&#xf0ed" />
														<option value="fa fa-cloud-upload" label="&#xf0ee" />
														<option value="fa fa-user-md" label="&#xf0f0" />
														<option value="fa fa-stethoscope" label="&#xf0f1" />
														<option value="fa fa-suitcase" label="&#xf0f2" />
														<option value="fa fa-bell-o" label="&#xf0a2" />
														<option value="fa fa-coffee" label="&#xf0f4" />
														<option value="fa fa-cutlery" label="&#xf0f5" />
														<option value="fa fa-file-text-o" label="&#xf0f6" />
														<option value="fa fa-building-o" label="&#xf0f7" />
														<option value="fa fa-hospital-o" label="&#xf0f8" />
														<option value="fa fa-ambulance" label="&#xf0f9" />
														<option value="fa fa-medkit" label="&#xf0fa" />
														<option value="fa fa-fighter-jet" label="&#xf0fb" />
														<option value="fa fa-beer" label="&#xf0fc" />
														<option value="fa fa-h-square" label="&#xf0fd" />
														<option value="fa fa-plus-square" label="&#xf0fe" />
														<option value="fa fa-angle-double-left" label="&#xf100" />
														<option value="fa fa-angle-double-right" label="&#xf101" />
														<option value="fa fa-angle-double-up" label="&#xf102" />
														<option value="fa fa-angle-double-down" label="&#xf103" />
														<option value="fa fa-angle-left" label="&#xf104" />
														<option value="fa fa-angle-right" label="&#xf105" />
														<option value="fa fa-angle-up" label="&#xf106" />
														<option value="fa fa-angle-down" label="&#xf107" />
														<option value="fa fa-desktop" label="&#xf108" />
														<option value="fa fa-laptop" label="&#xf109" />
														<option value="fa fa-tablet" label="&#xf10a" />
														<option value="fa fa-mobile" label="&#xf10b" />
														<option value="fa fa-circle-o" label="&#xf10c" />
														<option value="fa fa-quote-left" label="&#xf10d" />
														<option value="fa fa-quote-right" label="&#xf10e" />
														<option value="fa fa-spinner" label="&#xf110" />
														<option value="fa fa-circle" label="&#xf111" />
														<option value="fa fa-reply" label="&#xf112" />
														<option value="fa fa-github-alt" label="&#xf113" />
														<option value="fa fa-folder-o" label="&#xf114" />
														<option value="fa fa-folder-open-o" label="&#xf115" />
														<option value="fa fa-smile-o" label="&#xf118" />
														<option value="fa fa-frown-o" label="&#xf119" />
														<option value="fa fa-meh-o" label="&#xf11a" />
														<option value="fa fa-gamepad" label="&#xf11b" />
														<option value="fa fa-keyboard-o" label="&#xf11c" />
														<option value="fa fa-flag-o" label="&#xf11d" />
														<option value="fa fa-flag-checkered" label="&#xf11e" />
														<option value="fa fa-terminal" label="&#xf120" />
														<option value="fa fa-code" label="&#xf121" />
														<option value="fa fa-reply-all" label="&#xf122" />
														<option value="fa fa-star-half-o" label="&#xf123" />
														<option value="fa fa-location-arrow" label="&#xf124" />
														<option value="fa fa-crop" label="&#xf125" />
														<option value="fa fa-code-fork" label="&#xf126" />
														<option value="fa fa-chain-broken" label="&#xf127" />
														<option value="fa fa-question" label="&#xf128" />
														<option value="fa fa-info" label="&#xf129" />
														<option value="fa fa-exclamation" label="&#xf12a" />
														<option value="fa fa-superscript" label="&#xf12b" />
														<option value="fa fa-subscript" label="&#xf12c" />
														<option value="fa fa-eraser" label="&#xf12d" />
														<option value="fa fa-puzzle-piece" label="&#xf12e" />
														<option value="fa fa-microphone" label="&#xf130" />
														<option value="fa fa-microphone-slash" label="&#xf131" />
														<option value="fa fa-shield" label="&#xf132" />
														<option value="fa fa-calendar-o" label="&#xf133" />
														<option value="fa fa-fire-extinguisher" label="&#xf134" />
														<option value="fa fa-rocket" label="&#xf135" />
														<option value="fa fa-maxcdn" label="&#xf136" />
														<option value="fa fa-chevron-circle-left" label="&#xf137" />
														<option value="fa fa-chevron-circle-right" label="&#xf138" />
														<option value="fa fa-chevron-circle-up" label="&#xf139" />
														<option value="fa fa-chevron-circle-down" label="&#xf13a" />
														<option value="fa fa-html5" label="&#xf13b" />
														<option value="fa fa-css3" label="&#xf13c" />
														<option value="fa fa-anchor" label="&#xf13d" />
														<option value="fa fa-unlock-alt" label="&#xf13e" />
														<option value="fa fa-bullseye" label="&#xf140" />
														<option value="fa fa-ellipsis-h" label="&#xf141" />
														<option value="fa fa-ellipsis-v" label="&#xf142" />
														<option value="fa fa-rss-square" label="&#xf143" />
														<option value="fa fa-play-circle" label="&#xf144" />
														<option value="fa fa-ticket" label="&#xf145" />
														<option value="fa fa-minus-square" label="&#xf146" />
														<option value="fa fa-minus-square-o" label="&#xf147" />
														<option value="fa fa-level-up" label="&#xf148" />
														<option value="fa fa-level-down" label="&#xf149" />
														<option value="fa fa-check-square" label="&#xf14a" />
														<option value="fa fa-pencil-square" label="&#xf14b" />
														<option value="fa fa-external-link-square" label="&#xf14c" />
														<option value="fa fa-share-square" label="&#xf14d" />
														<option value="fa fa-compass" label="&#xf14e" />
														<option value="fa fa-caret-square-o-down" label="&#xf150" />
														<option value="fa fa-caret-square-o-up" label="&#xf151" />
														<option value="fa fa-caret-square-o-right" label="&#xf152" />
														<option value="fa fa-eur" label="&#xf153" />
														<option value="fa fa-gbp" label="&#xf154" />
														<option value="fa fa-usd" label="&#xf155" />
														<option value="fa fa-inr" label="&#xf156" />
														<option value="fa fa-jpy" label="&#xf157" />
														<option value="fa fa-rub" label="&#xf158" />
														<option value="fa fa-krw" label="&#xf159" />
														<option value="fa fa-btc" label="&#xf15a" />
														<option value="fa fa-file" label="&#xf15b" />
														<option value="fa fa-file-text" label="&#xf15c" />
														<option value="fa fa-sort-alpha-asc" label="&#xf15d" />
														<option value="fa fa-sort-alpha-desc" label="&#xf15e" />
														<option value="fa fa-sort-amount-asc" label="&#xf160" />
														<option value="fa fa-sort-amount-desc" label="&#xf161" />
														<option value="fa fa-sort-numeric-asc" label="&#xf162" />
														<option value="fa fa-sort-numeric-desc" label="&#xf163" />
														<option value="fa fa-thumbs-up" label="&#xf164" />
														<option value="fa fa-thumbs-down" label="&#xf165" />
														<option value="fa fa-youtube-square" label="&#xf166" />
														<option value="fa fa-youtube" label="&#xf167" />
														<option value="fa fa-xing" label="&#xf168" />
														<option value="fa fa-xing-square" label="&#xf169" />
														<option value="fa fa-youtube-play" label="&#xf16a" />
														<option value="fa fa-dropbox" label="&#xf16b" />
														<option value="fa fa-stack-overflow" label="&#xf16c" />
														<option value="fa fa-instagram" label="&#xf16d" />
														<option value="fa fa-flickr" label="&#xf16e" />
														<option value="fa fa-adn" label="&#xf170" />
														<option value="fa fa-bitbucket" label="&#xf171" />
														<option value="fa fa-bitbucket-square" label="&#xf172" />
														<option value="fa fa-tumblr" label="&#xf173" />
														<option value="fa fa-tumblr-square" label="&#xf174" />
														<option value="fa fa-long-arrow-down" label="&#xf175" />
														<option value="fa fa-long-arrow-up" label="&#xf176" />
														<option value="fa fa-long-arrow-left" label="&#xf177" />
														<option value="fa fa-long-arrow-right" label="&#xf178" />
														<option value="fa fa-apple" label="&#xf179" />
														<option value="fa fa-windows" label="&#xf17a" />
														<option value="fa fa-android" label="&#xf17b" />
														<option value="fa fa-linux" label="&#xf17c" />
														<option value="fa fa-dribbble" label="&#xf17d" />
														<option value="fa fa-skype" label="&#xf17e" />
														<option value="fa fa-foursquare" label="&#xf180" />
														<option value="fa fa-trello" label="&#xf181" />
														<option value="fa fa-female" label="&#xf182" />
														<option value="fa fa-male" label="&#xf183" />
														<option value="fa fa-gratipay" label="&#xf184" />
														<option value="fa fa-sun-o" label="&#xf185" />
														<option value="fa fa-moon-o" label="&#xf186" />
														<option value="fa fa-archive" label="&#xf187" />
														<option value="fa fa-bug" label="&#xf188" />
														<option value="fa fa-vk" label="&#xf189" />
														<option value="fa fa-weibo" label="&#xf18a" />
														<option value="fa fa-renren" label="&#xf18b" />
														<option value="fa fa-pagelines" label="&#xf18c" />
														<option value="fa fa-stack-exchange" label="&#xf18d" />
														<option value="fa fa-arrow-circle-o-right" label="&#xf18e" />
														<option value="fa fa-arrow-circle-o-left" label="&#xf190" />
														<option value="fa fa-caret-square-o-left" label="&#xf191" />
														<option value="fa fa-dot-circle-o" label="&#xf192" />
														<option value="fa fa-wheelchair" label="&#xf193" />
														<option value="fa fa-vimeo-square" label="&#xf194" />
														<option value="fa fa-try" label="&#xf195" />
														<option value="fa fa-plus-square-o" label="&#xf196" />
														<option value="fa fa-space-shuttle" label="&#xf197" />
														<option value="fa fa-slack" label="&#xf198" />
														<option value="fa fa-envelope-square" label="&#xf199" />
														<option value="fa fa-wordpress" label="&#xf19a" />
														<option value="fa fa-openid" label="&#xf19b" />
														<option value="fa fa-university" label="&#xf19c" />
														<option value="fa fa-graduation-cap" label="&#xf19d" />
														<option value="fa fa-yahoo" label="&#xf19e" />
														<option value="fa fa-google" label="&#xf1a0" />
														<option value="fa fa-reddit" label="&#xf1a1" />
														<option value="fa fa-reddit-square" label="&#xf1a2" />
														<option value="fa fa-stumbleupon-circle" label="&#xf1a3" />
														<option value="fa fa-stumbleupon" label="&#xf1a4" />
														<option value="fa fa-delicious" label="&#xf1a5" />
														<option value="fa fa-digg" label="&#xf1a6" />
														<option value="fa fa-pied-piper" label="&#xf1a7" />
														<option value="fa fa-pied-piper-alt" label="&#xf1a8" />
														<option value="fa fa-drupal" label="&#xf1a9" />
														<option value="fa fa-joomla" label="&#xf1aa" />
														<option value="fa fa-language" label="&#xf1ab" />
														<option value="fa fa-fax" label="&#xf1ac" />
														<option value="fa fa-building" label="&#xf1ad" />
														<option value="fa fa-child" label="&#xf1ae" />
														<option value="fa fa-paw" label="&#xf1b0" />
														<option value="fa fa-spoon" label="&#xf1b1" />
														<option value="fa fa-cube" label="&#xf1b2" />
														<option value="fa fa-cubes" label="&#xf1b3" />
														<option value="fa fa-behance" label="&#xf1b4" />
														<option value="fa fa-behance-square" label="&#xf1b5" />
														<option value="fa fa-steam" label="&#xf1b6" />
														<option value="fa fa-steam-square" label="&#xf1b7" />
														<option value="fa fa-recycle" label="&#xf1b8" />
														<option value="fa fa-car" label="&#xf1b9" />
														<option value="fa fa-taxi" label="&#xf1ba" />
														<option value="fa fa-tree" label="&#xf1bb" />
														<option value="fa fa-spotify" label="&#xf1bc" />
														<option value="fa fa-deviantart" label="&#xf1bd" />
														<option value="fa fa-soundcloud" label="&#xf1be" />
														<option value="fa fa-database" label="&#xf1c0" />
														<option value="fa fa-file-pdf-o" label="&#xf1c1" />
														<option value="fa fa-file-word-o" label="&#xf1c2" />
														<option value="fa fa-file-excel-o" label="&#xf1c3" />
														<option value="fa fa-file-powerpoint-o" label="&#xf1c4" />
														<option value="fa fa-file-image-o" label="&#xf1c5" />
														<option value="fa fa-file-archive-o" label="&#xf1c6" />
														<option value="fa fa-file-audio-o" label="&#xf1c7" />
														<option value="fa fa-file-video-o" label="&#xf1c8" />
														<option value="fa fa-file-code-o" label="&#xf1c9" />
														<option value="fa fa-vine" label="&#xf1ca" />
														<option value="fa fa-codepen" label="&#xf1cb" />
														<option value="fa fa-jsfiddle" label="&#xf1cc" />
														<option value="fa fa-life-ring" label="&#xf1cd" />
														<option value="fa fa-circle-o-notch" label="&#xf1ce" />
														<option value="fa fa-rebel" label="&#xf1d0" />
														<option value="fa fa-empire" label="&#xf1d1" />
														<option value="fa fa-git-square" label="&#xf1d2" />
														<option value="fa fa-git" label="&#xf1d3" />
														<option value="fa fa-hacker-news" label="&#xf1d4" />
														<option value="fa fa-tencent-weibo" label="&#xf1d5" />
														<option value="fa fa-qq" label="&#xf1d6" />
														<option value="fa fa-weixin" label="&#xf1d7" />
														<option value="fa fa-paper-plane" label="&#xf1d8" />
														<option value="fa fa-paper-plane-o" label="&#xf1d9" />
														<option value="fa fa-history" label="&#xf1da" />
														<option value="fa fa-circle-thin" label="&#xf1db" />
														<option value="fa fa-header" label="&#xf1dc" />
														<option value="fa fa-paragraph" label="&#xf1dd" />
														<option value="fa fa-sliders" label="&#xf1de" />
														<option value="fa fa-share-alt" label="&#xf1e0" />
														<option value="fa fa-share-alt-square" label="&#xf1e1" />
														<option value="fa fa-bomb" label="&#xf1e2" />
														<option value="fa fa-futbol-o" label="&#xf1e3" />
														<option value="fa fa-tty" label="&#xf1e4" />
														<option value="fa fa-binoculars" label="&#xf1e5" />
														<option value="fa fa-plug" label="&#xf1e6" />
														<option value="fa fa-slideshare" label="&#xf1e7" />
														<option value="fa fa-twitch" label="&#xf1e8" />
														<option value="fa fa-yelp" label="&#xf1e9" />
														<option value="fa fa-newspaper-o" label="&#xf1ea" />
														<option value="fa fa-wifi" label="&#xf1eb" />
														<option value="fa fa-calculator" label="&#xf1ec" />
														<option value="fa fa-paypal" label="&#xf1ed" />
														<option value="fa fa-google-wallet" label="&#xf1ee" />
														<option value="fa fa-cc-visa" label="&#xf1f0" />
														<option value="fa fa-cc-mastercard" label="&#xf1f1" />
														<option value="fa fa-cc-discover" label="&#xf1f2" />
														<option value="fa fa-cc-amex" label="&#xf1f3" />
														<option value="fa fa-cc-paypal" label="&#xf1f4" />
														<option value="fa fa-cc-stripe" label="&#xf1f5" />
														<option value="fa fa-bell-slash" label="&#xf1f6" />
														<option value="fa fa-bell-slash-o" label="&#xf1f7" />
														<option value="fa fa-trash" label="&#xf1f8" />
														<option value="fa fa-copyright" label="&#xf1f9" />
														<option value="fa fa-at" label="&#xf1fa" />
														<option value="fa fa-eyedropper" label="&#xf1fb" />
														<option value="fa fa-paint-brush" label="&#xf1fc" />
														<option value="fa fa-birthday-cake" label="&#xf1fd" />
														<option value="fa fa-area-chart" label="&#xf1fe" />
														<option value="fa fa-pie-chart" label="&#xf200" />
														<option value="fa fa-line-chart" label="&#xf201" />
														<option value="fa fa-lastfm" label="&#xf202" />
														<option value="fa fa-lastfm-square" label="&#xf203" />
														<option value="fa fa-toggle-off" label="&#xf204" />
														<option value="fa fa-toggle-on" label="&#xf205" />
														<option value="fa fa-bicycle" label="&#xf206" />
														<option value="fa fa-bus" label="&#xf207" />
														<option value="fa fa-ioxhost" label="&#xf208" />
														<option value="fa fa-angellist" label="&#xf209" />
														<option value="fa fa-cc" label="&#xf20a" />
														<option value="fa fa-ils" label="&#xf20b" />
														<option value="fa fa-meanpath" label="&#xf20c" />
														<option value="fa fa-buysellads" label="&#xf20d" />
														<option value="fa fa-connectdevelop" label="&#xf20e" />
														<option value="fa fa-dashcube" label="&#xf210" />
														<option value="fa fa-forumbee" label="&#xf211" />
														<option value="fa fa-leanpub" label="&#xf212" />
														<option value="fa fa-sellsy" label="&#xf213" />
														<option value="fa fa-shirtsinbulk" label="&#xf214" />
														<option value="fa fa-simplybuilt" label="&#xf215" />
														<option value="fa fa-skyatlas" label="&#xf216" />
														<option value="fa fa-cart-plus" label="&#xf217" />
														<option value="fa fa-cart-arrow-down" label="&#xf218" />
														<option value="fa fa-diamond" label="&#xf219" />
														<option value="fa fa-ship" label="&#xf21a" />
														<option value="fa fa-user-secret" label="&#xf21b" />
														<option value="fa fa-motorcycle" label="&#xf21c" />
														<option value="fa fa-street-view" label="&#xf21d" />
														<option value="fa fa-heartbeat" label="&#xf21e" />
														<option value="fa fa-venus" label="&#xf221" />
														<option value="fa fa-mars" label="&#xf222" />
														<option value="fa fa-mercury" label="&#xf223" />
														<option value="fa fa-transgender" label="&#xf224" />
														<option value="fa fa-transgender-alt" label="&#xf225" />
														<option value="fa fa-venus-double" label="&#xf226" />
														<option value="fa fa-mars-double" label="&#xf227" />
														<option value="fa fa-venus-mars" label="&#xf228" />
														<option value="fa fa-mars-stroke" label="&#xf229" />
														<option value="fa fa-mars-stroke-v" label="&#xf22a" />
														<option value="fa fa-mars-stroke-h" label="&#xf22b" />
														<option value="fa fa-neuter" label="&#xf22c" />
														<option value="fa fa-facebook-official" label="&#xf230" />
														<option value="fa fa-pinterest-p" label="&#xf231" />
														<option value="fa fa-whatsapp" label="&#xf232" />
														<option value="fa fa-server" label="&#xf233" />
														<option value="fa fa-user-plus" label="&#xf234" />
														<option value="fa fa-user-times" label="&#xf235" />
														<option value="fa fa-bed" label="&#xf236" />
														<option value="fa fa-viacoin" label="&#xf237" />
														<option value="fa fa-train" label="&#xf238" />
														<option value="fa fa-subway" label="&#xf239" />
														<option value="fa fa-medium" label="&#xf23a" />
													</select>

												</div>
											</div>
											<div class="form-group">

												<label for="inputEmail3" class="col-md-3 control-label">h5-Label-2</label>
												<div class="col-md-9">
													<input id="h5label2" name="h5label2" type="text"
														value="${basics.h5Label2}" placeholder="S2-Label-5"
														class="form-control">
												</div>
											</div>



											<div class="form-group">

												<label for="inputEmail3" class="col-md-3 control-label">h5-label-2-description</label>
												<div class="col-md-9">
													<input id="h5Description2" name="h5Description2"
														type="text" value="${basics.h5Label6}"
														placeholder="Description" class="form-control">
												</div>
											</div>
											<div class="form-group">

												<label for="inputEmail3" class="col-md-3 control-label">h5-icon-3</label>
												<div class="col-md-9">
													<select class="fa-select" name="h5icon3" id="h5icon3">
														<option label="Select icon" />
														<option value="fa fa-glass" label="&#xf000" />
														<option value="fa fa-music" label="&#xf001" />
														<option value="fa fa-search" label="&#xf002" />
														<option value="fa fa-envelope-o" label="&#xf003" />
														<option value="fa fa-heart" label="&#xf004" />
														<option value="fa fa-star" label="&#xf005" />
														<option value="fa fa-star-o" label="&#xf006" />
														<option value="fa fa-user" label="&#xf007" />
														<option value="fa fa-film" label="&#xf008" />
														<option value="fa fa-th-large" label="&#xf009" />
														<option value="fa fa-th" label="&#xf00a" />
														<option value="fa fa-th-list" label="&#xf00b" />
														<option value="fa fa-check" label="&#xf00c" />
														<option value="fa fa-times" label="&#xf00d" />
														<option value="fa fa-search-plus" label="&#xf00e" />
														<option value="fa fa-search-minus" label="&#xf010" />
														<option value="fa fa-power-off" label="&#xf011" />
														<option value="fa fa-signal" label="&#xf012" />
														<option value="fa fa-cog" label="&#xf013" />
														<option value="fa fa-trash-o" label="&#xf014" />
														<option value="fa fa-home" label="&#xf015" />
														<option value="fa fa-file-o" label="&#xf016" />
														<option value="fa fa-clock-o" label="&#xf017" />
														<option value="fa fa-road" label="&#xf018" />
														<option value="fa fa-download" label="&#xf019" />
														<option value="fa fa-arrow-circle-o-down" label="&#xf01a" />
														<option value="fa fa-arrow-circle-o-up" label="&#xf01b" />
														<option value="fa fa-inbox" label="&#xf01c" />
														<option value="fa fa-play-circle-o" label="&#xf01d" />
														<option value="fa fa-repeat" label="&#xf01e" />
														<option value="fa fa-refresh" label="&#xf021" />
														<option value="fa fa-list-alt" label="&#xf022" />
														<option value="fa fa-lock" label="&#xf023" />
														<option value="fa fa-flag" label="&#xf024" />
														<option value="fa fa-headphones" label="&#xf025" />
														<option value="fa fa-volume-off" label="&#xf026" />
														<option value="fa fa-volume-down" label="&#xf027" />
														<option value="fa fa-volume-up" label="&#xf028" />
														<option value="fa fa-qrcode" label="&#xf029" />
														<option value="fa fa-barcode" label="&#xf02a" />
														<option value="fa fa-tag" label="&#xf02b" />
														<option value="fa fa-tags" label="&#xf02c" />
														<option value="fa fa-book" label="&#xf02d" />
														<option value="fa fa-bookmark" label="&#xf02e" />
														<option value="fa fa-print" label="&#xf02f" />
														<option value="fa fa-camera" label="&#xf030" />
														<option value="fa fa-font" label="&#xf031" />
														<option value="fa fa-bold" label="&#xf032" />
														<option value="fa fa-italic" label="&#xf033" />
														<option value="fa fa-text-height" label="&#xf034" />
														<option value="fa fa-text-width" label="&#xf035" />
														<option value="fa fa-align-left" label="&#xf036" />
														<option value="fa fa-align-center" label="&#xf037" />
														<option value="fa fa-align-right" label="&#xf038" />
														<option value="fa fa-align-justify" label="&#xf039" />
														<option value="fa fa-list" label="&#xf03a" />
														<option value="fa fa-outdent" label="&#xf03b" />
														<option value="fa fa-indent" label="&#xf03c" />
														<option value="fa fa-video-camera" label="&#xf03d" />
														<option value="fa fa-picture-o" label="&#xf03e" />
														<option value="fa fa-pencil" label="&#xf040" />
														<option value="fa fa-map-marker" label="&#xf041" />
														<option value="fa fa-adjust" label="&#xf042" />
														<option value="fa fa-tint" label="&#xf043" />
														<option value="fa fa-pencil-square-o" label="&#xf044" />
														<option value="fa fa-share-square-o" label="&#xf045" />
														<option value="fa fa-check-square-o" label="&#xf046" />
														<option value="fa fa-arrows" label="&#xf047" />
														<option value="fa fa-step-backward" label="&#xf048" />
														<option value="fa fa-fast-backward" label="&#xf049" />
														<option value="fa fa-backward" label="&#xf04a" />
														<option value="fa fa-play" label="&#xf04b" />
														<option value="fa fa-pause" label="&#xf04c" />
														<option value="fa fa-stop" label="&#xf04d" />
														<option value="fa fa-forward" label="&#xf04e" />
														<option value="fa fa-fast-forward" label="&#xf050" />
														<option value="fa fa-step-forward" label="&#xf051" />
														<option value="fa fa-eject" label="&#xf052" />
														<option value="fa fa-chevron-left" label="&#xf053" />
														<option value="fa fa-chevron-right" label="&#xf054" />
														<option value="fa fa-plus-circle" label="&#xf055" />
														<option value="fa fa-minus-circle" label="&#xf056" />
														<option value="fa fa-times-circle" label="&#xf057" />
														<option value="fa fa-check-circle" label="&#xf058" />
														<option value="fa fa-question-circle" label="&#xf059" />
														<option value="fa fa-info-circle" label="&#xf05a" />
														<option value="fa fa-crosshairs" label="&#xf05b" />
														<option value="fa fa-times-circle-o" label="&#xf05c" />
														<option value="fa fa-check-circle-o" label="&#xf05d" />
														<option value="fa fa-ban" label="&#xf05e" />
														<option value="fa fa-arrow-left" label="&#xf060" />
														<option value="fa fa-arrow-right" label="&#xf061" />
														<option value="fa fa-arrow-up" label="&#xf062" />
														<option value="fa fa-arrow-down" label="&#xf063" />
														<option value="fa fa-share" label="&#xf064" />
														<option value="fa fa-expand" label="&#xf065" />
														<option value="fa fa-compress" label="&#xf066" />
														<option value="fa fa-plus" label="&#xf067" />
														<option value="fa fa-minus" label="&#xf068" />
														<option value="fa fa-asterisk" label="&#xf069" />
														<option value="fa fa-exclamation-circle" label="&#xf06a" />
														<option value="fa fa-gift" label="&#xf06b" />
														<option value="fa fa-leaf" label="&#xf06c" />
														<option value="fa fa-fire" label="&#xf06d" />
														<option value="fa fa-eye" label="&#xf06e" />
														<option value="fa fa-eye-slash" label="&#xf070" />
														<option value="fa fa-exclamation-triangle" label="&#xf071" />
														<option value="fa fa-plane" label="&#xf072" />
														<option value="fa fa-calendar" label="&#xf073" />
														<option value="fa fa-random" label="&#xf074" />
														<option value="fa fa-comment" label="&#xf075" />
														<option value="fa fa-magnet" label="&#xf076" />
														<option value="fa fa-chevron-up" label="&#xf077" />
														<option value="fa fa-chevron-down" label="&#xf078" />
														<option value="fa fa-retweet" label="&#xf079" />
														<option value="fa fa-shopping-cart" label="&#xf07a" />
														<option value="fa fa-folder" label="&#xf07b" />
														<option value="fa fa-folder-open" label="&#xf07c" />
														<option value="fa fa-arrows-v" label="&#xf07d" />
														<option value="fa fa-arrows-h" label="&#xf07e" />
														<option value="fa fa-bar-chart" label="&#xf080" />
														<option value="fa fa-twitter-square" label="&#xf081" />
														<option value="fa fa-facebook-square" label="&#xf082" />
														<option value="fa fa-camera-retro" label="&#xf083" />
														<option value="fa fa-key" label="&#xf084" />
														<option value="fa fa-cogs" label="&#xf085" />
														<option value="fa fa-comments" label="&#xf086" />
														<option value="fa fa-thumbs-o-up" label="&#xf087" />
														<option value="fa fa-thumbs-o-down" label="&#xf088" />
														<option value="fa fa-star-half" label="&#xf089" />
														<option value="fa fa-heart-o" label="&#xf08a" />
														<option value="fa fa-sign-out" label="&#xf08b" />
														<option value="fa fa-linkedin-square" label="&#xf08c" />
														<option value="fa fa-thumb-tack" label="&#xf08d" />
														<option value="fa fa-external-link" label="&#xf08e" />
														<option value="fa fa-sign-in" label="&#xf090" />
														<option value="fa fa-trophy" label="&#xf091" />
														<option value="fa fa-github-square" label="&#xf092" />
														<option value="fa fa-upload" label="&#xf093" />
														<option value="fa fa-lemon-o" label="&#xf094" />
														<option value="fa fa-phone" label="&#xf095" />
														<option value="fa fa-square-o" label="&#xf096" />
														<option value="fa fa-bookmark-o" label="&#xf097" />
														<option value="fa fa-phone-square" label="&#xf098" />
														<option value="fa fa-twitter" label="&#xf099" />
														<option value="fa fa-facebook" label="&#xf09a" />
														<option value="fa fa-github" label="&#xf09b" />
														<option value="fa fa-unlock" label="&#xf09c" />
														<option value="fa fa-credit-card" label="&#xf09d" />
														<option value="fa fa-rss" label="&#xf09e" />
														<option value="fa fa-hdd-o" label="&#xf0a0" />
														<option value="fa fa-bullhorn" label="&#xf0a1" />
														<option value="fa fa-bell" label="&#xf0f3" />
														<option value="fa fa-certificate" label="&#xf0a3" />
														<option value="fa fa-hand-o-right" label="&#xf0a4" />
														<option value="fa fa-hand-o-left" label="&#xf0a5" />
														<option value="fa fa-hand-o-up" label="&#xf0a6" />
														<option value="fa fa-hand-o-down" label="&#xf0a7" />
														<option value="fa fa-arrow-circle-left" label="&#xf0a8" />
														<option value="fa fa-arrow-circle-right" label="&#xf0a9" />
														<option value="fa fa-arrow-circle-up" label="&#xf0aa" />
														<option value="fa fa-arrow-circle-down" label="&#xf0ab" />
														<option value="fa fa-globe" label="&#xf0ac" />
														<option value="fa fa-wrench" label="&#xf0ad" />
														<option value="fa fa-tasks" label="&#xf0ae" />
														<option value="fa fa-filter" label="&#xf0b0" />
														<option value="fa fa-briefcase" label="&#xf0b1" />
														<option value="fa fa-arrows-alt" label="&#xf0b2" />
														<option value="fa fa-users" label="&#xf0c0" />
														<option value="fa fa-link" label="&#xf0c1" />
														<option value="fa fa-cloud" label="&#xf0c2" />
														<option value="fa fa-flask" label="&#xf0c3" />
														<option value="fa fa-scissors" label="&#xf0c4" />
														<option value="fa fa-files-o" label="&#xf0c5" />
														<option value="fa fa-paperclip" label="&#xf0c6" />
														<option value="fa fa-floppy-o" label="&#xf0c7" />
														<option value="fa fa-square" label="&#xf0c8" />
														<option value="fa fa-bars" label="&#xf0c9" />
														<option value="fa fa-list-ul" label="&#xf0ca" />
														<option value="fa fa-list-ol" label="&#xf0cb" />
														<option value="fa fa-strikethrough" label="&#xf0cc" />
														<option value="fa fa-underline" label="&#xf0cd" />
														<option value="fa fa-table" label="&#xf0ce" />
														<option value="fa fa-magic" label="&#xf0d0" />
														<option value="fa fa-truck" label="&#xf0d1" />
														<option value="fa fa-pinterest" label="&#xf0d2" />
														<option value="fa fa-pinterest-square" label="&#xf0d3" />
														<option value="fa fa-google-plus-square" label="&#xf0d4" />
														<option value="fa fa-google-plus" label="&#xf0d5" />
														<option value="fa fa-money" label="&#xf0d6" />
														<option value="fa fa-caret-down" label="&#xf0d7" />
														<option value="fa fa-caret-up" label="&#xf0d8" />
														<option value="fa fa-caret-left" label="&#xf0d9" />
														<option value="fa fa-caret-right" label="&#xf0da" />
														<option value="fa fa-columns" label="&#xf0db" />
														<option value="fa fa-sort" label="&#xf0dc" />
														<option value="fa fa-sort-desc" label="&#xf0dd" />
														<option value="fa fa-sort-asc" label="&#xf0de" />
														<option value="fa fa-envelope" label="&#xf0e0" />
														<option value="fa fa-linkedin" label="&#xf0e1" />
														<option value="fa fa-undo" label="&#xf0e2" />
														<option value="fa fa-gavel" label="&#xf0e3" />
														<option value="fa fa-tachometer" label="&#xf0e4" />
														<option value="fa fa-comment-o" label="&#xf0e5" />
														<option value="fa fa-comments-o" label="&#xf0e6" />
														<option value="fa fa-bolt" label="&#xf0e7" />
														<option value="fa fa-sitemap" label="&#xf0e8" />
														<option value="fa fa-umbrella" label="&#xf0e9" />
														<option value="fa fa-clipboard" label="&#xf0ea" />
														<option value="fa fa-lightbulb-o" label="&#xf0eb" />
														<option value="fa fa-exchange" label="&#xf0ec" />
														<option value="fa fa-cloud-download" label="&#xf0ed" />
														<option value="fa fa-cloud-upload" label="&#xf0ee" />
														<option value="fa fa-user-md" label="&#xf0f0" />
														<option value="fa fa-stethoscope" label="&#xf0f1" />
														<option value="fa fa-suitcase" label="&#xf0f2" />
														<option value="fa fa-bell-o" label="&#xf0a2" />
														<option value="fa fa-coffee" label="&#xf0f4" />
														<option value="fa fa-cutlery" label="&#xf0f5" />
														<option value="fa fa-file-text-o" label="&#xf0f6" />
														<option value="fa fa-building-o" label="&#xf0f7" />
														<option value="fa fa-hospital-o" label="&#xf0f8" />
														<option value="fa fa-ambulance" label="&#xf0f9" />
														<option value="fa fa-medkit" label="&#xf0fa" />
														<option value="fa fa-fighter-jet" label="&#xf0fb" />
														<option value="fa fa-beer" label="&#xf0fc" />
														<option value="fa fa-h-square" label="&#xf0fd" />
														<option value="fa fa-plus-square" label="&#xf0fe" />
														<option value="fa fa-angle-double-left" label="&#xf100" />
														<option value="fa fa-angle-double-right" label="&#xf101" />
														<option value="fa fa-angle-double-up" label="&#xf102" />
														<option value="fa fa-angle-double-down" label="&#xf103" />
														<option value="fa fa-angle-left" label="&#xf104" />
														<option value="fa fa-angle-right" label="&#xf105" />
														<option value="fa fa-angle-up" label="&#xf106" />
														<option value="fa fa-angle-down" label="&#xf107" />
														<option value="fa fa-desktop" label="&#xf108" />
														<option value="fa fa-laptop" label="&#xf109" />
														<option value="fa fa-tablet" label="&#xf10a" />
														<option value="fa fa-mobile" label="&#xf10b" />
														<option value="fa fa-circle-o" label="&#xf10c" />
														<option value="fa fa-quote-left" label="&#xf10d" />
														<option value="fa fa-quote-right" label="&#xf10e" />
														<option value="fa fa-spinner" label="&#xf110" />
														<option value="fa fa-circle" label="&#xf111" />
														<option value="fa fa-reply" label="&#xf112" />
														<option value="fa fa-github-alt" label="&#xf113" />
														<option value="fa fa-folder-o" label="&#xf114" />
														<option value="fa fa-folder-open-o" label="&#xf115" />
														<option value="fa fa-smile-o" label="&#xf118" />
														<option value="fa fa-frown-o" label="&#xf119" />
														<option value="fa fa-meh-o" label="&#xf11a" />
														<option value="fa fa-gamepad" label="&#xf11b" />
														<option value="fa fa-keyboard-o" label="&#xf11c" />
														<option value="fa fa-flag-o" label="&#xf11d" />
														<option value="fa fa-flag-checkered" label="&#xf11e" />
														<option value="fa fa-terminal" label="&#xf120" />
														<option value="fa fa-code" label="&#xf121" />
														<option value="fa fa-reply-all" label="&#xf122" />
														<option value="fa fa-star-half-o" label="&#xf123" />
														<option value="fa fa-location-arrow" label="&#xf124" />
														<option value="fa fa-crop" label="&#xf125" />
														<option value="fa fa-code-fork" label="&#xf126" />
														<option value="fa fa-chain-broken" label="&#xf127" />
														<option value="fa fa-question" label="&#xf128" />
														<option value="fa fa-info" label="&#xf129" />
														<option value="fa fa-exclamation" label="&#xf12a" />
														<option value="fa fa-superscript" label="&#xf12b" />
														<option value="fa fa-subscript" label="&#xf12c" />
														<option value="fa fa-eraser" label="&#xf12d" />
														<option value="fa fa-puzzle-piece" label="&#xf12e" />
														<option value="fa fa-microphone" label="&#xf130" />
														<option value="fa fa-microphone-slash" label="&#xf131" />
														<option value="fa fa-shield" label="&#xf132" />
														<option value="fa fa-calendar-o" label="&#xf133" />
														<option value="fa fa-fire-extinguisher" label="&#xf134" />
														<option value="fa fa-rocket" label="&#xf135" />
														<option value="fa fa-maxcdn" label="&#xf136" />
														<option value="fa fa-chevron-circle-left" label="&#xf137" />
														<option value="fa fa-chevron-circle-right" label="&#xf138" />
														<option value="fa fa-chevron-circle-up" label="&#xf139" />
														<option value="fa fa-chevron-circle-down" label="&#xf13a" />
														<option value="fa fa-html5" label="&#xf13b" />
														<option value="fa fa-css3" label="&#xf13c" />
														<option value="fa fa-anchor" label="&#xf13d" />
														<option value="fa fa-unlock-alt" label="&#xf13e" />
														<option value="fa fa-bullseye" label="&#xf140" />
														<option value="fa fa-ellipsis-h" label="&#xf141" />
														<option value="fa fa-ellipsis-v" label="&#xf142" />
														<option value="fa fa-rss-square" label="&#xf143" />
														<option value="fa fa-play-circle" label="&#xf144" />
														<option value="fa fa-ticket" label="&#xf145" />
														<option value="fa fa-minus-square" label="&#xf146" />
														<option value="fa fa-minus-square-o" label="&#xf147" />
														<option value="fa fa-level-up" label="&#xf148" />
														<option value="fa fa-level-down" label="&#xf149" />
														<option value="fa fa-check-square" label="&#xf14a" />
														<option value="fa fa-pencil-square" label="&#xf14b" />
														<option value="fa fa-external-link-square" label="&#xf14c" />
														<option value="fa fa-share-square" label="&#xf14d" />
														<option value="fa fa-compass" label="&#xf14e" />
														<option value="fa fa-caret-square-o-down" label="&#xf150" />
														<option value="fa fa-caret-square-o-up" label="&#xf151" />
														<option value="fa fa-caret-square-o-right" label="&#xf152" />
														<option value="fa fa-eur" label="&#xf153" />
														<option value="fa fa-gbp" label="&#xf154" />
														<option value="fa fa-usd" label="&#xf155" />
														<option value="fa fa-inr" label="&#xf156" />
														<option value="fa fa-jpy" label="&#xf157" />
														<option value="fa fa-rub" label="&#xf158" />
														<option value="fa fa-krw" label="&#xf159" />
														<option value="fa fa-btc" label="&#xf15a" />
														<option value="fa fa-file" label="&#xf15b" />
														<option value="fa fa-file-text" label="&#xf15c" />
														<option value="fa fa-sort-alpha-asc" label="&#xf15d" />
														<option value="fa fa-sort-alpha-desc" label="&#xf15e" />
														<option value="fa fa-sort-amount-asc" label="&#xf160" />
														<option value="fa fa-sort-amount-desc" label="&#xf161" />
														<option value="fa fa-sort-numeric-asc" label="&#xf162" />
														<option value="fa fa-sort-numeric-desc" label="&#xf163" />
														<option value="fa fa-thumbs-up" label="&#xf164" />
														<option value="fa fa-thumbs-down" label="&#xf165" />
														<option value="fa fa-youtube-square" label="&#xf166" />
														<option value="fa fa-youtube" label="&#xf167" />
														<option value="fa fa-xing" label="&#xf168" />
														<option value="fa fa-xing-square" label="&#xf169" />
														<option value="fa fa-youtube-play" label="&#xf16a" />
														<option value="fa fa-dropbox" label="&#xf16b" />
														<option value="fa fa-stack-overflow" label="&#xf16c" />
														<option value="fa fa-instagram" label="&#xf16d" />
														<option value="fa fa-flickr" label="&#xf16e" />
														<option value="fa fa-adn" label="&#xf170" />
														<option value="fa fa-bitbucket" label="&#xf171" />
														<option value="fa fa-bitbucket-square" label="&#xf172" />
														<option value="fa fa-tumblr" label="&#xf173" />
														<option value="fa fa-tumblr-square" label="&#xf174" />
														<option value="fa fa-long-arrow-down" label="&#xf175" />
														<option value="fa fa-long-arrow-up" label="&#xf176" />
														<option value="fa fa-long-arrow-left" label="&#xf177" />
														<option value="fa fa-long-arrow-right" label="&#xf178" />
														<option value="fa fa-apple" label="&#xf179" />
														<option value="fa fa-windows" label="&#xf17a" />
														<option value="fa fa-android" label="&#xf17b" />
														<option value="fa fa-linux" label="&#xf17c" />
														<option value="fa fa-dribbble" label="&#xf17d" />
														<option value="fa fa-skype" label="&#xf17e" />
														<option value="fa fa-foursquare" label="&#xf180" />
														<option value="fa fa-trello" label="&#xf181" />
														<option value="fa fa-female" label="&#xf182" />
														<option value="fa fa-male" label="&#xf183" />
														<option value="fa fa-gratipay" label="&#xf184" />
														<option value="fa fa-sun-o" label="&#xf185" />
														<option value="fa fa-moon-o" label="&#xf186" />
														<option value="fa fa-archive" label="&#xf187" />
														<option value="fa fa-bug" label="&#xf188" />
														<option value="fa fa-vk" label="&#xf189" />
														<option value="fa fa-weibo" label="&#xf18a" />
														<option value="fa fa-renren" label="&#xf18b" />
														<option value="fa fa-pagelines" label="&#xf18c" />
														<option value="fa fa-stack-exchange" label="&#xf18d" />
														<option value="fa fa-arrow-circle-o-right" label="&#xf18e" />
														<option value="fa fa-arrow-circle-o-left" label="&#xf190" />
														<option value="fa fa-caret-square-o-left" label="&#xf191" />
														<option value="fa fa-dot-circle-o" label="&#xf192" />
														<option value="fa fa-wheelchair" label="&#xf193" />
														<option value="fa fa-vimeo-square" label="&#xf194" />
														<option value="fa fa-try" label="&#xf195" />
														<option value="fa fa-plus-square-o" label="&#xf196" />
														<option value="fa fa-space-shuttle" label="&#xf197" />
														<option value="fa fa-slack" label="&#xf198" />
														<option value="fa fa-envelope-square" label="&#xf199" />
														<option value="fa fa-wordpress" label="&#xf19a" />
														<option value="fa fa-openid" label="&#xf19b" />
														<option value="fa fa-university" label="&#xf19c" />
														<option value="fa fa-graduation-cap" label="&#xf19d" />
														<option value="fa fa-yahoo" label="&#xf19e" />
														<option value="fa fa-google" label="&#xf1a0" />
														<option value="fa fa-reddit" label="&#xf1a1" />
														<option value="fa fa-reddit-square" label="&#xf1a2" />
														<option value="fa fa-stumbleupon-circle" label="&#xf1a3" />
														<option value="fa fa-stumbleupon" label="&#xf1a4" />
														<option value="fa fa-delicious" label="&#xf1a5" />
														<option value="fa fa-digg" label="&#xf1a6" />
														<option value="fa fa-pied-piper" label="&#xf1a7" />
														<option value="fa fa-pied-piper-alt" label="&#xf1a8" />
														<option value="fa fa-drupal" label="&#xf1a9" />
														<option value="fa fa-joomla" label="&#xf1aa" />
														<option value="fa fa-language" label="&#xf1ab" />
														<option value="fa fa-fax" label="&#xf1ac" />
														<option value="fa fa-building" label="&#xf1ad" />
														<option value="fa fa-child" label="&#xf1ae" />
														<option value="fa fa-paw" label="&#xf1b0" />
														<option value="fa fa-spoon" label="&#xf1b1" />
														<option value="fa fa-cube" label="&#xf1b2" />
														<option value="fa fa-cubes" label="&#xf1b3" />
														<option value="fa fa-behance" label="&#xf1b4" />
														<option value="fa fa-behance-square" label="&#xf1b5" />
														<option value="fa fa-steam" label="&#xf1b6" />
														<option value="fa fa-steam-square" label="&#xf1b7" />
														<option value="fa fa-recycle" label="&#xf1b8" />
														<option value="fa fa-car" label="&#xf1b9" />
														<option value="fa fa-taxi" label="&#xf1ba" />
														<option value="fa fa-tree" label="&#xf1bb" />
														<option value="fa fa-spotify" label="&#xf1bc" />
														<option value="fa fa-deviantart" label="&#xf1bd" />
														<option value="fa fa-soundcloud" label="&#xf1be" />
														<option value="fa fa-database" label="&#xf1c0" />
														<option value="fa fa-file-pdf-o" label="&#xf1c1" />
														<option value="fa fa-file-word-o" label="&#xf1c2" />
														<option value="fa fa-file-excel-o" label="&#xf1c3" />
														<option value="fa fa-file-powerpoint-o" label="&#xf1c4" />
														<option value="fa fa-file-image-o" label="&#xf1c5" />
														<option value="fa fa-file-archive-o" label="&#xf1c6" />
														<option value="fa fa-file-audio-o" label="&#xf1c7" />
														<option value="fa fa-file-video-o" label="&#xf1c8" />
														<option value="fa fa-file-code-o" label="&#xf1c9" />
														<option value="fa fa-vine" label="&#xf1ca" />
														<option value="fa fa-codepen" label="&#xf1cb" />
														<option value="fa fa-jsfiddle" label="&#xf1cc" />
														<option value="fa fa-life-ring" label="&#xf1cd" />
														<option value="fa fa-circle-o-notch" label="&#xf1ce" />
														<option value="fa fa-rebel" label="&#xf1d0" />
														<option value="fa fa-empire" label="&#xf1d1" />
														<option value="fa fa-git-square" label="&#xf1d2" />
														<option value="fa fa-git" label="&#xf1d3" />
														<option value="fa fa-hacker-news" label="&#xf1d4" />
														<option value="fa fa-tencent-weibo" label="&#xf1d5" />
														<option value="fa fa-qq" label="&#xf1d6" />
														<option value="fa fa-weixin" label="&#xf1d7" />
														<option value="fa fa-paper-plane" label="&#xf1d8" />
														<option value="fa fa-paper-plane-o" label="&#xf1d9" />
														<option value="fa fa-history" label="&#xf1da" />
														<option value="fa fa-circle-thin" label="&#xf1db" />
														<option value="fa fa-header" label="&#xf1dc" />
														<option value="fa fa-paragraph" label="&#xf1dd" />
														<option value="fa fa-sliders" label="&#xf1de" />
														<option value="fa fa-share-alt" label="&#xf1e0" />
														<option value="fa fa-share-alt-square" label="&#xf1e1" />
														<option value="fa fa-bomb" label="&#xf1e2" />
														<option value="fa fa-futbol-o" label="&#xf1e3" />
														<option value="fa fa-tty" label="&#xf1e4" />
														<option value="fa fa-binoculars" label="&#xf1e5" />
														<option value="fa fa-plug" label="&#xf1e6" />
														<option value="fa fa-slideshare" label="&#xf1e7" />
														<option value="fa fa-twitch" label="&#xf1e8" />
														<option value="fa fa-yelp" label="&#xf1e9" />
														<option value="fa fa-newspaper-o" label="&#xf1ea" />
														<option value="fa fa-wifi" label="&#xf1eb" />
														<option value="fa fa-calculator" label="&#xf1ec" />
														<option value="fa fa-paypal" label="&#xf1ed" />
														<option value="fa fa-google-wallet" label="&#xf1ee" />
														<option value="fa fa-cc-visa" label="&#xf1f0" />
														<option value="fa fa-cc-mastercard" label="&#xf1f1" />
														<option value="fa fa-cc-discover" label="&#xf1f2" />
														<option value="fa fa-cc-amex" label="&#xf1f3" />
														<option value="fa fa-cc-paypal" label="&#xf1f4" />
														<option value="fa fa-cc-stripe" label="&#xf1f5" />
														<option value="fa fa-bell-slash" label="&#xf1f6" />
														<option value="fa fa-bell-slash-o" label="&#xf1f7" />
														<option value="fa fa-trash" label="&#xf1f8" />
														<option value="fa fa-copyright" label="&#xf1f9" />
														<option value="fa fa-at" label="&#xf1fa" />
														<option value="fa fa-eyedropper" label="&#xf1fb" />
														<option value="fa fa-paint-brush" label="&#xf1fc" />
														<option value="fa fa-birthday-cake" label="&#xf1fd" />
														<option value="fa fa-area-chart" label="&#xf1fe" />
														<option value="fa fa-pie-chart" label="&#xf200" />
														<option value="fa fa-line-chart" label="&#xf201" />
														<option value="fa fa-lastfm" label="&#xf202" />
														<option value="fa fa-lastfm-square" label="&#xf203" />
														<option value="fa fa-toggle-off" label="&#xf204" />
														<option value="fa fa-toggle-on" label="&#xf205" />
														<option value="fa fa-bicycle" label="&#xf206" />
														<option value="fa fa-bus" label="&#xf207" />
														<option value="fa fa-ioxhost" label="&#xf208" />
														<option value="fa fa-angellist" label="&#xf209" />
														<option value="fa fa-cc" label="&#xf20a" />
														<option value="fa fa-ils" label="&#xf20b" />
														<option value="fa fa-meanpath" label="&#xf20c" />
														<option value="fa fa-buysellads" label="&#xf20d" />
														<option value="fa fa-connectdevelop" label="&#xf20e" />
														<option value="fa fa-dashcube" label="&#xf210" />
														<option value="fa fa-forumbee" label="&#xf211" />
														<option value="fa fa-leanpub" label="&#xf212" />
														<option value="fa fa-sellsy" label="&#xf213" />
														<option value="fa fa-shirtsinbulk" label="&#xf214" />
														<option value="fa fa-simplybuilt" label="&#xf215" />
														<option value="fa fa-skyatlas" label="&#xf216" />
														<option value="fa fa-cart-plus" label="&#xf217" />
														<option value="fa fa-cart-arrow-down" label="&#xf218" />
														<option value="fa fa-diamond" label="&#xf219" />
														<option value="fa fa-ship" label="&#xf21a" />
														<option value="fa fa-user-secret" label="&#xf21b" />
														<option value="fa fa-motorcycle" label="&#xf21c" />
														<option value="fa fa-street-view" label="&#xf21d" />
														<option value="fa fa-heartbeat" label="&#xf21e" />
														<option value="fa fa-venus" label="&#xf221" />
														<option value="fa fa-mars" label="&#xf222" />
														<option value="fa fa-mercury" label="&#xf223" />
														<option value="fa fa-transgender" label="&#xf224" />
														<option value="fa fa-transgender-alt" label="&#xf225" />
														<option value="fa fa-venus-double" label="&#xf226" />
														<option value="fa fa-mars-double" label="&#xf227" />
														<option value="fa fa-venus-mars" label="&#xf228" />
														<option value="fa fa-mars-stroke" label="&#xf229" />
														<option value="fa fa-mars-stroke-v" label="&#xf22a" />
														<option value="fa fa-mars-stroke-h" label="&#xf22b" />
														<option value="fa fa-neuter" label="&#xf22c" />
														<option value="fa fa-facebook-official" label="&#xf230" />
														<option value="fa fa-pinterest-p" label="&#xf231" />
														<option value="fa fa-whatsapp" label="&#xf232" />
														<option value="fa fa-server" label="&#xf233" />
														<option value="fa fa-user-plus" label="&#xf234" />
														<option value="fa fa-user-times" label="&#xf235" />
														<option value="fa fa-bed" label="&#xf236" />
														<option value="fa fa-viacoin" label="&#xf237" />
														<option value="fa fa-train" label="&#xf238" />
														<option value="fa fa-subway" label="&#xf239" />
														<option value="fa fa-medium" label="&#xf23a" />
													</select>

												</div>
											</div>
											<div class="form-group">

												<label for="inputEmail3" class="col-md-3 control-label">h5-label-3</label>
												<div class="col-md-9">
													<input id="h5label3" name="h5label3" type="text"
														value="${basics.h5Label3}" placeholder="S3-heading"
														class="form-control">
												</div>
											</div>

											<div class="form-group">

												<label for="inputEmail3" class="col-md-3 control-label">h5-label-3-description</label>
												<div class="col-md-9">
													<input id="h5Description3" name="h5Description3"
														type="text" value="${basics.h5Label7}"
														placeholder="S3-Label-1" class="form-control">
												</div>
											</div>
											<div class="form-group">

												<label for="inputEmail3" class="col-md-3 control-label">h5-icon-4</label>
												<div class="col-md-9">
													<select class="fa-select" name="h5icon4" id="h5icon4">
														<option label="Select icon" />
														<option value="fa fa-glass" label="&#xf000" />
														<option value="fa fa-music" label="&#xf001" />
														<option value="fa fa-search" label="&#xf002" />
														<option value="fa fa-envelope-o" label="&#xf003" />
														<option value="fa fa-heart" label="&#xf004" />
														<option value="fa fa-star" label="&#xf005" />
														<option value="fa fa-star-o" label="&#xf006" />
														<option value="fa fa-user" label="&#xf007" />
														<option value="fa fa-film" label="&#xf008" />
														<option value="fa fa-th-large" label="&#xf009" />
														<option value="fa fa-th" label="&#xf00a" />
														<option value="fa fa-th-list" label="&#xf00b" />
														<option value="fa fa-check" label="&#xf00c" />
														<option value="fa fa-times" label="&#xf00d" />
														<option value="fa fa-search-plus" label="&#xf00e" />
														<option value="fa fa-search-minus" label="&#xf010" />
														<option value="fa fa-power-off" label="&#xf011" />
														<option value="fa fa-signal" label="&#xf012" />
														<option value="fa fa-cog" label="&#xf013" />
														<option value="fa fa-trash-o" label="&#xf014" />
														<option value="fa fa-home" label="&#xf015" />
														<option value="fa fa-file-o" label="&#xf016" />
														<option value="fa fa-clock-o" label="&#xf017" />
														<option value="fa fa-road" label="&#xf018" />
														<option value="fa fa-download" label="&#xf019" />
														<option value="fa fa-arrow-circle-o-down" label="&#xf01a" />
														<option value="fa fa-arrow-circle-o-up" label="&#xf01b" />
														<option value="fa fa-inbox" label="&#xf01c" />
														<option value="fa fa-play-circle-o" label="&#xf01d" />
														<option value="fa fa-repeat" label="&#xf01e" />
														<option value="fa fa-refresh" label="&#xf021" />
														<option value="fa fa-list-alt" label="&#xf022" />
														<option value="fa fa-lock" label="&#xf023" />
														<option value="fa fa-flag" label="&#xf024" />
														<option value="fa fa-headphones" label="&#xf025" />
														<option value="fa fa-volume-off" label="&#xf026" />
														<option value="fa fa-volume-down" label="&#xf027" />
														<option value="fa fa-volume-up" label="&#xf028" />
														<option value="fa fa-qrcode" label="&#xf029" />
														<option value="fa fa-barcode" label="&#xf02a" />
														<option value="fa fa-tag" label="&#xf02b" />
														<option value="fa fa-tags" label="&#xf02c" />
														<option value="fa fa-book" label="&#xf02d" />
														<option value="fa fa-bookmark" label="&#xf02e" />
														<option value="fa fa-print" label="&#xf02f" />
														<option value="fa fa-camera" label="&#xf030" />
														<option value="fa fa-font" label="&#xf031" />
														<option value="fa fa-bold" label="&#xf032" />
														<option value="fa fa-italic" label="&#xf033" />
														<option value="fa fa-text-height" label="&#xf034" />
														<option value="fa fa-text-width" label="&#xf035" />
														<option value="fa fa-align-left" label="&#xf036" />
														<option value="fa fa-align-center" label="&#xf037" />
														<option value="fa fa-align-right" label="&#xf038" />
														<option value="fa fa-align-justify" label="&#xf039" />
														<option value="fa fa-list" label="&#xf03a" />
														<option value="fa fa-outdent" label="&#xf03b" />
														<option value="fa fa-indent" label="&#xf03c" />
														<option value="fa fa-video-camera" label="&#xf03d" />
														<option value="fa fa-picture-o" label="&#xf03e" />
														<option value="fa fa-pencil" label="&#xf040" />
														<option value="fa fa-map-marker" label="&#xf041" />
														<option value="fa fa-adjust" label="&#xf042" />
														<option value="fa fa-tint" label="&#xf043" />
														<option value="fa fa-pencil-square-o" label="&#xf044" />
														<option value="fa fa-share-square-o" label="&#xf045" />
														<option value="fa fa-check-square-o" label="&#xf046" />
														<option value="fa fa-arrows" label="&#xf047" />
														<option value="fa fa-step-backward" label="&#xf048" />
														<option value="fa fa-fast-backward" label="&#xf049" />
														<option value="fa fa-backward" label="&#xf04a" />
														<option value="fa fa-play" label="&#xf04b" />
														<option value="fa fa-pause" label="&#xf04c" />
														<option value="fa fa-stop" label="&#xf04d" />
														<option value="fa fa-forward" label="&#xf04e" />
														<option value="fa fa-fast-forward" label="&#xf050" />
														<option value="fa fa-step-forward" label="&#xf051" />
														<option value="fa fa-eject" label="&#xf052" />
														<option value="fa fa-chevron-left" label="&#xf053" />
														<option value="fa fa-chevron-right" label="&#xf054" />
														<option value="fa fa-plus-circle" label="&#xf055" />
														<option value="fa fa-minus-circle" label="&#xf056" />
														<option value="fa fa-times-circle" label="&#xf057" />
														<option value="fa fa-check-circle" label="&#xf058" />
														<option value="fa fa-question-circle" label="&#xf059" />
														<option value="fa fa-info-circle" label="&#xf05a" />
														<option value="fa fa-crosshairs" label="&#xf05b" />
														<option value="fa fa-times-circle-o" label="&#xf05c" />
														<option value="fa fa-check-circle-o" label="&#xf05d" />
														<option value="fa fa-ban" label="&#xf05e" />
														<option value="fa fa-arrow-left" label="&#xf060" />
														<option value="fa fa-arrow-right" label="&#xf061" />
														<option value="fa fa-arrow-up" label="&#xf062" />
														<option value="fa fa-arrow-down" label="&#xf063" />
														<option value="fa fa-share" label="&#xf064" />
														<option value="fa fa-expand" label="&#xf065" />
														<option value="fa fa-compress" label="&#xf066" />
														<option value="fa fa-plus" label="&#xf067" />
														<option value="fa fa-minus" label="&#xf068" />
														<option value="fa fa-asterisk" label="&#xf069" />
														<option value="fa fa-exclamation-circle" label="&#xf06a" />
														<option value="fa fa-gift" label="&#xf06b" />
														<option value="fa fa-leaf" label="&#xf06c" />
														<option value="fa fa-fire" label="&#xf06d" />
														<option value="fa fa-eye" label="&#xf06e" />
														<option value="fa fa-eye-slash" label="&#xf070" />
														<option value="fa fa-exclamation-triangle" label="&#xf071" />
														<option value="fa fa-plane" label="&#xf072" />
														<option value="fa fa-calendar" label="&#xf073" />
														<option value="fa fa-random" label="&#xf074" />
														<option value="fa fa-comment" label="&#xf075" />
														<option value="fa fa-magnet" label="&#xf076" />
														<option value="fa fa-chevron-up" label="&#xf077" />
														<option value="fa fa-chevron-down" label="&#xf078" />
														<option value="fa fa-retweet" label="&#xf079" />
														<option value="fa fa-shopping-cart" label="&#xf07a" />
														<option value="fa fa-folder" label="&#xf07b" />
														<option value="fa fa-folder-open" label="&#xf07c" />
														<option value="fa fa-arrows-v" label="&#xf07d" />
														<option value="fa fa-arrows-h" label="&#xf07e" />
														<option value="fa fa-bar-chart" label="&#xf080" />
														<option value="fa fa-twitter-square" label="&#xf081" />
														<option value="fa fa-facebook-square" label="&#xf082" />
														<option value="fa fa-camera-retro" label="&#xf083" />
														<option value="fa fa-key" label="&#xf084" />
														<option value="fa fa-cogs" label="&#xf085" />
														<option value="fa fa-comments" label="&#xf086" />
														<option value="fa fa-thumbs-o-up" label="&#xf087" />
														<option value="fa fa-thumbs-o-down" label="&#xf088" />
														<option value="fa fa-star-half" label="&#xf089" />
														<option value="fa fa-heart-o" label="&#xf08a" />
														<option value="fa fa-sign-out" label="&#xf08b" />
														<option value="fa fa-linkedin-square" label="&#xf08c" />
														<option value="fa fa-thumb-tack" label="&#xf08d" />
														<option value="fa fa-external-link" label="&#xf08e" />
														<option value="fa fa-sign-in" label="&#xf090" />
														<option value="fa fa-trophy" label="&#xf091" />
														<option value="fa fa-github-square" label="&#xf092" />
														<option value="fa fa-upload" label="&#xf093" />
														<option value="fa fa-lemon-o" label="&#xf094" />
														<option value="fa fa-phone" label="&#xf095" />
														<option value="fa fa-square-o" label="&#xf096" />
														<option value="fa fa-bookmark-o" label="&#xf097" />
														<option value="fa fa-phone-square" label="&#xf098" />
														<option value="fa fa-twitter" label="&#xf099" />
														<option value="fa fa-facebook" label="&#xf09a" />
														<option value="fa fa-github" label="&#xf09b" />
														<option value="fa fa-unlock" label="&#xf09c" />
														<option value="fa fa-credit-card" label="&#xf09d" />
														<option value="fa fa-rss" label="&#xf09e" />
														<option value="fa fa-hdd-o" label="&#xf0a0" />
														<option value="fa fa-bullhorn" label="&#xf0a1" />
														<option value="fa fa-bell" label="&#xf0f3" />
														<option value="fa fa-certificate" label="&#xf0a3" />
														<option value="fa fa-hand-o-right" label="&#xf0a4" />
														<option value="fa fa-hand-o-left" label="&#xf0a5" />
														<option value="fa fa-hand-o-up" label="&#xf0a6" />
														<option value="fa fa-hand-o-down" label="&#xf0a7" />
														<option value="fa fa-arrow-circle-left" label="&#xf0a8" />
														<option value="fa fa-arrow-circle-right" label="&#xf0a9" />
														<option value="fa fa-arrow-circle-up" label="&#xf0aa" />
														<option value="fa fa-arrow-circle-down" label="&#xf0ab" />
														<option value="fa fa-globe" label="&#xf0ac" />
														<option value="fa fa-wrench" label="&#xf0ad" />
														<option value="fa fa-tasks" label="&#xf0ae" />
														<option value="fa fa-filter" label="&#xf0b0" />
														<option value="fa fa-briefcase" label="&#xf0b1" />
														<option value="fa fa-arrows-alt" label="&#xf0b2" />
														<option value="fa fa-users" label="&#xf0c0" />
														<option value="fa fa-link" label="&#xf0c1" />
														<option value="fa fa-cloud" label="&#xf0c2" />
														<option value="fa fa-flask" label="&#xf0c3" />
														<option value="fa fa-scissors" label="&#xf0c4" />
														<option value="fa fa-files-o" label="&#xf0c5" />
														<option value="fa fa-paperclip" label="&#xf0c6" />
														<option value="fa fa-floppy-o" label="&#xf0c7" />
														<option value="fa fa-square" label="&#xf0c8" />
														<option value="fa fa-bars" label="&#xf0c9" />
														<option value="fa fa-list-ul" label="&#xf0ca" />
														<option value="fa fa-list-ol" label="&#xf0cb" />
														<option value="fa fa-strikethrough" label="&#xf0cc" />
														<option value="fa fa-underline" label="&#xf0cd" />
														<option value="fa fa-table" label="&#xf0ce" />
														<option value="fa fa-magic" label="&#xf0d0" />
														<option value="fa fa-truck" label="&#xf0d1" />
														<option value="fa fa-pinterest" label="&#xf0d2" />
														<option value="fa fa-pinterest-square" label="&#xf0d3" />
														<option value="fa fa-google-plus-square" label="&#xf0d4" />
														<option value="fa fa-google-plus" label="&#xf0d5" />
														<option value="fa fa-money" label="&#xf0d6" />
														<option value="fa fa-caret-down" label="&#xf0d7" />
														<option value="fa fa-caret-up" label="&#xf0d8" />
														<option value="fa fa-caret-left" label="&#xf0d9" />
														<option value="fa fa-caret-right" label="&#xf0da" />
														<option value="fa fa-columns" label="&#xf0db" />
														<option value="fa fa-sort" label="&#xf0dc" />
														<option value="fa fa-sort-desc" label="&#xf0dd" />
														<option value="fa fa-sort-asc" label="&#xf0de" />
														<option value="fa fa-envelope" label="&#xf0e0" />
														<option value="fa fa-linkedin" label="&#xf0e1" />
														<option value="fa fa-undo" label="&#xf0e2" />
														<option value="fa fa-gavel" label="&#xf0e3" />
														<option value="fa fa-tachometer" label="&#xf0e4" />
														<option value="fa fa-comment-o" label="&#xf0e5" />
														<option value="fa fa-comments-o" label="&#xf0e6" />
														<option value="fa fa-bolt" label="&#xf0e7" />
														<option value="fa fa-sitemap" label="&#xf0e8" />
														<option value="fa fa-umbrella" label="&#xf0e9" />
														<option value="fa fa-clipboard" label="&#xf0ea" />
														<option value="fa fa-lightbulb-o" label="&#xf0eb" />
														<option value="fa fa-exchange" label="&#xf0ec" />
														<option value="fa fa-cloud-download" label="&#xf0ed" />
														<option value="fa fa-cloud-upload" label="&#xf0ee" />
														<option value="fa fa-user-md" label="&#xf0f0" />
														<option value="fa fa-stethoscope" label="&#xf0f1" />
														<option value="fa fa-suitcase" label="&#xf0f2" />
														<option value="fa fa-bell-o" label="&#xf0a2" />
														<option value="fa fa-coffee" label="&#xf0f4" />
														<option value="fa fa-cutlery" label="&#xf0f5" />
														<option value="fa fa-file-text-o" label="&#xf0f6" />
														<option value="fa fa-building-o" label="&#xf0f7" />
														<option value="fa fa-hospital-o" label="&#xf0f8" />
														<option value="fa fa-ambulance" label="&#xf0f9" />
														<option value="fa fa-medkit" label="&#xf0fa" />
														<option value="fa fa-fighter-jet" label="&#xf0fb" />
														<option value="fa fa-beer" label="&#xf0fc" />
														<option value="fa fa-h-square" label="&#xf0fd" />
														<option value="fa fa-plus-square" label="&#xf0fe" />
														<option value="fa fa-angle-double-left" label="&#xf100" />
														<option value="fa fa-angle-double-right" label="&#xf101" />
														<option value="fa fa-angle-double-up" label="&#xf102" />
														<option value="fa fa-angle-double-down" label="&#xf103" />
														<option value="fa fa-angle-left" label="&#xf104" />
														<option value="fa fa-angle-right" label="&#xf105" />
														<option value="fa fa-angle-up" label="&#xf106" />
														<option value="fa fa-angle-down" label="&#xf107" />
														<option value="fa fa-desktop" label="&#xf108" />
														<option value="fa fa-laptop" label="&#xf109" />
														<option value="fa fa-tablet" label="&#xf10a" />
														<option value="fa fa-mobile" label="&#xf10b" />
														<option value="fa fa-circle-o" label="&#xf10c" />
														<option value="fa fa-quote-left" label="&#xf10d" />
														<option value="fa fa-quote-right" label="&#xf10e" />
														<option value="fa fa-spinner" label="&#xf110" />
														<option value="fa fa-circle" label="&#xf111" />
														<option value="fa fa-reply" label="&#xf112" />
														<option value="fa fa-github-alt" label="&#xf113" />
														<option value="fa fa-folder-o" label="&#xf114" />
														<option value="fa fa-folder-open-o" label="&#xf115" />
														<option value="fa fa-smile-o" label="&#xf118" />
														<option value="fa fa-frown-o" label="&#xf119" />
														<option value="fa fa-meh-o" label="&#xf11a" />
														<option value="fa fa-gamepad" label="&#xf11b" />
														<option value="fa fa-keyboard-o" label="&#xf11c" />
														<option value="fa fa-flag-o" label="&#xf11d" />
														<option value="fa fa-flag-checkered" label="&#xf11e" />
														<option value="fa fa-terminal" label="&#xf120" />
														<option value="fa fa-code" label="&#xf121" />
														<option value="fa fa-reply-all" label="&#xf122" />
														<option value="fa fa-star-half-o" label="&#xf123" />
														<option value="fa fa-location-arrow" label="&#xf124" />
														<option value="fa fa-crop" label="&#xf125" />
														<option value="fa fa-code-fork" label="&#xf126" />
														<option value="fa fa-chain-broken" label="&#xf127" />
														<option value="fa fa-question" label="&#xf128" />
														<option value="fa fa-info" label="&#xf129" />
														<option value="fa fa-exclamation" label="&#xf12a" />
														<option value="fa fa-superscript" label="&#xf12b" />
														<option value="fa fa-subscript" label="&#xf12c" />
														<option value="fa fa-eraser" label="&#xf12d" />
														<option value="fa fa-puzzle-piece" label="&#xf12e" />
														<option value="fa fa-microphone" label="&#xf130" />
														<option value="fa fa-microphone-slash" label="&#xf131" />
														<option value="fa fa-shield" label="&#xf132" />
														<option value="fa fa-calendar-o" label="&#xf133" />
														<option value="fa fa-fire-extinguisher" label="&#xf134" />
														<option value="fa fa-rocket" label="&#xf135" />
														<option value="fa fa-maxcdn" label="&#xf136" />
														<option value="fa fa-chevron-circle-left" label="&#xf137" />
														<option value="fa fa-chevron-circle-right" label="&#xf138" />
														<option value="fa fa-chevron-circle-up" label="&#xf139" />
														<option value="fa fa-chevron-circle-down" label="&#xf13a" />
														<option value="fa fa-html5" label="&#xf13b" />
														<option value="fa fa-css3" label="&#xf13c" />
														<option value="fa fa-anchor" label="&#xf13d" />
														<option value="fa fa-unlock-alt" label="&#xf13e" />
														<option value="fa fa-bullseye" label="&#xf140" />
														<option value="fa fa-ellipsis-h" label="&#xf141" />
														<option value="fa fa-ellipsis-v" label="&#xf142" />
														<option value="fa fa-rss-square" label="&#xf143" />
														<option value="fa fa-play-circle" label="&#xf144" />
														<option value="fa fa-ticket" label="&#xf145" />
														<option value="fa fa-minus-square" label="&#xf146" />
														<option value="fa fa-minus-square-o" label="&#xf147" />
														<option value="fa fa-level-up" label="&#xf148" />
														<option value="fa fa-level-down" label="&#xf149" />
														<option value="fa fa-check-square" label="&#xf14a" />
														<option value="fa fa-pencil-square" label="&#xf14b" />
														<option value="fa fa-external-link-square" label="&#xf14c" />
														<option value="fa fa-share-square" label="&#xf14d" />
														<option value="fa fa-compass" label="&#xf14e" />
														<option value="fa fa-caret-square-o-down" label="&#xf150" />
														<option value="fa fa-caret-square-o-up" label="&#xf151" />
														<option value="fa fa-caret-square-o-right" label="&#xf152" />
														<option value="fa fa-eur" label="&#xf153" />
														<option value="fa fa-gbp" label="&#xf154" />
														<option value="fa fa-usd" label="&#xf155" />
														<option value="fa fa-inr" label="&#xf156" />
														<option value="fa fa-jpy" label="&#xf157" />
														<option value="fa fa-rub" label="&#xf158" />
														<option value="fa fa-krw" label="&#xf159" />
														<option value="fa fa-btc" label="&#xf15a" />
														<option value="fa fa-file" label="&#xf15b" />
														<option value="fa fa-file-text" label="&#xf15c" />
														<option value="fa fa-sort-alpha-asc" label="&#xf15d" />
														<option value="fa fa-sort-alpha-desc" label="&#xf15e" />
														<option value="fa fa-sort-amount-asc" label="&#xf160" />
														<option value="fa fa-sort-amount-desc" label="&#xf161" />
														<option value="fa fa-sort-numeric-asc" label="&#xf162" />
														<option value="fa fa-sort-numeric-desc" label="&#xf163" />
														<option value="fa fa-thumbs-up" label="&#xf164" />
														<option value="fa fa-thumbs-down" label="&#xf165" />
														<option value="fa fa-youtube-square" label="&#xf166" />
														<option value="fa fa-youtube" label="&#xf167" />
														<option value="fa fa-xing" label="&#xf168" />
														<option value="fa fa-xing-square" label="&#xf169" />
														<option value="fa fa-youtube-play" label="&#xf16a" />
														<option value="fa fa-dropbox" label="&#xf16b" />
														<option value="fa fa-stack-overflow" label="&#xf16c" />
														<option value="fa fa-instagram" label="&#xf16d" />
														<option value="fa fa-flickr" label="&#xf16e" />
														<option value="fa fa-adn" label="&#xf170" />
														<option value="fa fa-bitbucket" label="&#xf171" />
														<option value="fa fa-bitbucket-square" label="&#xf172" />
														<option value="fa fa-tumblr" label="&#xf173" />
														<option value="fa fa-tumblr-square" label="&#xf174" />
														<option value="fa fa-long-arrow-down" label="&#xf175" />
														<option value="fa fa-long-arrow-up" label="&#xf176" />
														<option value="fa fa-long-arrow-left" label="&#xf177" />
														<option value="fa fa-long-arrow-right" label="&#xf178" />
														<option value="fa fa-apple" label="&#xf179" />
														<option value="fa fa-windows" label="&#xf17a" />
														<option value="fa fa-android" label="&#xf17b" />
														<option value="fa fa-linux" label="&#xf17c" />
														<option value="fa fa-dribbble" label="&#xf17d" />
														<option value="fa fa-skype" label="&#xf17e" />
														<option value="fa fa-foursquare" label="&#xf180" />
														<option value="fa fa-trello" label="&#xf181" />
														<option value="fa fa-female" label="&#xf182" />
														<option value="fa fa-male" label="&#xf183" />
														<option value="fa fa-gratipay" label="&#xf184" />
														<option value="fa fa-sun-o" label="&#xf185" />
														<option value="fa fa-moon-o" label="&#xf186" />
														<option value="fa fa-archive" label="&#xf187" />
														<option value="fa fa-bug" label="&#xf188" />
														<option value="fa fa-vk" label="&#xf189" />
														<option value="fa fa-weibo" label="&#xf18a" />
														<option value="fa fa-renren" label="&#xf18b" />
														<option value="fa fa-pagelines" label="&#xf18c" />
														<option value="fa fa-stack-exchange" label="&#xf18d" />
														<option value="fa fa-arrow-circle-o-right" label="&#xf18e" />
														<option value="fa fa-arrow-circle-o-left" label="&#xf190" />
														<option value="fa fa-caret-square-o-left" label="&#xf191" />
														<option value="fa fa-dot-circle-o" label="&#xf192" />
														<option value="fa fa-wheelchair" label="&#xf193" />
														<option value="fa fa-vimeo-square" label="&#xf194" />
														<option value="fa fa-try" label="&#xf195" />
														<option value="fa fa-plus-square-o" label="&#xf196" />
														<option value="fa fa-space-shuttle" label="&#xf197" />
														<option value="fa fa-slack" label="&#xf198" />
														<option value="fa fa-envelope-square" label="&#xf199" />
														<option value="fa fa-wordpress" label="&#xf19a" />
														<option value="fa fa-openid" label="&#xf19b" />
														<option value="fa fa-university" label="&#xf19c" />
														<option value="fa fa-graduation-cap" label="&#xf19d" />
														<option value="fa fa-yahoo" label="&#xf19e" />
														<option value="fa fa-google" label="&#xf1a0" />
														<option value="fa fa-reddit" label="&#xf1a1" />
														<option value="fa fa-reddit-square" label="&#xf1a2" />
														<option value="fa fa-stumbleupon-circle" label="&#xf1a3" />
														<option value="fa fa-stumbleupon" label="&#xf1a4" />
														<option value="fa fa-delicious" label="&#xf1a5" />
														<option value="fa fa-digg" label="&#xf1a6" />
														<option value="fa fa-pied-piper" label="&#xf1a7" />
														<option value="fa fa-pied-piper-alt" label="&#xf1a8" />
														<option value="fa fa-drupal" label="&#xf1a9" />
														<option value="fa fa-joomla" label="&#xf1aa" />
														<option value="fa fa-language" label="&#xf1ab" />
														<option value="fa fa-fax" label="&#xf1ac" />
														<option value="fa fa-building" label="&#xf1ad" />
														<option value="fa fa-child" label="&#xf1ae" />
														<option value="fa fa-paw" label="&#xf1b0" />
														<option value="fa fa-spoon" label="&#xf1b1" />
														<option value="fa fa-cube" label="&#xf1b2" />
														<option value="fa fa-cubes" label="&#xf1b3" />
														<option value="fa fa-behance" label="&#xf1b4" />
														<option value="fa fa-behance-square" label="&#xf1b5" />
														<option value="fa fa-steam" label="&#xf1b6" />
														<option value="fa fa-steam-square" label="&#xf1b7" />
														<option value="fa fa-recycle" label="&#xf1b8" />
														<option value="fa fa-car" label="&#xf1b9" />
														<option value="fa fa-taxi" label="&#xf1ba" />
														<option value="fa fa-tree" label="&#xf1bb" />
														<option value="fa fa-spotify" label="&#xf1bc" />
														<option value="fa fa-deviantart" label="&#xf1bd" />
														<option value="fa fa-soundcloud" label="&#xf1be" />
														<option value="fa fa-database" label="&#xf1c0" />
														<option value="fa fa-file-pdf-o" label="&#xf1c1" />
														<option value="fa fa-file-word-o" label="&#xf1c2" />
														<option value="fa fa-file-excel-o" label="&#xf1c3" />
														<option value="fa fa-file-powerpoint-o" label="&#xf1c4" />
														<option value="fa fa-file-image-o" label="&#xf1c5" />
														<option value="fa fa-file-archive-o" label="&#xf1c6" />
														<option value="fa fa-file-audio-o" label="&#xf1c7" />
														<option value="fa fa-file-video-o" label="&#xf1c8" />
														<option value="fa fa-file-code-o" label="&#xf1c9" />
														<option value="fa fa-vine" label="&#xf1ca" />
														<option value="fa fa-codepen" label="&#xf1cb" />
														<option value="fa fa-jsfiddle" label="&#xf1cc" />
														<option value="fa fa-life-ring" label="&#xf1cd" />
														<option value="fa fa-circle-o-notch" label="&#xf1ce" />
														<option value="fa fa-rebel" label="&#xf1d0" />
														<option value="fa fa-empire" label="&#xf1d1" />
														<option value="fa fa-git-square" label="&#xf1d2" />
														<option value="fa fa-git" label="&#xf1d3" />
														<option value="fa fa-hacker-news" label="&#xf1d4" />
														<option value="fa fa-tencent-weibo" label="&#xf1d5" />
														<option value="fa fa-qq" label="&#xf1d6" />
														<option value="fa fa-weixin" label="&#xf1d7" />
														<option value="fa fa-paper-plane" label="&#xf1d8" />
														<option value="fa fa-paper-plane-o" label="&#xf1d9" />
														<option value="fa fa-history" label="&#xf1da" />
														<option value="fa fa-circle-thin" label="&#xf1db" />
														<option value="fa fa-header" label="&#xf1dc" />
														<option value="fa fa-paragraph" label="&#xf1dd" />
														<option value="fa fa-sliders" label="&#xf1de" />
														<option value="fa fa-share-alt" label="&#xf1e0" />
														<option value="fa fa-share-alt-square" label="&#xf1e1" />
														<option value="fa fa-bomb" label="&#xf1e2" />
														<option value="fa fa-futbol-o" label="&#xf1e3" />
														<option value="fa fa-tty" label="&#xf1e4" />
														<option value="fa fa-binoculars" label="&#xf1e5" />
														<option value="fa fa-plug" label="&#xf1e6" />
														<option value="fa fa-slideshare" label="&#xf1e7" />
														<option value="fa fa-twitch" label="&#xf1e8" />
														<option value="fa fa-yelp" label="&#xf1e9" />
														<option value="fa fa-newspaper-o" label="&#xf1ea" />
														<option value="fa fa-wifi" label="&#xf1eb" />
														<option value="fa fa-calculator" label="&#xf1ec" />
														<option value="fa fa-paypal" label="&#xf1ed" />
														<option value="fa fa-google-wallet" label="&#xf1ee" />
														<option value="fa fa-cc-visa" label="&#xf1f0" />
														<option value="fa fa-cc-mastercard" label="&#xf1f1" />
														<option value="fa fa-cc-discover" label="&#xf1f2" />
														<option value="fa fa-cc-amex" label="&#xf1f3" />
														<option value="fa fa-cc-paypal" label="&#xf1f4" />
														<option value="fa fa-cc-stripe" label="&#xf1f5" />
														<option value="fa fa-bell-slash" label="&#xf1f6" />
														<option value="fa fa-bell-slash-o" label="&#xf1f7" />
														<option value="fa fa-trash" label="&#xf1f8" />
														<option value="fa fa-copyright" label="&#xf1f9" />
														<option value="fa fa-at" label="&#xf1fa" />
														<option value="fa fa-eyedropper" label="&#xf1fb" />
														<option value="fa fa-paint-brush" label="&#xf1fc" />
														<option value="fa fa-birthday-cake" label="&#xf1fd" />
														<option value="fa fa-area-chart" label="&#xf1fe" />
														<option value="fa fa-pie-chart" label="&#xf200" />
														<option value="fa fa-line-chart" label="&#xf201" />
														<option value="fa fa-lastfm" label="&#xf202" />
														<option value="fa fa-lastfm-square" label="&#xf203" />
														<option value="fa fa-toggle-off" label="&#xf204" />
														<option value="fa fa-toggle-on" label="&#xf205" />
														<option value="fa fa-bicycle" label="&#xf206" />
														<option value="fa fa-bus" label="&#xf207" />
														<option value="fa fa-ioxhost" label="&#xf208" />
														<option value="fa fa-angellist" label="&#xf209" />
														<option value="fa fa-cc" label="&#xf20a" />
														<option value="fa fa-ils" label="&#xf20b" />
														<option value="fa fa-meanpath" label="&#xf20c" />
														<option value="fa fa-buysellads" label="&#xf20d" />
														<option value="fa fa-connectdevelop" label="&#xf20e" />
														<option value="fa fa-dashcube" label="&#xf210" />
														<option value="fa fa-forumbee" label="&#xf211" />
														<option value="fa fa-leanpub" label="&#xf212" />
														<option value="fa fa-sellsy" label="&#xf213" />
														<option value="fa fa-shirtsinbulk" label="&#xf214" />
														<option value="fa fa-simplybuilt" label="&#xf215" />
														<option value="fa fa-skyatlas" label="&#xf216" />
														<option value="fa fa-cart-plus" label="&#xf217" />
														<option value="fa fa-cart-arrow-down" label="&#xf218" />
														<option value="fa fa-diamond" label="&#xf219" />
														<option value="fa fa-ship" label="&#xf21a" />
														<option value="fa fa-user-secret" label="&#xf21b" />
														<option value="fa fa-motorcycle" label="&#xf21c" />
														<option value="fa fa-street-view" label="&#xf21d" />
														<option value="fa fa-heartbeat" label="&#xf21e" />
														<option value="fa fa-venus" label="&#xf221" />
														<option value="fa fa-mars" label="&#xf222" />
														<option value="fa fa-mercury" label="&#xf223" />
														<option value="fa fa-transgender" label="&#xf224" />
														<option value="fa fa-transgender-alt" label="&#xf225" />
														<option value="fa fa-venus-double" label="&#xf226" />
														<option value="fa fa-mars-double" label="&#xf227" />
														<option value="fa fa-venus-mars" label="&#xf228" />
														<option value="fa fa-mars-stroke" label="&#xf229" />
														<option value="fa fa-mars-stroke-v" label="&#xf22a" />
														<option value="fa fa-mars-stroke-h" label="&#xf22b" />
														<option value="fa fa-neuter" label="&#xf22c" />
														<option value="fa fa-facebook-official" label="&#xf230" />
														<option value="fa fa-pinterest-p" label="&#xf231" />
														<option value="fa fa-whatsapp" label="&#xf232" />
														<option value="fa fa-server" label="&#xf233" />
														<option value="fa fa-user-plus" label="&#xf234" />
														<option value="fa fa-user-times" label="&#xf235" />
														<option value="fa fa-bed" label="&#xf236" />
														<option value="fa fa-viacoin" label="&#xf237" />
														<option value="fa fa-train" label="&#xf238" />
														<option value="fa fa-subway" label="&#xf239" />
														<option value="fa fa-medium" label="&#xf23a" />
													</select>

												</div>
											</div>
											<div class="form-group">

												<label for="inputEmail3" class="col-md-3 control-label">h5-label-4</label>
												<div class="col-md-9">
													<input id="h5label4" name="h5label4" type="text"
														value="${basics.h5Label4}" placeholder="S3-Label-3"
														class="form-control">
												</div>
											</div>

											<div class="form-group">

												<label for="inputEmail3" class="col-md-3 control-label">h5-label-4-description</label>
												<div class="col-md-9">
													<input id="h5Description4" name="h5Description4"
														value="${basics.h5Label8}" type="text"
														placeholder="description" class="form-control">
												</div>
											</div>


											<div class="form-group">
												<div class="col-md-offset-3 col-md-9">
													<button type="submit" class="btn btn-default">Update/Save</button>
												</div>
											</div>
									</form>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>




		<div id="messages" class="tab-pane l-spaced-vertical">
			<div class="l-page-header">
				<h2 class="l-page-title"></h2>
				<!--BREADCRUMB-->
				<ul class="breadcrumb t-breadcrumb-page">
					<li></li>
					<li></li>
					<li class="active"></li>
				</ul>
			</div>
			<div class="l-spaced">
				<div class="l-row">
					<div class="l-box">
						<div class="l-box-header">
							<h2 class="l-box-title">
								<span>Headers</span>
							</h2>
							<ul class="l-box-options">
								<li><a href="#"><i class="fa fa-cogs"></i></a></li>
								<li><a href="#" data-ason-type="fullscreen"
									data-ason-target=".l-box" data-ason-content="true"
									class="ason-widget"></a></li>
								<li><a
									href="${pageContext.request.contextPath}/admin/ListOfField.io"
									data-ason-type="refresh" data-ason-target=".l-box"
									data-ason-duration="1000" class="ason-widget"><i
										class="fa fa-rotate-right"></i></a></li>
								<li><a href="#" data-ason-type="toggle"
									data-ason-find=".l-box" data-ason-target=".l-box-body"
									data-ason-content="true" data-ason-duration="200"
									class="ason-widget"></a></li>
								<li><a href="#" data-ason-type="delete"
									data-ason-target=".l-box" data-ason-content="true"
									data-ason-animation="fadeOut" class="ason-widget"></a></li>
							</ul>
						</div>
						<script>
							function myFunction() {
								document.getElementById("icon1").value = document
										.getElementById('h1Img1').value;
								document.getElementById("icon2").value = document
										.getElementById('h1Img2').value;
								document.getElementById("icon3").value = document
										.getElementById('h1Img3').value;
								document.getElementById("icon4").value = document
										.getElementById('h1Img4').value;
								document.getElementById("icon5").value = document
										.getElementById('h1Img5').value;
								document.getElementById("icon6").value = document
										.getElementById('h1Img6').value;
								document.getElementById("icon7").value = document
										.getElementById('h1Img7').value;
								document.getElementById("icon8").value = document
										.getElementById('h1Img8').value;
							};
						</script>
						<input id="h1Img1" name="h1Img1" type="hidden"
							value="${basics.h1Img1}"> <input id="h1Img2"
							name="h1Img2" type="hidden" value="${basics.h1Img2}"> <input
							id="h1Img3" name="h1Img3" type="hidden" value="${basics.h1Img3}">
						<input id="h1Img4" name="h1Img4" type="hidden"
							value="${basics.h1Img4}"> <input id="h1Img5"
							name="h1Img5" type="hidden" value="${basics.h1Img5}"> <input
							id="h1Img6" name="h1Img6" type="hidden" value="${basics.h1Img6}">
						<input id="h1Img7" name="h1Img7" type="hidden"
							value="${basics.h1Img7}"> <input id="h1Img8"
							name="h1Img8" type="hidden" value="${basics.h1Img8}">

						<div class="l-box-body">
							<div class="l-spaced">
								<form
									action="${pageContext.request.contextPath}/admin/updateBasicstab3.io"
									method="Post" role="form" class="form-horizontal">
									<div class="form-group">
										<div class="form-group">
											<label for="inputEmail3" class="col-md-3 control-label">Header-1</label>
											<div class="col-md-9">
												<input id="header1" name="header1" type="text"
													value="${basics.heading1}" placeholder="Header"
													class="form-control">
											</div>
										</div>
										<div class="form-group">

											<label for="inputEmail3" class="col-md-3 control-label">h1-Description</label>
											<div class="col-md-9">
												<textarea id="h1Description" name="h1Description"
													maxlength="500" rows="4" cols="100">${basics.h1Label17}</textarea>

											</div>
										</div>
										<div class="form-group">
											<label for="inputEmail3" class="col-md-3 control-label">h1-icon-1</label>
											<div class="col-md-9">
												<select class="fa-select" name="icon1" id="icon1">
													<option label="Select icon" />
													<option value="fa fa-glass" label="&#xf000" />
													<option value="fa fa-music" label="&#xf001" />
													<option value="fa fa-search" label="&#xf002" />
													<option value="fa fa-envelope-o" label="&#xf003" />
													<option value="fa fa-heart" label="&#xf004" />
													<option value="fa fa-star" label="&#xf005" />
													<option value="fa fa-star-o" label="&#xf006" />
													<option value="fa fa-user" label="&#xf007" />
													<option value="fa fa-film" label="&#xf008" />
													<option value="fa fa-th-large" label="&#xf009" />
													<option value="fa fa-th" label="&#xf00a" />
													<option value="fa fa-th-list" label="&#xf00b" />
													<option value="fa fa-check" label="&#xf00c" />
													<option value="fa fa-times" label="&#xf00d" />
													<option value="fa fa-search-plus" label="&#xf00e" />
													<option value="fa fa-search-minus" label="&#xf010" />
													<option value="fa fa-power-off" label="&#xf011" />
													<option value="fa fa-signal" label="&#xf012" />
													<option value="fa fa-cog" label="&#xf013" />
													<option value="fa fa-trash-o" label="&#xf014" />
													<option value="fa fa-home" label="&#xf015" />
													<option value="fa fa-file-o" label="&#xf016" />
													<option value="fa fa-clock-o" label="&#xf017" />
													<option value="fa fa-road" label="&#xf018" />
													<option value="fa fa-download" label="&#xf019" />
													<option value="fa fa-arrow-circle-o-down" label="&#xf01a" />
													<option value="fa fa-arrow-circle-o-up" label="&#xf01b" />
													<option value="fa fa-inbox" label="&#xf01c" />
													<option value="fa fa-play-circle-o" label="&#xf01d" />
													<option value="fa fa-repeat" label="&#xf01e" />
													<option value="fa fa-refresh" label="&#xf021" />
													<option value="fa fa-list-alt" label="&#xf022" />
													<option value="fa fa-lock" label="&#xf023" />
													<option value="fa fa-flag" label="&#xf024" />
													<option value="fa fa-headphones" label="&#xf025" />
													<option value="fa fa-volume-off" label="&#xf026" />
													<option value="fa fa-volume-down" label="&#xf027" />
													<option value="fa fa-volume-up" label="&#xf028" />
													<option value="fa fa-qrcode" label="&#xf029" />
													<option value="fa fa-barcode" label="&#xf02a" />
													<option value="fa fa-tag" label="&#xf02b" />
													<option value="fa fa-tags" label="&#xf02c" />
													<option value="fa fa-book" label="&#xf02d" />
													<option value="fa fa-bookmark" label="&#xf02e" />
													<option value="fa fa-print" label="&#xf02f" />
													<option value="fa fa-camera" label="&#xf030" />
													<option value="fa fa-font" label="&#xf031" />
													<option value="fa fa-bold" label="&#xf032" />
													<option value="fa fa-italic" label="&#xf033" />
													<option value="fa fa-text-height" label="&#xf034" />
													<option value="fa fa-text-width" label="&#xf035" />
													<option value="fa fa-align-left" label="&#xf036" />
													<option value="fa fa-align-center" label="&#xf037" />
													<option value="fa fa-align-right" label="&#xf038" />
													<option value="fa fa-align-justify" label="&#xf039" />
													<option value="fa fa-list" label="&#xf03a" />
													<option value="fa fa-outdent" label="&#xf03b" />
													<option value="fa fa-indent" label="&#xf03c" />
													<option value="fa fa-video-camera" label="&#xf03d" />
													<option value="fa fa-picture-o" label="&#xf03e" />
													<option value="fa fa-pencil" label="&#xf040" />
													<option value="fa fa-map-marker" label="&#xf041" />
													<option value="fa fa-adjust" label="&#xf042" />
													<option value="fa fa-tint" label="&#xf043" />
													<option value="fa fa-pencil-square-o" label="&#xf044" />
													<option value="fa fa-share-square-o" label="&#xf045" />
													<option value="fa fa-check-square-o" label="&#xf046" />
													<option value="fa fa-arrows" label="&#xf047" />
													<option value="fa fa-step-backward" label="&#xf048" />
													<option value="fa fa-fast-backward" label="&#xf049" />
													<option value="fa fa-backward" label="&#xf04a" />
													<option value="fa fa-play" label="&#xf04b" />
													<option value="fa fa-pause" label="&#xf04c" />
													<option value="fa fa-stop" label="&#xf04d" />
													<option value="fa fa-forward" label="&#xf04e" />
													<option value="fa fa-fast-forward" label="&#xf050" />
													<option value="fa fa-step-forward" label="&#xf051" />
													<option value="fa fa-eject" label="&#xf052" />
													<option value="fa fa-chevron-left" label="&#xf053" />
													<option value="fa fa-chevron-right" label="&#xf054" />
													<option value="fa fa-plus-circle" label="&#xf055" />
													<option value="fa fa-minus-circle" label="&#xf056" />
													<option value="fa fa-times-circle" label="&#xf057" />
													<option value="fa fa-check-circle" label="&#xf058" />
													<option value="fa fa-question-circle" label="&#xf059" />
													<option value="fa fa-info-circle" label="&#xf05a" />
													<option value="fa fa-crosshairs" label="&#xf05b" />
													<option value="fa fa-times-circle-o" label="&#xf05c" />
													<option value="fa fa-check-circle-o" label="&#xf05d" />
													<option value="fa fa-ban" label="&#xf05e" />
													<option value="fa fa-arrow-left" label="&#xf060" />
													<option value="fa fa-arrow-right" label="&#xf061" />
													<option value="fa fa-arrow-up" label="&#xf062" />
													<option value="fa fa-arrow-down" label="&#xf063" />
													<option value="fa fa-share" label="&#xf064" />
													<option value="fa fa-expand" label="&#xf065" />
													<option value="fa fa-compress" label="&#xf066" />
													<option value="fa fa-plus" label="&#xf067" />
													<option value="fa fa-minus" label="&#xf068" />
													<option value="fa fa-asterisk" label="&#xf069" />
													<option value="fa fa-exclamation-circle" label="&#xf06a" />
													<option value="fa fa-gift" label="&#xf06b" />
													<option value="fa fa-leaf" label="&#xf06c" />
													<option value="fa fa-fire" label="&#xf06d" />
													<option value="fa fa-eye" label="&#xf06e" />
													<option value="fa fa-eye-slash" label="&#xf070" />
													<option value="fa fa-exclamation-triangle" label="&#xf071" />
													<option value="fa fa-plane" label="&#xf072" />
													<option value="fa fa-calendar" label="&#xf073" />
													<option value="fa fa-random" label="&#xf074" />
													<option value="fa fa-comment" label="&#xf075" />
													<option value="fa fa-magnet" label="&#xf076" />
													<option value="fa fa-chevron-up" label="&#xf077" />
													<option value="fa fa-chevron-down" label="&#xf078" />
													<option value="fa fa-retweet" label="&#xf079" />
													<option value="fa fa-shopping-cart" label="&#xf07a" />
													<option value="fa fa-folder" label="&#xf07b" />
													<option value="fa fa-folder-open" label="&#xf07c" />
													<option value="fa fa-arrows-v" label="&#xf07d" />
													<option value="fa fa-arrows-h" label="&#xf07e" />
													<option value="fa fa-bar-chart" label="&#xf080" />
													<option value="fa fa-twitter-square" label="&#xf081" />
													<option value="fa fa-facebook-square" label="&#xf082" />
													<option value="fa fa-camera-retro" label="&#xf083" />
													<option value="fa fa-key" label="&#xf084" />
													<option value="fa fa-cogs" label="&#xf085" />
													<option value="fa fa-comments" label="&#xf086" />
													<option value="fa fa-thumbs-o-up" label="&#xf087" />
													<option value="fa fa-thumbs-o-down" label="&#xf088" />
													<option value="fa fa-star-half" label="&#xf089" />
													<option value="fa fa-heart-o" label="&#xf08a" />
													<option value="fa fa-sign-out" label="&#xf08b" />
													<option value="fa fa-linkedin-square" label="&#xf08c" />
													<option value="fa fa-thumb-tack" label="&#xf08d" />
													<option value="fa fa-external-link" label="&#xf08e" />
													<option value="fa fa-sign-in" label="&#xf090" />
													<option value="fa fa-trophy" label="&#xf091" />
													<option value="fa fa-github-square" label="&#xf092" />
													<option value="fa fa-upload" label="&#xf093" />
													<option value="fa fa-lemon-o" label="&#xf094" />
													<option value="fa fa-phone" label="&#xf095" />
													<option value="fa fa-square-o" label="&#xf096" />
													<option value="fa fa-bookmark-o" label="&#xf097" />
													<option value="fa fa-phone-square" label="&#xf098" />
													<option value="fa fa-twitter" label="&#xf099" />
													<option value="fa fa-facebook" label="&#xf09a" />
													<option value="fa fa-github" label="&#xf09b" />
													<option value="fa fa-unlock" label="&#xf09c" />
													<option value="fa fa-credit-card" label="&#xf09d" />
													<option value="fa fa-rss" label="&#xf09e" />
													<option value="fa fa-hdd-o" label="&#xf0a0" />
													<option value="fa fa-bullhorn" label="&#xf0a1" />
													<option value="fa fa-bell" label="&#xf0f3" />
													<option value="fa fa-certificate" label="&#xf0a3" />
													<option value="fa fa-hand-o-right" label="&#xf0a4" />
													<option value="fa fa-hand-o-left" label="&#xf0a5" />
													<option value="fa fa-hand-o-up" label="&#xf0a6" />
													<option value="fa fa-hand-o-down" label="&#xf0a7" />
													<option value="fa fa-arrow-circle-left" label="&#xf0a8" />
													<option value="fa fa-arrow-circle-right" label="&#xf0a9" />
													<option value="fa fa-arrow-circle-up" label="&#xf0aa" />
													<option value="fa fa-arrow-circle-down" label="&#xf0ab" />
													<option value="fa fa-globe" label="&#xf0ac" />
													<option value="fa fa-wrench" label="&#xf0ad" />
													<option value="fa fa-tasks" label="&#xf0ae" />
													<option value="fa fa-filter" label="&#xf0b0" />
													<option value="fa fa-briefcase" label="&#xf0b1" />
													<option value="fa fa-arrows-alt" label="&#xf0b2" />
													<option value="fa fa-users" label="&#xf0c0" />
													<option value="fa fa-link" label="&#xf0c1" />
													<option value="fa fa-cloud" label="&#xf0c2" />
													<option value="fa fa-flask" label="&#xf0c3" />
													<option value="fa fa-scissors" label="&#xf0c4" />
													<option value="fa fa-files-o" label="&#xf0c5" />
													<option value="fa fa-paperclip" label="&#xf0c6" />
													<option value="fa fa-floppy-o" label="&#xf0c7" />
													<option value="fa fa-square" label="&#xf0c8" />
													<option value="fa fa-bars" label="&#xf0c9" />
													<option value="fa fa-list-ul" label="&#xf0ca" />
													<option value="fa fa-list-ol" label="&#xf0cb" />
													<option value="fa fa-strikethrough" label="&#xf0cc" />
													<option value="fa fa-underline" label="&#xf0cd" />
													<option value="fa fa-table" label="&#xf0ce" />
													<option value="fa fa-magic" label="&#xf0d0" />
													<option value="fa fa-truck" label="&#xf0d1" />
													<option value="fa fa-pinterest" label="&#xf0d2" />
													<option value="fa fa-pinterest-square" label="&#xf0d3" />
													<option value="fa fa-google-plus-square" label="&#xf0d4" />
													<option value="fa fa-google-plus" label="&#xf0d5" />
													<option value="fa fa-money" label="&#xf0d6" />
													<option value="fa fa-caret-down" label="&#xf0d7" />
													<option value="fa fa-caret-up" label="&#xf0d8" />
													<option value="fa fa-caret-left" label="&#xf0d9" />
													<option value="fa fa-caret-right" label="&#xf0da" />
													<option value="fa fa-columns" label="&#xf0db" />
													<option value="fa fa-sort" label="&#xf0dc" />
													<option value="fa fa-sort-desc" label="&#xf0dd" />
													<option value="fa fa-sort-asc" label="&#xf0de" />
													<option value="fa fa-envelope" label="&#xf0e0" />
													<option value="fa fa-linkedin" label="&#xf0e1" />
													<option value="fa fa-undo" label="&#xf0e2" />
													<option value="fa fa-gavel" label="&#xf0e3" />
													<option value="fa fa-tachometer" label="&#xf0e4" />
													<option value="fa fa-comment-o" label="&#xf0e5" />
													<option value="fa fa-comments-o" label="&#xf0e6" />
													<option value="fa fa-bolt" label="&#xf0e7" />
													<option value="fa fa-sitemap" label="&#xf0e8" />
													<option value="fa fa-umbrella" label="&#xf0e9" />
													<option value="fa fa-clipboard" label="&#xf0ea" />
													<option value="fa fa-lightbulb-o" label="&#xf0eb" />
													<option value="fa fa-exchange" label="&#xf0ec" />
													<option value="fa fa-cloud-download" label="&#xf0ed" />
													<option value="fa fa-cloud-upload" label="&#xf0ee" />
													<option value="fa fa-user-md" label="&#xf0f0" />
													<option value="fa fa-stethoscope" label="&#xf0f1" />
													<option value="fa fa-suitcase" label="&#xf0f2" />
													<option value="fa fa-bell-o" label="&#xf0a2" />
													<option value="fa fa-coffee" label="&#xf0f4" />
													<option value="fa fa-cutlery" label="&#xf0f5" />
													<option value="fa fa-file-text-o" label="&#xf0f6" />
													<option value="fa fa-building-o" label="&#xf0f7" />
													<option value="fa fa-hospital-o" label="&#xf0f8" />
													<option value="fa fa-ambulance" label="&#xf0f9" />
													<option value="fa fa-medkit" label="&#xf0fa" />
													<option value="fa fa-fighter-jet" label="&#xf0fb" />
													<option value="fa fa-beer" label="&#xf0fc" />
													<option value="fa fa-h-square" label="&#xf0fd" />
													<option value="fa fa-plus-square" label="&#xf0fe" />
													<option value="fa fa-angle-double-left" label="&#xf100" />
													<option value="fa fa-angle-double-right" label="&#xf101" />
													<option value="fa fa-angle-double-up" label="&#xf102" />
													<option value="fa fa-angle-double-down" label="&#xf103" />
													<option value="fa fa-angle-left" label="&#xf104" />
													<option value="fa fa-angle-right" label="&#xf105" />
													<option value="fa fa-angle-up" label="&#xf106" />
													<option value="fa fa-angle-down" label="&#xf107" />
													<option value="fa fa-desktop" label="&#xf108" />
													<option value="fa fa-laptop" label="&#xf109" />
													<option value="fa fa-tablet" label="&#xf10a" />
													<option value="fa fa-mobile" label="&#xf10b" />
													<option value="fa fa-circle-o" label="&#xf10c" />
													<option value="fa fa-quote-left" label="&#xf10d" />
													<option value="fa fa-quote-right" label="&#xf10e" />
													<option value="fa fa-spinner" label="&#xf110" />
													<option value="fa fa-circle" label="&#xf111" />
													<option value="fa fa-reply" label="&#xf112" />
													<option value="fa fa-github-alt" label="&#xf113" />
													<option value="fa fa-folder-o" label="&#xf114" />
													<option value="fa fa-folder-open-o" label="&#xf115" />
													<option value="fa fa-smile-o" label="&#xf118" />
													<option value="fa fa-frown-o" label="&#xf119" />
													<option value="fa fa-meh-o" label="&#xf11a" />
													<option value="fa fa-gamepad" label="&#xf11b" />
													<option value="fa fa-keyboard-o" label="&#xf11c" />
													<option value="fa fa-flag-o" label="&#xf11d" />
													<option value="fa fa-flag-checkered" label="&#xf11e" />
													<option value="fa fa-terminal" label="&#xf120" />
													<option value="fa fa-code" label="&#xf121" />
													<option value="fa fa-reply-all" label="&#xf122" />
													<option value="fa fa-star-half-o" label="&#xf123" />
													<option value="fa fa-location-arrow" label="&#xf124" />
													<option value="fa fa-crop" label="&#xf125" />
													<option value="fa fa-code-fork" label="&#xf126" />
													<option value="fa fa-chain-broken" label="&#xf127" />
													<option value="fa fa-question" label="&#xf128" />
													<option value="fa fa-info" label="&#xf129" />
													<option value="fa fa-exclamation" label="&#xf12a" />
													<option value="fa fa-superscript" label="&#xf12b" />
													<option value="fa fa-subscript" label="&#xf12c" />
													<option value="fa fa-eraser" label="&#xf12d" />
													<option value="fa fa-puzzle-piece" label="&#xf12e" />
													<option value="fa fa-microphone" label="&#xf130" />
													<option value="fa fa-microphone-slash" label="&#xf131" />
													<option value="fa fa-shield" label="&#xf132" />
													<option value="fa fa-calendar-o" label="&#xf133" />
													<option value="fa fa-fire-extinguisher" label="&#xf134" />
													<option value="fa fa-rocket" label="&#xf135" />
													<option value="fa fa-maxcdn" label="&#xf136" />
													<option value="fa fa-chevron-circle-left" label="&#xf137" />
													<option value="fa fa-chevron-circle-right" label="&#xf138" />
													<option value="fa fa-chevron-circle-up" label="&#xf139" />
													<option value="fa fa-chevron-circle-down" label="&#xf13a" />
													<option value="fa fa-html5" label="&#xf13b" />
													<option value="fa fa-css3" label="&#xf13c" />
													<option value="fa fa-anchor" label="&#xf13d" />
													<option value="fa fa-unlock-alt" label="&#xf13e" />
													<option value="fa fa-bullseye" label="&#xf140" />
													<option value="fa fa-ellipsis-h" label="&#xf141" />
													<option value="fa fa-ellipsis-v" label="&#xf142" />
													<option value="fa fa-rss-square" label="&#xf143" />
													<option value="fa fa-play-circle" label="&#xf144" />
													<option value="fa fa-ticket" label="&#xf145" />
													<option value="fa fa-minus-square" label="&#xf146" />
													<option value="fa fa-minus-square-o" label="&#xf147" />
													<option value="fa fa-level-up" label="&#xf148" />
													<option value="fa fa-level-down" label="&#xf149" />
													<option value="fa fa-check-square" label="&#xf14a" />
													<option value="fa fa-pencil-square" label="&#xf14b" />
													<option value="fa fa-external-link-square" label="&#xf14c" />
													<option value="fa fa-share-square" label="&#xf14d" />
													<option value="fa fa-compass" label="&#xf14e" />
													<option value="fa fa-caret-square-o-down" label="&#xf150" />
													<option value="fa fa-caret-square-o-up" label="&#xf151" />
													<option value="fa fa-caret-square-o-right" label="&#xf152" />
													<option value="fa fa-eur" label="&#xf153" />
													<option value="fa fa-gbp" label="&#xf154" />
													<option value="fa fa-usd" label="&#xf155" />
													<option value="fa fa-inr" label="&#xf156" />
													<option value="fa fa-jpy" label="&#xf157" />
													<option value="fa fa-rub" label="&#xf158" />
													<option value="fa fa-krw" label="&#xf159" />
													<option value="fa fa-btc" label="&#xf15a" />
													<option value="fa fa-file" label="&#xf15b" />
													<option value="fa fa-file-text" label="&#xf15c" />
													<option value="fa fa-sort-alpha-asc" label="&#xf15d" />
													<option value="fa fa-sort-alpha-desc" label="&#xf15e" />
													<option value="fa fa-sort-amount-asc" label="&#xf160" />
													<option value="fa fa-sort-amount-desc" label="&#xf161" />
													<option value="fa fa-sort-numeric-asc" label="&#xf162" />
													<option value="fa fa-sort-numeric-desc" label="&#xf163" />
													<option value="fa fa-thumbs-up" label="&#xf164" />
													<option value="fa fa-thumbs-down" label="&#xf165" />
													<option value="fa fa-youtube-square" label="&#xf166" />
													<option value="fa fa-youtube" label="&#xf167" />
													<option value="fa fa-xing" label="&#xf168" />
													<option value="fa fa-xing-square" label="&#xf169" />
													<option value="fa fa-youtube-play" label="&#xf16a" />
													<option value="fa fa-dropbox" label="&#xf16b" />
													<option value="fa fa-stack-overflow" label="&#xf16c" />
													<option value="fa fa-instagram" label="&#xf16d" />
													<option value="fa fa-flickr" label="&#xf16e" />
													<option value="fa fa-adn" label="&#xf170" />
													<option value="fa fa-bitbucket" label="&#xf171" />
													<option value="fa fa-bitbucket-square" label="&#xf172" />
													<option value="fa fa-tumblr" label="&#xf173" />
													<option value="fa fa-tumblr-square" label="&#xf174" />
													<option value="fa fa-long-arrow-down" label="&#xf175" />
													<option value="fa fa-long-arrow-up" label="&#xf176" />
													<option value="fa fa-long-arrow-left" label="&#xf177" />
													<option value="fa fa-long-arrow-right" label="&#xf178" />
													<option value="fa fa-apple" label="&#xf179" />
													<option value="fa fa-windows" label="&#xf17a" />
													<option value="fa fa-android" label="&#xf17b" />
													<option value="fa fa-linux" label="&#xf17c" />
													<option value="fa fa-dribbble" label="&#xf17d" />
													<option value="fa fa-skype" label="&#xf17e" />
													<option value="fa fa-foursquare" label="&#xf180" />
													<option value="fa fa-trello" label="&#xf181" />
													<option value="fa fa-female" label="&#xf182" />
													<option value="fa fa-male" label="&#xf183" />
													<option value="fa fa-gratipay" label="&#xf184" />
													<option value="fa fa-sun-o" label="&#xf185" />
													<option value="fa fa-moon-o" label="&#xf186" />
													<option value="fa fa-archive" label="&#xf187" />
													<option value="fa fa-bug" label="&#xf188" />
													<option value="fa fa-vk" label="&#xf189" />
													<option value="fa fa-weibo" label="&#xf18a" />
													<option value="fa fa-renren" label="&#xf18b" />
													<option value="fa fa-pagelines" label="&#xf18c" />
													<option value="fa fa-stack-exchange" label="&#xf18d" />
													<option value="fa fa-arrow-circle-o-right" label="&#xf18e" />
													<option value="fa fa-arrow-circle-o-left" label="&#xf190" />
													<option value="fa fa-caret-square-o-left" label="&#xf191" />
													<option value="fa fa-dot-circle-o" label="&#xf192" />
													<option value="fa fa-wheelchair" label="&#xf193" />
													<option value="fa fa-vimeo-square" label="&#xf194" />
													<option value="fa fa-try" label="&#xf195" />
													<option value="fa fa-plus-square-o" label="&#xf196" />
													<option value="fa fa-space-shuttle" label="&#xf197" />
													<option value="fa fa-slack" label="&#xf198" />
													<option value="fa fa-envelope-square" label="&#xf199" />
													<option value="fa fa-wordpress" label="&#xf19a" />
													<option value="fa fa-openid" label="&#xf19b" />
													<option value="fa fa-university" label="&#xf19c" />
													<option value="fa fa-graduation-cap" label="&#xf19d" />
													<option value="fa fa-yahoo" label="&#xf19e" />
													<option value="fa fa-google" label="&#xf1a0" />
													<option value="fa fa-reddit" label="&#xf1a1" />
													<option value="fa fa-reddit-square" label="&#xf1a2" />
													<option value="fa fa-stumbleupon-circle" label="&#xf1a3" />
													<option value="fa fa-stumbleupon" label="&#xf1a4" />
													<option value="fa fa-delicious" label="&#xf1a5" />
													<option value="fa fa-digg" label="&#xf1a6" />
													<option value="fa fa-pied-piper" label="&#xf1a7" />
													<option value="fa fa-pied-piper-alt" label="&#xf1a8" />
													<option value="fa fa-drupal" label="&#xf1a9" />
													<option value="fa fa-joomla" label="&#xf1aa" />
													<option value="fa fa-language" label="&#xf1ab" />
													<option value="fa fa-fax" label="&#xf1ac" />
													<option value="fa fa-building" label="&#xf1ad" />
													<option value="fa fa-child" label="&#xf1ae" />
													<option value="fa fa-paw" label="&#xf1b0" />
													<option value="fa fa-spoon" label="&#xf1b1" />
													<option value="fa fa-cube" label="&#xf1b2" />
													<option value="fa fa-cubes" label="&#xf1b3" />
													<option value="fa fa-behance" label="&#xf1b4" />
													<option value="fa fa-behance-square" label="&#xf1b5" />
													<option value="fa fa-steam" label="&#xf1b6" />
													<option value="fa fa-steam-square" label="&#xf1b7" />
													<option value="fa fa-recycle" label="&#xf1b8" />
													<option value="fa fa-car" label="&#xf1b9" />
													<option value="fa fa-taxi" label="&#xf1ba" />
													<option value="fa fa-tree" label="&#xf1bb" />
													<option value="fa fa-spotify" label="&#xf1bc" />
													<option value="fa fa-deviantart" label="&#xf1bd" />
													<option value="fa fa-soundcloud" label="&#xf1be" />
													<option value="fa fa-database" label="&#xf1c0" />
													<option value="fa fa-file-pdf-o" label="&#xf1c1" />
													<option value="fa fa-file-word-o" label="&#xf1c2" />
													<option value="fa fa-file-excel-o" label="&#xf1c3" />
													<option value="fa fa-file-powerpoint-o" label="&#xf1c4" />
													<option value="fa fa-file-image-o" label="&#xf1c5" />
													<option value="fa fa-file-archive-o" label="&#xf1c6" />
													<option value="fa fa-file-audio-o" label="&#xf1c7" />
													<option value="fa fa-file-video-o" label="&#xf1c8" />
													<option value="fa fa-file-code-o" label="&#xf1c9" />
													<option value="fa fa-vine" label="&#xf1ca" />
													<option value="fa fa-codepen" label="&#xf1cb" />
													<option value="fa fa-jsfiddle" label="&#xf1cc" />
													<option value="fa fa-life-ring" label="&#xf1cd" />
													<option value="fa fa-circle-o-notch" label="&#xf1ce" />
													<option value="fa fa-rebel" label="&#xf1d0" />
													<option value="fa fa-empire" label="&#xf1d1" />
													<option value="fa fa-git-square" label="&#xf1d2" />
													<option value="fa fa-git" label="&#xf1d3" />
													<option value="fa fa-hacker-news" label="&#xf1d4" />
													<option value="fa fa-tencent-weibo" label="&#xf1d5" />
													<option value="fa fa-qq" label="&#xf1d6" />
													<option value="fa fa-weixin" label="&#xf1d7" />
													<option value="fa fa-paper-plane" label="&#xf1d8" />
													<option value="fa fa-paper-plane-o" label="&#xf1d9" />
													<option value="fa fa-history" label="&#xf1da" />
													<option value="fa fa-circle-thin" label="&#xf1db" />
													<option value="fa fa-header" label="&#xf1dc" />
													<option value="fa fa-paragraph" label="&#xf1dd" />
													<option value="fa fa-sliders" label="&#xf1de" />
													<option value="fa fa-share-alt" label="&#xf1e0" />
													<option value="fa fa-share-alt-square" label="&#xf1e1" />
													<option value="fa fa-bomb" label="&#xf1e2" />
													<option value="fa fa-futbol-o" label="&#xf1e3" />
													<option value="fa fa-tty" label="&#xf1e4" />
													<option value="fa fa-binoculars" label="&#xf1e5" />
													<option value="fa fa-plug" label="&#xf1e6" />
													<option value="fa fa-slideshare" label="&#xf1e7" />
													<option value="fa fa-twitch" label="&#xf1e8" />
													<option value="fa fa-yelp" label="&#xf1e9" />
													<option value="fa fa-newspaper-o" label="&#xf1ea" />
													<option value="fa fa-wifi" label="&#xf1eb" />
													<option value="fa fa-calculator" label="&#xf1ec" />
													<option value="fa fa-paypal" label="&#xf1ed" />
													<option value="fa fa-google-wallet" label="&#xf1ee" />
													<option value="fa fa-cc-visa" label="&#xf1f0" />
													<option value="fa fa-cc-mastercard" label="&#xf1f1" />
													<option value="fa fa-cc-discover" label="&#xf1f2" />
													<option value="fa fa-cc-amex" label="&#xf1f3" />
													<option value="fa fa-cc-paypal" label="&#xf1f4" />
													<option value="fa fa-cc-stripe" label="&#xf1f5" />
													<option value="fa fa-bell-slash" label="&#xf1f6" />
													<option value="fa fa-bell-slash-o" label="&#xf1f7" />
													<option value="fa fa-trash" label="&#xf1f8" />
													<option value="fa fa-copyright" label="&#xf1f9" />
													<option value="fa fa-at" label="&#xf1fa" />
													<option value="fa fa-eyedropper" label="&#xf1fb" />
													<option value="fa fa-paint-brush" label="&#xf1fc" />
													<option value="fa fa-birthday-cake" label="&#xf1fd" />
													<option value="fa fa-area-chart" label="&#xf1fe" />
													<option value="fa fa-pie-chart" label="&#xf200" />
													<option value="fa fa-line-chart" label="&#xf201" />
													<option value="fa fa-lastfm" label="&#xf202" />
													<option value="fa fa-lastfm-square" label="&#xf203" />
													<option value="fa fa-toggle-off" label="&#xf204" />
													<option value="fa fa-toggle-on" label="&#xf205" />
													<option value="fa fa-bicycle" label="&#xf206" />
													<option value="fa fa-bus" label="&#xf207" />
													<option value="fa fa-ioxhost" label="&#xf208" />
													<option value="fa fa-angellist" label="&#xf209" />
													<option value="fa fa-cc" label="&#xf20a" />
													<option value="fa fa-ils" label="&#xf20b" />
													<option value="fa fa-meanpath" label="&#xf20c" />
													<option value="fa fa-buysellads" label="&#xf20d" />
													<option value="fa fa-connectdevelop" label="&#xf20e" />
													<option value="fa fa-dashcube" label="&#xf210" />
													<option value="fa fa-forumbee" label="&#xf211" />
													<option value="fa fa-leanpub" label="&#xf212" />
													<option value="fa fa-sellsy" label="&#xf213" />
													<option value="fa fa-shirtsinbulk" label="&#xf214" />
													<option value="fa fa-simplybuilt" label="&#xf215" />
													<option value="fa fa-skyatlas" label="&#xf216" />
													<option value="fa fa-cart-plus" label="&#xf217" />
													<option value="fa fa-cart-arrow-down" label="&#xf218" />
													<option value="fa fa-diamond" label="&#xf219" />
													<option value="fa fa-ship" label="&#xf21a" />
													<option value="fa fa-user-secret" label="&#xf21b" />
													<option value="fa fa-motorcycle" label="&#xf21c" />
													<option value="fa fa-street-view" label="&#xf21d" />
													<option value="fa fa-heartbeat" label="&#xf21e" />
													<option value="fa fa-venus" label="&#xf221" />
													<option value="fa fa-mars" label="&#xf222" />
													<option value="fa fa-mercury" label="&#xf223" />
													<option value="fa fa-transgender" label="&#xf224" />
													<option value="fa fa-transgender-alt" label="&#xf225" />
													<option value="fa fa-venus-double" label="&#xf226" />
													<option value="fa fa-mars-double" label="&#xf227" />
													<option value="fa fa-venus-mars" label="&#xf228" />
													<option value="fa fa-mars-stroke" label="&#xf229" />
													<option value="fa fa-mars-stroke-v" label="&#xf22a" />
													<option value="fa fa-mars-stroke-h" label="&#xf22b" />
													<option value="fa fa-neuter" label="&#xf22c" />
													<option value="fa fa-facebook-official" label="&#xf230" />
													<option value="fa fa-pinterest-p" label="&#xf231" />
													<option value="fa fa-whatsapp" label="&#xf232" />
													<option value="fa fa-server" label="&#xf233" />
													<option value="fa fa-user-plus" label="&#xf234" />
													<option value="fa fa-user-times" label="&#xf235" />
													<option value="fa fa-bed" label="&#xf236" />
													<option value="fa fa-viacoin" label="&#xf237" />
													<option value="fa fa-train" label="&#xf238" />
													<option value="fa fa-subway" label="&#xf239" />
													<option value="fa fa-medium" label="&#xf23a" />
												</select>
											</div>
										</div>
										<div class="form-group">
											<label for="inputEmail3" class="col-md-3 control-label">h1-label-1</label>
											<div class="col-md-9">
												<input id="h1Label1" name="h1Label1" type="text"
													value="${basics.h1Label1}" placeholder="label"
													class="form-control">
											</div>
										</div>

										<div class="form-group">

											<label for="inputEmail3" class="col-md-3 control-label">h1-label-1-description</label>
											<div class="col-md-9">
												<input id="h1Description1" name="h1Description1" type="text"
													value="${basics.h1Label2}" placeholder="Button-Name"
													class="form-control">
											</div>
										</div>
									</div>
									<div class="form-group">

										<label for="inputEmail3" class="col-md-3 control-label">h1-icon-2</label>
										<div class="col-md-9">
											<select class="fa-select" id="icon2" name="icon2">
												<option label="Select icon" />
												<option value="fa fa-glass" label="&#xf000" />
												<option value="fa fa-music" label="&#xf001" />
												<option value="fa fa-search" label="&#xf002" />
												<option value="fa fa-envelope-o" label="&#xf003" />
												<option value="fa fa-heart" label="&#xf004" />
												<option value="fa fa-star" label="&#xf005" />
												<option value="fa fa-star-o" label="&#xf006" />
												<option value="fa fa-user" label="&#xf007" />
												<option value="fa fa-film" label="&#xf008" />
												<option value="fa fa-th-large" label="&#xf009" />
												<option value="fa fa-th" label="&#xf00a" />
												<option value="fa fa-th-list" label="&#xf00b" />
												<option value="fa fa-check" label="&#xf00c" />
												<option value="fa fa-times" label="&#xf00d" />
												<option value="fa fa-search-plus" label="&#xf00e" />
												<option value="fa fa-search-minus" label="&#xf010" />
												<option value="fa fa-power-off" label="&#xf011" />
												<option value="fa fa-signal" label="&#xf012" />
												<option value="fa fa-cog" label="&#xf013" />
												<option value="fa fa-trash-o" label="&#xf014" />
												<option value="fa fa-home" label="&#xf015" />
												<option value="fa fa-file-o" label="&#xf016" />
												<option value="fa fa-clock-o" label="&#xf017" />
												<option value="fa fa-road" label="&#xf018" />
												<option value="fa fa-download" label="&#xf019" />
												<option value="fa fa-arrow-circle-o-down" label="&#xf01a" />
												<option value="fa fa-arrow-circle-o-up" label="&#xf01b" />
												<option value="fa fa-inbox" label="&#xf01c" />
												<option value="fa fa-play-circle-o" label="&#xf01d" />
												<option value="fa fa-repeat" label="&#xf01e" />
												<option value="fa fa-refresh" label="&#xf021" />
												<option value="fa fa-list-alt" label="&#xf022" />
												<option value="fa fa-lock" label="&#xf023" />
												<option value="fa fa-flag" label="&#xf024" />
												<option value="fa fa-headphones" label="&#xf025" />
												<option value="fa fa-volume-off" label="&#xf026" />
												<option value="fa fa-volume-down" label="&#xf027" />
												<option value="fa fa-volume-up" label="&#xf028" />
												<option value="fa fa-qrcode" label="&#xf029" />
												<option value="fa fa-barcode" label="&#xf02a" />
												<option value="fa fa-tag" label="&#xf02b" />
												<option value="fa fa-tags" label="&#xf02c" />
												<option value="fa fa-book" label="&#xf02d" />
												<option value="fa fa-bookmark" label="&#xf02e" />
												<option value="fa fa-print" label="&#xf02f" />
												<option value="fa fa-camera" label="&#xf030" />
												<option value="fa fa-font" label="&#xf031" />
												<option value="fa fa-bold" label="&#xf032" />
												<option value="fa fa-italic" label="&#xf033" />
												<option value="fa fa-text-height" label="&#xf034" />
												<option value="fa fa-text-width" label="&#xf035" />
												<option value="fa fa-align-left" label="&#xf036" />
												<option value="fa fa-align-center" label="&#xf037" />
												<option value="fa fa-align-right" label="&#xf038" />
												<option value="fa fa-align-justify" label="&#xf039" />
												<option value="fa fa-list" label="&#xf03a" />
												<option value="fa fa-outdent" label="&#xf03b" />
												<option value="fa fa-indent" label="&#xf03c" />
												<option value="fa fa-video-camera" label="&#xf03d" />
												<option value="fa fa-picture-o" label="&#xf03e" />
												<option value="fa fa-pencil" label="&#xf040" />
												<option value="fa fa-map-marker" label="&#xf041" />
												<option value="fa fa-adjust" label="&#xf042" />
												<option value="fa fa-tint" label="&#xf043" />
												<option value="fa fa-pencil-square-o" label="&#xf044" />
												<option value="fa fa-share-square-o" label="&#xf045" />
												<option value="fa fa-check-square-o" label="&#xf046" />
												<option value="fa fa-arrows" label="&#xf047" />
												<option value="fa fa-step-backward" label="&#xf048" />
												<option value="fa fa-fast-backward" label="&#xf049" />
												<option value="fa fa-backward" label="&#xf04a" />
												<option value="fa fa-play" label="&#xf04b" />
												<option value="fa fa-pause" label="&#xf04c" />
												<option value="fa fa-stop" label="&#xf04d" />
												<option value="fa fa-forward" label="&#xf04e" />
												<option value="fa fa-fast-forward" label="&#xf050" />
												<option value="fa fa-step-forward" label="&#xf051" />
												<option value="fa fa-eject" label="&#xf052" />
												<option value="fa fa-chevron-left" label="&#xf053" />
												<option value="fa fa-chevron-right" label="&#xf054" />
												<option value="fa fa-plus-circle" label="&#xf055" />
												<option value="fa fa-minus-circle" label="&#xf056" />
												<option value="fa fa-times-circle" label="&#xf057" />
												<option value="fa fa-check-circle" label="&#xf058" />
												<option value="fa fa-question-circle" label="&#xf059" />
												<option value="fa fa-info-circle" label="&#xf05a" />
												<option value="fa fa-crosshairs" label="&#xf05b" />
												<option value="fa fa-times-circle-o" label="&#xf05c" />
												<option value="fa fa-check-circle-o" label="&#xf05d" />
												<option value="fa fa-ban" label="&#xf05e" />
												<option value="fa fa-arrow-left" label="&#xf060" />
												<option value="fa fa-arrow-right" label="&#xf061" />
												<option value="fa fa-arrow-up" label="&#xf062" />
												<option value="fa fa-arrow-down" label="&#xf063" />
												<option value="fa fa-share" label="&#xf064" />
												<option value="fa fa-expand" label="&#xf065" />
												<option value="fa fa-compress" label="&#xf066" />
												<option value="fa fa-plus" label="&#xf067" />
												<option value="fa fa-minus" label="&#xf068" />
												<option value="fa fa-asterisk" label="&#xf069" />
												<option value="fa fa-exclamation-circle" label="&#xf06a" />
												<option value="fa fa-gift" label="&#xf06b" />
												<option value="fa fa-leaf" label="&#xf06c" />
												<option value="fa fa-fire" label="&#xf06d" />
												<option value="fa fa-eye" label="&#xf06e" />
												<option value="fa fa-eye-slash" label="&#xf070" />
												<option value="fa fa-exclamation-triangle" label="&#xf071" />
												<option value="fa fa-plane" label="&#xf072" />
												<option value="fa fa-calendar" label="&#xf073" />
												<option value="fa fa-random" label="&#xf074" />
												<option value="fa fa-comment" label="&#xf075" />
												<option value="fa fa-magnet" label="&#xf076" />
												<option value="fa fa-chevron-up" label="&#xf077" />
												<option value="fa fa-chevron-down" label="&#xf078" />
												<option value="fa fa-retweet" label="&#xf079" />
												<option value="fa fa-shopping-cart" label="&#xf07a" />
												<option value="fa fa-folder" label="&#xf07b" />
												<option value="fa fa-folder-open" label="&#xf07c" />
												<option value="fa fa-arrows-v" label="&#xf07d" />
												<option value="fa fa-arrows-h" label="&#xf07e" />
												<option value="fa fa-bar-chart" label="&#xf080" />
												<option value="fa fa-twitter-square" label="&#xf081" />
												<option value="fa fa-facebook-square" label="&#xf082" />
												<option value="fa fa-camera-retro" label="&#xf083" />
												<option value="fa fa-key" label="&#xf084" />
												<option value="fa fa-cogs" label="&#xf085" />
												<option value="fa fa-comments" label="&#xf086" />
												<option value="fa fa-thumbs-o-up" label="&#xf087" />
												<option value="fa fa-thumbs-o-down" label="&#xf088" />
												<option value="fa fa-star-half" label="&#xf089" />
												<option value="fa fa-heart-o" label="&#xf08a" />
												<option value="fa fa-sign-out" label="&#xf08b" />
												<option value="fa fa-linkedin-square" label="&#xf08c" />
												<option value="fa fa-thumb-tack" label="&#xf08d" />
												<option value="fa fa-external-link" label="&#xf08e" />
												<option value="fa fa-sign-in" label="&#xf090" />
												<option value="fa fa-trophy" label="&#xf091" />
												<option value="fa fa-github-square" label="&#xf092" />
												<option value="fa fa-upload" label="&#xf093" />
												<option value="fa fa-lemon-o" label="&#xf094" />
												<option value="fa fa-phone" label="&#xf095" />
												<option value="fa fa-square-o" label="&#xf096" />
												<option value="fa fa-bookmark-o" label="&#xf097" />
												<option value="fa fa-phone-square" label="&#xf098" />
												<option value="fa fa-twitter" label="&#xf099" />
												<option value="fa fa-facebook" label="&#xf09a" />
												<option value="fa fa-github" label="&#xf09b" />
												<option value="fa fa-unlock" label="&#xf09c" />
												<option value="fa fa-credit-card" label="&#xf09d" />
												<option value="fa fa-rss" label="&#xf09e" />
												<option value="fa fa-hdd-o" label="&#xf0a0" />
												<option value="fa fa-bullhorn" label="&#xf0a1" />
												<option value="fa fa-bell" label="&#xf0f3" />
												<option value="fa fa-certificate" label="&#xf0a3" />
												<option value="fa fa-hand-o-right" label="&#xf0a4" />
												<option value="fa fa-hand-o-left" label="&#xf0a5" />
												<option value="fa fa-hand-o-up" label="&#xf0a6" />
												<option value="fa fa-hand-o-down" label="&#xf0a7" />
												<option value="fa fa-arrow-circle-left" label="&#xf0a8" />
												<option value="fa fa-arrow-circle-right" label="&#xf0a9" />
												<option value="fa fa-arrow-circle-up" label="&#xf0aa" />
												<option value="fa fa-arrow-circle-down" label="&#xf0ab" />
												<option value="fa fa-globe" label="&#xf0ac" />
												<option value="fa fa-wrench" label="&#xf0ad" />
												<option value="fa fa-tasks" label="&#xf0ae" />
												<option value="fa fa-filter" label="&#xf0b0" />
												<option value="fa fa-briefcase" label="&#xf0b1" />
												<option value="fa fa-arrows-alt" label="&#xf0b2" />
												<option value="fa fa-users" label="&#xf0c0" />
												<option value="fa fa-link" label="&#xf0c1" />
												<option value="fa fa-cloud" label="&#xf0c2" />
												<option value="fa fa-flask" label="&#xf0c3" />
												<option value="fa fa-scissors" label="&#xf0c4" />
												<option value="fa fa-files-o" label="&#xf0c5" />
												<option value="fa fa-paperclip" label="&#xf0c6" />
												<option value="fa fa-floppy-o" label="&#xf0c7" />
												<option value="fa fa-square" label="&#xf0c8" />
												<option value="fa fa-bars" label="&#xf0c9" />
												<option value="fa fa-list-ul" label="&#xf0ca" />
												<option value="fa fa-list-ol" label="&#xf0cb" />
												<option value="fa fa-strikethrough" label="&#xf0cc" />
												<option value="fa fa-underline" label="&#xf0cd" />
												<option value="fa fa-table" label="&#xf0ce" />
												<option value="fa fa-magic" label="&#xf0d0" />
												<option value="fa fa-truck" label="&#xf0d1" />
												<option value="fa fa-pinterest" label="&#xf0d2" />
												<option value="fa fa-pinterest-square" label="&#xf0d3" />
												<option value="fa fa-google-plus-square" label="&#xf0d4" />
												<option value="fa fa-google-plus" label="&#xf0d5" />
												<option value="fa fa-money" label="&#xf0d6" />
												<option value="fa fa-caret-down" label="&#xf0d7" />
												<option value="fa fa-caret-up" label="&#xf0d8" />
												<option value="fa fa-caret-left" label="&#xf0d9" />
												<option value="fa fa-caret-right" label="&#xf0da" />
												<option value="fa fa-columns" label="&#xf0db" />
												<option value="fa fa-sort" label="&#xf0dc" />
												<option value="fa fa-sort-desc" label="&#xf0dd" />
												<option value="fa fa-sort-asc" label="&#xf0de" />
												<option value="fa fa-envelope" label="&#xf0e0" />
												<option value="fa fa-linkedin" label="&#xf0e1" />
												<option value="fa fa-undo" label="&#xf0e2" />
												<option value="fa fa-gavel" label="&#xf0e3" />
												<option value="fa fa-tachometer" label="&#xf0e4" />
												<option value="fa fa-comment-o" label="&#xf0e5" />
												<option value="fa fa-comments-o" label="&#xf0e6" />
												<option value="fa fa-bolt" label="&#xf0e7" />
												<option value="fa fa-sitemap" label="&#xf0e8" />
												<option value="fa fa-umbrella" label="&#xf0e9" />
												<option value="fa fa-clipboard" label="&#xf0ea" />
												<option value="fa fa-lightbulb-o" label="&#xf0eb" />
												<option value="fa fa-exchange" label="&#xf0ec" />
												<option value="fa fa-cloud-download" label="&#xf0ed" />
												<option value="fa fa-cloud-upload" label="&#xf0ee" />
												<option value="fa fa-user-md" label="&#xf0f0" />
												<option value="fa fa-stethoscope" label="&#xf0f1" />
												<option value="fa fa-suitcase" label="&#xf0f2" />
												<option value="fa fa-bell-o" label="&#xf0a2" />
												<option value="fa fa-coffee" label="&#xf0f4" />
												<option value="fa fa-cutlery" label="&#xf0f5" />
												<option value="fa fa-file-text-o" label="&#xf0f6" />
												<option value="fa fa-building-o" label="&#xf0f7" />
												<option value="fa fa-hospital-o" label="&#xf0f8" />
												<option value="fa fa-ambulance" label="&#xf0f9" />
												<option value="fa fa-medkit" label="&#xf0fa" />
												<option value="fa fa-fighter-jet" label="&#xf0fb" />
												<option value="fa fa-beer" label="&#xf0fc" />
												<option value="fa fa-h-square" label="&#xf0fd" />
												<option value="fa fa-plus-square" label="&#xf0fe" />
												<option value="fa fa-angle-double-left" label="&#xf100" />
												<option value="fa fa-angle-double-right" label="&#xf101" />
												<option value="fa fa-angle-double-up" label="&#xf102" />
												<option value="fa fa-angle-double-down" label="&#xf103" />
												<option value="fa fa-angle-left" label="&#xf104" />
												<option value="fa fa-angle-right" label="&#xf105" />
												<option value="fa fa-angle-up" label="&#xf106" />
												<option value="fa fa-angle-down" label="&#xf107" />
												<option value="fa fa-desktop" label="&#xf108" />
												<option value="fa fa-laptop" label="&#xf109" />
												<option value="fa fa-tablet" label="&#xf10a" />
												<option value="fa fa-mobile" label="&#xf10b" />
												<option value="fa fa-circle-o" label="&#xf10c" />
												<option value="fa fa-quote-left" label="&#xf10d" />
												<option value="fa fa-quote-right" label="&#xf10e" />
												<option value="fa fa-spinner" label="&#xf110" />
												<option value="fa fa-circle" label="&#xf111" />
												<option value="fa fa-reply" label="&#xf112" />
												<option value="fa fa-github-alt" label="&#xf113" />
												<option value="fa fa-folder-o" label="&#xf114" />
												<option value="fa fa-folder-open-o" label="&#xf115" />
												<option value="fa fa-smile-o" label="&#xf118" />
												<option value="fa fa-frown-o" label="&#xf119" />
												<option value="fa fa-meh-o" label="&#xf11a" />
												<option value="fa fa-gamepad" label="&#xf11b" />
												<option value="fa fa-keyboard-o" label="&#xf11c" />
												<option value="fa fa-flag-o" label="&#xf11d" />
												<option value="fa fa-flag-checkered" label="&#xf11e" />
												<option value="fa fa-terminal" label="&#xf120" />
												<option value="fa fa-code" label="&#xf121" />
												<option value="fa fa-reply-all" label="&#xf122" />
												<option value="fa fa-star-half-o" label="&#xf123" />
												<option value="fa fa-location-arrow" label="&#xf124" />
												<option value="fa fa-crop" label="&#xf125" />
												<option value="fa fa-code-fork" label="&#xf126" />
												<option value="fa fa-chain-broken" label="&#xf127" />
												<option value="fa fa-question" label="&#xf128" />
												<option value="fa fa-info" label="&#xf129" />
												<option value="fa fa-exclamation" label="&#xf12a" />
												<option value="fa fa-superscript" label="&#xf12b" />
												<option value="fa fa-subscript" label="&#xf12c" />
												<option value="fa fa-eraser" label="&#xf12d" />
												<option value="fa fa-puzzle-piece" label="&#xf12e" />
												<option value="fa fa-microphone" label="&#xf130" />
												<option value="fa fa-microphone-slash" label="&#xf131" />
												<option value="fa fa-shield" label="&#xf132" />
												<option value="fa fa-calendar-o" label="&#xf133" />
												<option value="fa fa-fire-extinguisher" label="&#xf134" />
												<option value="fa fa-rocket" label="&#xf135" />
												<option value="fa fa-maxcdn" label="&#xf136" />
												<option value="fa fa-chevron-circle-left" label="&#xf137" />
												<option value="fa fa-chevron-circle-right" label="&#xf138" />
												<option value="fa fa-chevron-circle-up" label="&#xf139" />
												<option value="fa fa-chevron-circle-down" label="&#xf13a" />
												<option value="fa fa-html5" label="&#xf13b" />
												<option value="fa fa-css3" label="&#xf13c" />
												<option value="fa fa-anchor" label="&#xf13d" />
												<option value="fa fa-unlock-alt" label="&#xf13e" />
												<option value="fa fa-bullseye" label="&#xf140" />
												<option value="fa fa-ellipsis-h" label="&#xf141" />
												<option value="fa fa-ellipsis-v" label="&#xf142" />
												<option value="fa fa-rss-square" label="&#xf143" />
												<option value="fa fa-play-circle" label="&#xf144" />
												<option value="fa fa-ticket" label="&#xf145" />
												<option value="fa fa-minus-square" label="&#xf146" />
												<option value="fa fa-minus-square-o" label="&#xf147" />
												<option value="fa fa-level-up" label="&#xf148" />
												<option value="fa fa-level-down" label="&#xf149" />
												<option value="fa fa-check-square" label="&#xf14a" />
												<option value="fa fa-pencil-square" label="&#xf14b" />
												<option value="fa fa-external-link-square" label="&#xf14c" />
												<option value="fa fa-share-square" label="&#xf14d" />
												<option value="fa fa-compass" label="&#xf14e" />
												<option value="fa fa-caret-square-o-down" label="&#xf150" />
												<option value="fa fa-caret-square-o-up" label="&#xf151" />
												<option value="fa fa-caret-square-o-right" label="&#xf152" />
												<option value="fa fa-eur" label="&#xf153" />
												<option value="fa fa-gbp" label="&#xf154" />
												<option value="fa fa-usd" label="&#xf155" />
												<option value="fa fa-inr" label="&#xf156" />
												<option value="fa fa-jpy" label="&#xf157" />
												<option value="fa fa-rub" label="&#xf158" />
												<option value="fa fa-krw" label="&#xf159" />
												<option value="fa fa-btc" label="&#xf15a" />
												<option value="fa fa-file" label="&#xf15b" />
												<option value="fa fa-file-text" label="&#xf15c" />
												<option value="fa fa-sort-alpha-asc" label="&#xf15d" />
												<option value="fa fa-sort-alpha-desc" label="&#xf15e" />
												<option value="fa fa-sort-amount-asc" label="&#xf160" />
												<option value="fa fa-sort-amount-desc" label="&#xf161" />
												<option value="fa fa-sort-numeric-asc" label="&#xf162" />
												<option value="fa fa-sort-numeric-desc" label="&#xf163" />
												<option value="fa fa-thumbs-up" label="&#xf164" />
												<option value="fa fa-thumbs-down" label="&#xf165" />
												<option value="fa fa-youtube-square" label="&#xf166" />
												<option value="fa fa-youtube" label="&#xf167" />
												<option value="fa fa-xing" label="&#xf168" />
												<option value="fa fa-xing-square" label="&#xf169" />
												<option value="fa fa-youtube-play" label="&#xf16a" />
												<option value="fa fa-dropbox" label="&#xf16b" />
												<option value="fa fa-stack-overflow" label="&#xf16c" />
												<option value="fa fa-instagram" label="&#xf16d" />
												<option value="fa fa-flickr" label="&#xf16e" />
												<option value="fa fa-adn" label="&#xf170" />
												<option value="fa fa-bitbucket" label="&#xf171" />
												<option value="fa fa-bitbucket-square" label="&#xf172" />
												<option value="fa fa-tumblr" label="&#xf173" />
												<option value="fa fa-tumblr-square" label="&#xf174" />
												<option value="fa fa-long-arrow-down" label="&#xf175" />
												<option value="fa fa-long-arrow-up" label="&#xf176" />
												<option value="fa fa-long-arrow-left" label="&#xf177" />
												<option value="fa fa-long-arrow-right" label="&#xf178" />
												<option value="fa fa-apple" label="&#xf179" />
												<option value="fa fa-windows" label="&#xf17a" />
												<option value="fa fa-android" label="&#xf17b" />
												<option value="fa fa-linux" label="&#xf17c" />
												<option value="fa fa-dribbble" label="&#xf17d" />
												<option value="fa fa-skype" label="&#xf17e" />
												<option value="fa fa-foursquare" label="&#xf180" />
												<option value="fa fa-trello" label="&#xf181" />
												<option value="fa fa-female" label="&#xf182" />
												<option value="fa fa-male" label="&#xf183" />
												<option value="fa fa-gratipay" label="&#xf184" />
												<option value="fa fa-sun-o" label="&#xf185" />
												<option value="fa fa-moon-o" label="&#xf186" />
												<option value="fa fa-archive" label="&#xf187" />
												<option value="fa fa-bug" label="&#xf188" />
												<option value="fa fa-vk" label="&#xf189" />
												<option value="fa fa-weibo" label="&#xf18a" />
												<option value="fa fa-renren" label="&#xf18b" />
												<option value="fa fa-pagelines" label="&#xf18c" />
												<option value="fa fa-stack-exchange" label="&#xf18d" />
												<option value="fa fa-arrow-circle-o-right" label="&#xf18e" />
												<option value="fa fa-arrow-circle-o-left" label="&#xf190" />
												<option value="fa fa-caret-square-o-left" label="&#xf191" />
												<option value="fa fa-dot-circle-o" label="&#xf192" />
												<option value="fa fa-wheelchair" label="&#xf193" />
												<option value="fa fa-vimeo-square" label="&#xf194" />
												<option value="fa fa-try" label="&#xf195" />
												<option value="fa fa-plus-square-o" label="&#xf196" />
												<option value="fa fa-space-shuttle" label="&#xf197" />
												<option value="fa fa-slack" label="&#xf198" />
												<option value="fa fa-envelope-square" label="&#xf199" />
												<option value="fa fa-wordpress" label="&#xf19a" />
												<option value="fa fa-openid" label="&#xf19b" />
												<option value="fa fa-university" label="&#xf19c" />
												<option value="fa fa-graduation-cap" label="&#xf19d" />
												<option value="fa fa-yahoo" label="&#xf19e" />
												<option value="fa fa-google" label="&#xf1a0" />
												<option value="fa fa-reddit" label="&#xf1a1" />
												<option value="fa fa-reddit-square" label="&#xf1a2" />
												<option value="fa fa-stumbleupon-circle" label="&#xf1a3" />
												<option value="fa fa-stumbleupon" label="&#xf1a4" />
												<option value="fa fa-delicious" label="&#xf1a5" />
												<option value="fa fa-digg" label="&#xf1a6" />
												<option value="fa fa-pied-piper" label="&#xf1a7" />
												<option value="fa fa-pied-piper-alt" label="&#xf1a8" />
												<option value="fa fa-drupal" label="&#xf1a9" />
												<option value="fa fa-joomla" label="&#xf1aa" />
												<option value="fa fa-language" label="&#xf1ab" />
												<option value="fa fa-fax" label="&#xf1ac" />
												<option value="fa fa-building" label="&#xf1ad" />
												<option value="fa fa-child" label="&#xf1ae" />
												<option value="fa fa-paw" label="&#xf1b0" />
												<option value="fa fa-spoon" label="&#xf1b1" />
												<option value="fa fa-cube" label="&#xf1b2" />
												<option value="fa fa-cubes" label="&#xf1b3" />
												<option value="fa fa-behance" label="&#xf1b4" />
												<option value="fa fa-behance-square" label="&#xf1b5" />
												<option value="fa fa-steam" label="&#xf1b6" />
												<option value="fa fa-steam-square" label="&#xf1b7" />
												<option value="fa fa-recycle" label="&#xf1b8" />
												<option value="fa fa-car" label="&#xf1b9" />
												<option value="fa fa-taxi" label="&#xf1ba" />
												<option value="fa fa-tree" label="&#xf1bb" />
												<option value="fa fa-spotify" label="&#xf1bc" />
												<option value="fa fa-deviantart" label="&#xf1bd" />
												<option value="fa fa-soundcloud" label="&#xf1be" />
												<option value="fa fa-database" label="&#xf1c0" />
												<option value="fa fa-file-pdf-o" label="&#xf1c1" />
												<option value="fa fa-file-word-o" label="&#xf1c2" />
												<option value="fa fa-file-excel-o" label="&#xf1c3" />
												<option value="fa fa-file-powerpoint-o" label="&#xf1c4" />
												<option value="fa fa-file-image-o" label="&#xf1c5" />
												<option value="fa fa-file-archive-o" label="&#xf1c6" />
												<option value="fa fa-file-audio-o" label="&#xf1c7" />
												<option value="fa fa-file-video-o" label="&#xf1c8" />
												<option value="fa fa-file-code-o" label="&#xf1c9" />
												<option value="fa fa-vine" label="&#xf1ca" />
												<option value="fa fa-codepen" label="&#xf1cb" />
												<option value="fa fa-jsfiddle" label="&#xf1cc" />
												<option value="fa fa-life-ring" label="&#xf1cd" />
												<option value="fa fa-circle-o-notch" label="&#xf1ce" />
												<option value="fa fa-rebel" label="&#xf1d0" />
												<option value="fa fa-empire" label="&#xf1d1" />
												<option value="fa fa-git-square" label="&#xf1d2" />
												<option value="fa fa-git" label="&#xf1d3" />
												<option value="fa fa-hacker-news" label="&#xf1d4" />
												<option value="fa fa-tencent-weibo" label="&#xf1d5" />
												<option value="fa fa-qq" label="&#xf1d6" />
												<option value="fa fa-weixin" label="&#xf1d7" />
												<option value="fa fa-paper-plane" label="&#xf1d8" />
												<option value="fa fa-paper-plane-o" label="&#xf1d9" />
												<option value="fa fa-history" label="&#xf1da" />
												<option value="fa fa-circle-thin" label="&#xf1db" />
												<option value="fa fa-header" label="&#xf1dc" />
												<option value="fa fa-paragraph" label="&#xf1dd" />
												<option value="fa fa-sliders" label="&#xf1de" />
												<option value="fa fa-share-alt" label="&#xf1e0" />
												<option value="fa fa-share-alt-square" label="&#xf1e1" />
												<option value="fa fa-bomb" label="&#xf1e2" />
												<option value="fa fa-futbol-o" label="&#xf1e3" />
												<option value="fa fa-tty" label="&#xf1e4" />
												<option value="fa fa-binoculars" label="&#xf1e5" />
												<option value="fa fa-plug" label="&#xf1e6" />
												<option value="fa fa-slideshare" label="&#xf1e7" />
												<option value="fa fa-twitch" label="&#xf1e8" />
												<option value="fa fa-yelp" label="&#xf1e9" />
												<option value="fa fa-newspaper-o" label="&#xf1ea" />
												<option value="fa fa-wifi" label="&#xf1eb" />
												<option value="fa fa-calculator" label="&#xf1ec" />
												<option value="fa fa-paypal" label="&#xf1ed" />
												<option value="fa fa-google-wallet" label="&#xf1ee" />
												<option value="fa fa-cc-visa" label="&#xf1f0" />
												<option value="fa fa-cc-mastercard" label="&#xf1f1" />
												<option value="fa fa-cc-discover" label="&#xf1f2" />
												<option value="fa fa-cc-amex" label="&#xf1f3" />
												<option value="fa fa-cc-paypal" label="&#xf1f4" />
												<option value="fa fa-cc-stripe" label="&#xf1f5" />
												<option value="fa fa-bell-slash" label="&#xf1f6" />
												<option value="fa fa-bell-slash-o" label="&#xf1f7" />
												<option value="fa fa-trash" label="&#xf1f8" />
												<option value="fa fa-copyright" label="&#xf1f9" />
												<option value="fa fa-at" label="&#xf1fa" />
												<option value="fa fa-eyedropper" label="&#xf1fb" />
												<option value="fa fa-paint-brush" label="&#xf1fc" />
												<option value="fa fa-birthday-cake" label="&#xf1fd" />
												<option value="fa fa-area-chart" label="&#xf1fe" />
												<option value="fa fa-pie-chart" label="&#xf200" />
												<option value="fa fa-line-chart" label="&#xf201" />
												<option value="fa fa-lastfm" label="&#xf202" />
												<option value="fa fa-lastfm-square" label="&#xf203" />
												<option value="fa fa-toggle-off" label="&#xf204" />
												<option value="fa fa-toggle-on" label="&#xf205" />
												<option value="fa fa-bicycle" label="&#xf206" />
												<option value="fa fa-bus" label="&#xf207" />
												<option value="fa fa-ioxhost" label="&#xf208" />
												<option value="fa fa-angellist" label="&#xf209" />
												<option value="fa fa-cc" label="&#xf20a" />
												<option value="fa fa-ils" label="&#xf20b" />
												<option value="fa fa-meanpath" label="&#xf20c" />
												<option value="fa fa-buysellads" label="&#xf20d" />
												<option value="fa fa-connectdevelop" label="&#xf20e" />
												<option value="fa fa-dashcube" label="&#xf210" />
												<option value="fa fa-forumbee" label="&#xf211" />
												<option value="fa fa-leanpub" label="&#xf212" />
												<option value="fa fa-sellsy" label="&#xf213" />
												<option value="fa fa-shirtsinbulk" label="&#xf214" />
												<option value="fa fa-simplybuilt" label="&#xf215" />
												<option value="fa fa-skyatlas" label="&#xf216" />
												<option value="fa fa-cart-plus" label="&#xf217" />
												<option value="fa fa-cart-arrow-down" label="&#xf218" />
												<option value="fa fa-diamond" label="&#xf219" />
												<option value="fa fa-ship" label="&#xf21a" />
												<option value="fa fa-user-secret" label="&#xf21b" />
												<option value="fa fa-motorcycle" label="&#xf21c" />
												<option value="fa fa-street-view" label="&#xf21d" />
												<option value="fa fa-heartbeat" label="&#xf21e" />
												<option value="fa fa-venus" label="&#xf221" />
												<option value="fa fa-mars" label="&#xf222" />
												<option value="fa fa-mercury" label="&#xf223" />
												<option value="fa fa-transgender" label="&#xf224" />
												<option value="fa fa-transgender-alt" label="&#xf225" />
												<option value="fa fa-venus-double" label="&#xf226" />
												<option value="fa fa-mars-double" label="&#xf227" />
												<option value="fa fa-venus-mars" label="&#xf228" />
												<option value="fa fa-mars-stroke" label="&#xf229" />
												<option value="fa fa-mars-stroke-v" label="&#xf22a" />
												<option value="fa fa-mars-stroke-h" label="&#xf22b" />
												<option value="fa fa-neuter" label="&#xf22c" />
												<option value="fa fa-facebook-official" label="&#xf230" />
												<option value="fa fa-pinterest-p" label="&#xf231" />
												<option value="fa fa-whatsapp" label="&#xf232" />
												<option value="fa fa-server" label="&#xf233" />
												<option value="fa fa-user-plus" label="&#xf234" />
												<option value="fa fa-user-times" label="&#xf235" />
												<option value="fa fa-bed" label="&#xf236" />
												<option value="fa fa-viacoin" label="&#xf237" />
												<option value="fa fa-train" label="&#xf238" />
												<option value="fa fa-subway" label="&#xf239" />
												<option value="fa fa-medium" label="&#xf23a" />
											</select>

										</div>
									</div>
									<div class="form-group">

										<label for="inputEmail3" class="col-md-3 control-label">h1-label-2</label>
										<div class="col-md-9">
											<input id="h1label2" name="h1label2" type="text"
												value="${basics.h1Label3}" placeholder="Label"
												class="form-control">
										</div>
									</div>
									<div class="form-group">

										<label for="inputEmail3" class="col-md-3 control-label">h1-label-2-description</label>
										<div class="col-md-9">
											<input id="h1Description2" name="h1Description2" type="text"
												value="${basics.h1Label4}" placeholder="Description"
												class="form-control">
										</div>
									</div>
									<div class="form-group">

										<label for="inputEmail3" class="col-md-3 control-label">h1-icon-3</label>
										<div class="col-md-9">
											<select class="fa-select" id="icon3" name="icon3">
												<option label="Select icon" />
												<option value="fa fa-glass" label="&#xf000" />
												<option value="fa fa-music" label="&#xf001" />
												<option value="fa fa-search" label="&#xf002" />
												<option value="fa fa-envelope-o" label="&#xf003" />
												<option value="fa fa-heart" label="&#xf004" />
												<option value="fa fa-star" label="&#xf005" />
												<option value="fa fa-star-o" label="&#xf006" />
												<option value="fa fa-user" label="&#xf007" />
												<option value="fa fa-film" label="&#xf008" />
												<option value="fa fa-th-large" label="&#xf009" />
												<option value="fa fa-th" label="&#xf00a" />
												<option value="fa fa-th-list" label="&#xf00b" />
												<option value="fa fa-check" label="&#xf00c" />
												<option value="fa fa-times" label="&#xf00d" />
												<option value="fa fa-search-plus" label="&#xf00e" />
												<option value="fa fa-search-minus" label="&#xf010" />
												<option value="fa fa-power-off" label="&#xf011" />
												<option value="fa fa-signal" label="&#xf012" />
												<option value="fa fa-cog" label="&#xf013" />
												<option value="fa fa-trash-o" label="&#xf014" />
												<option value="fa fa-home" label="&#xf015" />
												<option value="fa fa-file-o" label="&#xf016" />
												<option value="fa fa-clock-o" label="&#xf017" />
												<option value="fa fa-road" label="&#xf018" />
												<option value="fa fa-download" label="&#xf019" />
												<option value="fa fa-arrow-circle-o-down" label="&#xf01a" />
												<option value="fa fa-arrow-circle-o-up" label="&#xf01b" />
												<option value="fa fa-inbox" label="&#xf01c" />
												<option value="fa fa-play-circle-o" label="&#xf01d" />
												<option value="fa fa-repeat" label="&#xf01e" />
												<option value="fa fa-refresh" label="&#xf021" />
												<option value="fa fa-list-alt" label="&#xf022" />
												<option value="fa fa-lock" label="&#xf023" />
												<option value="fa fa-flag" label="&#xf024" />
												<option value="fa fa-headphones" label="&#xf025" />
												<option value="fa fa-volume-off" label="&#xf026" />
												<option value="fa fa-volume-down" label="&#xf027" />
												<option value="fa fa-volume-up" label="&#xf028" />
												<option value="fa fa-qrcode" label="&#xf029" />
												<option value="fa fa-barcode" label="&#xf02a" />
												<option value="fa fa-tag" label="&#xf02b" />
												<option value="fa fa-tags" label="&#xf02c" />
												<option value="fa fa-book" label="&#xf02d" />
												<option value="fa fa-bookmark" label="&#xf02e" />
												<option value="fa fa-print" label="&#xf02f" />
												<option value="fa fa-camera" label="&#xf030" />
												<option value="fa fa-font" label="&#xf031" />
												<option value="fa fa-bold" label="&#xf032" />
												<option value="fa fa-italic" label="&#xf033" />
												<option value="fa fa-text-height" label="&#xf034" />
												<option value="fa fa-text-width" label="&#xf035" />
												<option value="fa fa-align-left" label="&#xf036" />
												<option value="fa fa-align-center" label="&#xf037" />
												<option value="fa fa-align-right" label="&#xf038" />
												<option value="fa fa-align-justify" label="&#xf039" />
												<option value="fa fa-list" label="&#xf03a" />
												<option value="fa fa-outdent" label="&#xf03b" />
												<option value="fa fa-indent" label="&#xf03c" />
												<option value="fa fa-video-camera" label="&#xf03d" />
												<option value="fa fa-picture-o" label="&#xf03e" />
												<option value="fa fa-pencil" label="&#xf040" />
												<option value="fa fa-map-marker" label="&#xf041" />
												<option value="fa fa-adjust" label="&#xf042" />
												<option value="fa fa-tint" label="&#xf043" />
												<option value="fa fa-pencil-square-o" label="&#xf044" />
												<option value="fa fa-share-square-o" label="&#xf045" />
												<option value="fa fa-check-square-o" label="&#xf046" />
												<option value="fa fa-arrows" label="&#xf047" />
												<option value="fa fa-step-backward" label="&#xf048" />
												<option value="fa fa-fast-backward" label="&#xf049" />
												<option value="fa fa-backward" label="&#xf04a" />
												<option value="fa fa-play" label="&#xf04b" />
												<option value="fa fa-pause" label="&#xf04c" />
												<option value="fa fa-stop" label="&#xf04d" />
												<option value="fa fa-forward" label="&#xf04e" />
												<option value="fa fa-fast-forward" label="&#xf050" />
												<option value="fa fa-step-forward" label="&#xf051" />
												<option value="fa fa-eject" label="&#xf052" />
												<option value="fa fa-chevron-left" label="&#xf053" />
												<option value="fa fa-chevron-right" label="&#xf054" />
												<option value="fa fa-plus-circle" label="&#xf055" />
												<option value="fa fa-minus-circle" label="&#xf056" />
												<option value="fa fa-times-circle" label="&#xf057" />
												<option value="fa fa-check-circle" label="&#xf058" />
												<option value="fa fa-question-circle" label="&#xf059" />
												<option value="fa fa-info-circle" label="&#xf05a" />
												<option value="fa fa-crosshairs" label="&#xf05b" />
												<option value="fa fa-times-circle-o" label="&#xf05c" />
												<option value="fa fa-check-circle-o" label="&#xf05d" />
												<option value="fa fa-ban" label="&#xf05e" />
												<option value="fa fa-arrow-left" label="&#xf060" />
												<option value="fa fa-arrow-right" label="&#xf061" />
												<option value="fa fa-arrow-up" label="&#xf062" />
												<option value="fa fa-arrow-down" label="&#xf063" />
												<option value="fa fa-share" label="&#xf064" />
												<option value="fa fa-expand" label="&#xf065" />
												<option value="fa fa-compress" label="&#xf066" />
												<option value="fa fa-plus" label="&#xf067" />
												<option value="fa fa-minus" label="&#xf068" />
												<option value="fa fa-asterisk" label="&#xf069" />
												<option value="fa fa-exclamation-circle" label="&#xf06a" />
												<option value="fa fa-gift" label="&#xf06b" />
												<option value="fa fa-leaf" label="&#xf06c" />
												<option value="fa fa-fire" label="&#xf06d" />
												<option value="fa fa-eye" label="&#xf06e" />
												<option value="fa fa-eye-slash" label="&#xf070" />
												<option value="fa fa-exclamation-triangle" label="&#xf071" />
												<option value="fa fa-plane" label="&#xf072" />
												<option value="fa fa-calendar" label="&#xf073" />
												<option value="fa fa-random" label="&#xf074" />
												<option value="fa fa-comment" label="&#xf075" />
												<option value="fa fa-magnet" label="&#xf076" />
												<option value="fa fa-chevron-up" label="&#xf077" />
												<option value="fa fa-chevron-down" label="&#xf078" />
												<option value="fa fa-retweet" label="&#xf079" />
												<option value="fa fa-shopping-cart" label="&#xf07a" />
												<option value="fa fa-folder" label="&#xf07b" />
												<option value="fa fa-folder-open" label="&#xf07c" />
												<option value="fa fa-arrows-v" label="&#xf07d" />
												<option value="fa fa-arrows-h" label="&#xf07e" />
												<option value="fa fa-bar-chart" label="&#xf080" />
												<option value="fa fa-twitter-square" label="&#xf081" />
												<option value="fa fa-facebook-square" label="&#xf082" />
												<option value="fa fa-camera-retro" label="&#xf083" />
												<option value="fa fa-key" label="&#xf084" />
												<option value="fa fa-cogs" label="&#xf085" />
												<option value="fa fa-comments" label="&#xf086" />
												<option value="fa fa-thumbs-o-up" label="&#xf087" />
												<option value="fa fa-thumbs-o-down" label="&#xf088" />
												<option value="fa fa-star-half" label="&#xf089" />
												<option value="fa fa-heart-o" label="&#xf08a" />
												<option value="fa fa-sign-out" label="&#xf08b" />
												<option value="fa fa-linkedin-square" label="&#xf08c" />
												<option value="fa fa-thumb-tack" label="&#xf08d" />
												<option value="fa fa-external-link" label="&#xf08e" />
												<option value="fa fa-sign-in" label="&#xf090" />
												<option value="fa fa-trophy" label="&#xf091" />
												<option value="fa fa-github-square" label="&#xf092" />
												<option value="fa fa-upload" label="&#xf093" />
												<option value="fa fa-lemon-o" label="&#xf094" />
												<option value="fa fa-phone" label="&#xf095" />
												<option value="fa fa-square-o" label="&#xf096" />
												<option value="fa fa-bookmark-o" label="&#xf097" />
												<option value="fa fa-phone-square" label="&#xf098" />
												<option value="fa fa-twitter" label="&#xf099" />
												<option value="fa fa-facebook" label="&#xf09a" />
												<option value="fa fa-github" label="&#xf09b" />
												<option value="fa fa-unlock" label="&#xf09c" />
												<option value="fa fa-credit-card" label="&#xf09d" />
												<option value="fa fa-rss" label="&#xf09e" />
												<option value="fa fa-hdd-o" label="&#xf0a0" />
												<option value="fa fa-bullhorn" label="&#xf0a1" />
												<option value="fa fa-bell" label="&#xf0f3" />
												<option value="fa fa-certificate" label="&#xf0a3" />
												<option value="fa fa-hand-o-right" label="&#xf0a4" />
												<option value="fa fa-hand-o-left" label="&#xf0a5" />
												<option value="fa fa-hand-o-up" label="&#xf0a6" />
												<option value="fa fa-hand-o-down" label="&#xf0a7" />
												<option value="fa fa-arrow-circle-left" label="&#xf0a8" />
												<option value="fa fa-arrow-circle-right" label="&#xf0a9" />
												<option value="fa fa-arrow-circle-up" label="&#xf0aa" />
												<option value="fa fa-arrow-circle-down" label="&#xf0ab" />
												<option value="fa fa-globe" label="&#xf0ac" />
												<option value="fa fa-wrench" label="&#xf0ad" />
												<option value="fa fa-tasks" label="&#xf0ae" />
												<option value="fa fa-filter" label="&#xf0b0" />
												<option value="fa fa-briefcase" label="&#xf0b1" />
												<option value="fa fa-arrows-alt" label="&#xf0b2" />
												<option value="fa fa-users" label="&#xf0c0" />
												<option value="fa fa-link" label="&#xf0c1" />
												<option value="fa fa-cloud" label="&#xf0c2" />
												<option value="fa fa-flask" label="&#xf0c3" />
												<option value="fa fa-scissors" label="&#xf0c4" />
												<option value="fa fa-files-o" label="&#xf0c5" />
												<option value="fa fa-paperclip" label="&#xf0c6" />
												<option value="fa fa-floppy-o" label="&#xf0c7" />
												<option value="fa fa-square" label="&#xf0c8" />
												<option value="fa fa-bars" label="&#xf0c9" />
												<option value="fa fa-list-ul" label="&#xf0ca" />
												<option value="fa fa-list-ol" label="&#xf0cb" />
												<option value="fa fa-strikethrough" label="&#xf0cc" />
												<option value="fa fa-underline" label="&#xf0cd" />
												<option value="fa fa-table" label="&#xf0ce" />
												<option value="fa fa-magic" label="&#xf0d0" />
												<option value="fa fa-truck" label="&#xf0d1" />
												<option value="fa fa-pinterest" label="&#xf0d2" />
												<option value="fa fa-pinterest-square" label="&#xf0d3" />
												<option value="fa fa-google-plus-square" label="&#xf0d4" />
												<option value="fa fa-google-plus" label="&#xf0d5" />
												<option value="fa fa-money" label="&#xf0d6" />
												<option value="fa fa-caret-down" label="&#xf0d7" />
												<option value="fa fa-caret-up" label="&#xf0d8" />
												<option value="fa fa-caret-left" label="&#xf0d9" />
												<option value="fa fa-caret-right" label="&#xf0da" />
												<option value="fa fa-columns" label="&#xf0db" />
												<option value="fa fa-sort" label="&#xf0dc" />
												<option value="fa fa-sort-desc" label="&#xf0dd" />
												<option value="fa fa-sort-asc" label="&#xf0de" />
												<option value="fa fa-envelope" label="&#xf0e0" />
												<option value="fa fa-linkedin" label="&#xf0e1" />
												<option value="fa fa-undo" label="&#xf0e2" />
												<option value="fa fa-gavel" label="&#xf0e3" />
												<option value="fa fa-tachometer" label="&#xf0e4" />
												<option value="fa fa-comment-o" label="&#xf0e5" />
												<option value="fa fa-comments-o" label="&#xf0e6" />
												<option value="fa fa-bolt" label="&#xf0e7" />
												<option value="fa fa-sitemap" label="&#xf0e8" />
												<option value="fa fa-umbrella" label="&#xf0e9" />
												<option value="fa fa-clipboard" label="&#xf0ea" />
												<option value="fa fa-lightbulb-o" label="&#xf0eb" />
												<option value="fa fa-exchange" label="&#xf0ec" />
												<option value="fa fa-cloud-download" label="&#xf0ed" />
												<option value="fa fa-cloud-upload" label="&#xf0ee" />
												<option value="fa fa-user-md" label="&#xf0f0" />
												<option value="fa fa-stethoscope" label="&#xf0f1" />
												<option value="fa fa-suitcase" label="&#xf0f2" />
												<option value="fa fa-bell-o" label="&#xf0a2" />
												<option value="fa fa-coffee" label="&#xf0f4" />
												<option value="fa fa-cutlery" label="&#xf0f5" />
												<option value="fa fa-file-text-o" label="&#xf0f6" />
												<option value="fa fa-building-o" label="&#xf0f7" />
												<option value="fa fa-hospital-o" label="&#xf0f8" />
												<option value="fa fa-ambulance" label="&#xf0f9" />
												<option value="fa fa-medkit" label="&#xf0fa" />
												<option value="fa fa-fighter-jet" label="&#xf0fb" />
												<option value="fa fa-beer" label="&#xf0fc" />
												<option value="fa fa-h-square" label="&#xf0fd" />
												<option value="fa fa-plus-square" label="&#xf0fe" />
												<option value="fa fa-angle-double-left" label="&#xf100" />
												<option value="fa fa-angle-double-right" label="&#xf101" />
												<option value="fa fa-angle-double-up" label="&#xf102" />
												<option value="fa fa-angle-double-down" label="&#xf103" />
												<option value="fa fa-angle-left" label="&#xf104" />
												<option value="fa fa-angle-right" label="&#xf105" />
												<option value="fa fa-angle-up" label="&#xf106" />
												<option value="fa fa-angle-down" label="&#xf107" />
												<option value="fa fa-desktop" label="&#xf108" />
												<option value="fa fa-laptop" label="&#xf109" />
												<option value="fa fa-tablet" label="&#xf10a" />
												<option value="fa fa-mobile" label="&#xf10b" />
												<option value="fa fa-circle-o" label="&#xf10c" />
												<option value="fa fa-quote-left" label="&#xf10d" />
												<option value="fa fa-quote-right" label="&#xf10e" />
												<option value="fa fa-spinner" label="&#xf110" />
												<option value="fa fa-circle" label="&#xf111" />
												<option value="fa fa-reply" label="&#xf112" />
												<option value="fa fa-github-alt" label="&#xf113" />
												<option value="fa fa-folder-o" label="&#xf114" />
												<option value="fa fa-folder-open-o" label="&#xf115" />
												<option value="fa fa-smile-o" label="&#xf118" />
												<option value="fa fa-frown-o" label="&#xf119" />
												<option value="fa fa-meh-o" label="&#xf11a" />
												<option value="fa fa-gamepad" label="&#xf11b" />
												<option value="fa fa-keyboard-o" label="&#xf11c" />
												<option value="fa fa-flag-o" label="&#xf11d" />
												<option value="fa fa-flag-checkered" label="&#xf11e" />
												<option value="fa fa-terminal" label="&#xf120" />
												<option value="fa fa-code" label="&#xf121" />
												<option value="fa fa-reply-all" label="&#xf122" />
												<option value="fa fa-star-half-o" label="&#xf123" />
												<option value="fa fa-location-arrow" label="&#xf124" />
												<option value="fa fa-crop" label="&#xf125" />
												<option value="fa fa-code-fork" label="&#xf126" />
												<option value="fa fa-chain-broken" label="&#xf127" />
												<option value="fa fa-question" label="&#xf128" />
												<option value="fa fa-info" label="&#xf129" />
												<option value="fa fa-exclamation" label="&#xf12a" />
												<option value="fa fa-superscript" label="&#xf12b" />
												<option value="fa fa-subscript" label="&#xf12c" />
												<option value="fa fa-eraser" label="&#xf12d" />
												<option value="fa fa-puzzle-piece" label="&#xf12e" />
												<option value="fa fa-microphone" label="&#xf130" />
												<option value="fa fa-microphone-slash" label="&#xf131" />
												<option value="fa fa-shield" label="&#xf132" />
												<option value="fa fa-calendar-o" label="&#xf133" />
												<option value="fa fa-fire-extinguisher" label="&#xf134" />
												<option value="fa fa-rocket" label="&#xf135" />
												<option value="fa fa-maxcdn" label="&#xf136" />
												<option value="fa fa-chevron-circle-left" label="&#xf137" />
												<option value="fa fa-chevron-circle-right" label="&#xf138" />
												<option value="fa fa-chevron-circle-up" label="&#xf139" />
												<option value="fa fa-chevron-circle-down" label="&#xf13a" />
												<option value="fa fa-html5" label="&#xf13b" />
												<option value="fa fa-css3" label="&#xf13c" />
												<option value="fa fa-anchor" label="&#xf13d" />
												<option value="fa fa-unlock-alt" label="&#xf13e" />
												<option value="fa fa-bullseye" label="&#xf140" />
												<option value="fa fa-ellipsis-h" label="&#xf141" />
												<option value="fa fa-ellipsis-v" label="&#xf142" />
												<option value="fa fa-rss-square" label="&#xf143" />
												<option value="fa fa-play-circle" label="&#xf144" />
												<option value="fa fa-ticket" label="&#xf145" />
												<option value="fa fa-minus-square" label="&#xf146" />
												<option value="fa fa-minus-square-o" label="&#xf147" />
												<option value="fa fa-level-up" label="&#xf148" />
												<option value="fa fa-level-down" label="&#xf149" />
												<option value="fa fa-check-square" label="&#xf14a" />
												<option value="fa fa-pencil-square" label="&#xf14b" />
												<option value="fa fa-external-link-square" label="&#xf14c" />
												<option value="fa fa-share-square" label="&#xf14d" />
												<option value="fa fa-compass" label="&#xf14e" />
												<option value="fa fa-caret-square-o-down" label="&#xf150" />
												<option value="fa fa-caret-square-o-up" label="&#xf151" />
												<option value="fa fa-caret-square-o-right" label="&#xf152" />
												<option value="fa fa-eur" label="&#xf153" />
												<option value="fa fa-gbp" label="&#xf154" />
												<option value="fa fa-usd" label="&#xf155" />
												<option value="fa fa-inr" label="&#xf156" />
												<option value="fa fa-jpy" label="&#xf157" />
												<option value="fa fa-rub" label="&#xf158" />
												<option value="fa fa-krw" label="&#xf159" />
												<option value="fa fa-btc" label="&#xf15a" />
												<option value="fa fa-file" label="&#xf15b" />
												<option value="fa fa-file-text" label="&#xf15c" />
												<option value="fa fa-sort-alpha-asc" label="&#xf15d" />
												<option value="fa fa-sort-alpha-desc" label="&#xf15e" />
												<option value="fa fa-sort-amount-asc" label="&#xf160" />
												<option value="fa fa-sort-amount-desc" label="&#xf161" />
												<option value="fa fa-sort-numeric-asc" label="&#xf162" />
												<option value="fa fa-sort-numeric-desc" label="&#xf163" />
												<option value="fa fa-thumbs-up" label="&#xf164" />
												<option value="fa fa-thumbs-down" label="&#xf165" />
												<option value="fa fa-youtube-square" label="&#xf166" />
												<option value="fa fa-youtube" label="&#xf167" />
												<option value="fa fa-xing" label="&#xf168" />
												<option value="fa fa-xing-square" label="&#xf169" />
												<option value="fa fa-youtube-play" label="&#xf16a" />
												<option value="fa fa-dropbox" label="&#xf16b" />
												<option value="fa fa-stack-overflow" label="&#xf16c" />
												<option value="fa fa-instagram" label="&#xf16d" />
												<option value="fa fa-flickr" label="&#xf16e" />
												<option value="fa fa-adn" label="&#xf170" />
												<option value="fa fa-bitbucket" label="&#xf171" />
												<option value="fa fa-bitbucket-square" label="&#xf172" />
												<option value="fa fa-tumblr" label="&#xf173" />
												<option value="fa fa-tumblr-square" label="&#xf174" />
												<option value="fa fa-long-arrow-down" label="&#xf175" />
												<option value="fa fa-long-arrow-up" label="&#xf176" />
												<option value="fa fa-long-arrow-left" label="&#xf177" />
												<option value="fa fa-long-arrow-right" label="&#xf178" />
												<option value="fa fa-apple" label="&#xf179" />
												<option value="fa fa-windows" label="&#xf17a" />
												<option value="fa fa-android" label="&#xf17b" />
												<option value="fa fa-linux" label="&#xf17c" />
												<option value="fa fa-dribbble" label="&#xf17d" />
												<option value="fa fa-skype" label="&#xf17e" />
												<option value="fa fa-foursquare" label="&#xf180" />
												<option value="fa fa-trello" label="&#xf181" />
												<option value="fa fa-female" label="&#xf182" />
												<option value="fa fa-male" label="&#xf183" />
												<option value="fa fa-gratipay" label="&#xf184" />
												<option value="fa fa-sun-o" label="&#xf185" />
												<option value="fa fa-moon-o" label="&#xf186" />
												<option value="fa fa-archive" label="&#xf187" />
												<option value="fa fa-bug" label="&#xf188" />
												<option value="fa fa-vk" label="&#xf189" />
												<option value="fa fa-weibo" label="&#xf18a" />
												<option value="fa fa-renren" label="&#xf18b" />
												<option value="fa fa-pagelines" label="&#xf18c" />
												<option value="fa fa-stack-exchange" label="&#xf18d" />
												<option value="fa fa-arrow-circle-o-right" label="&#xf18e" />
												<option value="fa fa-arrow-circle-o-left" label="&#xf190" />
												<option value="fa fa-caret-square-o-left" label="&#xf191" />
												<option value="fa fa-dot-circle-o" label="&#xf192" />
												<option value="fa fa-wheelchair" label="&#xf193" />
												<option value="fa fa-vimeo-square" label="&#xf194" />
												<option value="fa fa-try" label="&#xf195" />
												<option value="fa fa-plus-square-o" label="&#xf196" />
												<option value="fa fa-space-shuttle" label="&#xf197" />
												<option value="fa fa-slack" label="&#xf198" />
												<option value="fa fa-envelope-square" label="&#xf199" />
												<option value="fa fa-wordpress" label="&#xf19a" />
												<option value="fa fa-openid" label="&#xf19b" />
												<option value="fa fa-university" label="&#xf19c" />
												<option value="fa fa-graduation-cap" label="&#xf19d" />
												<option value="fa fa-yahoo" label="&#xf19e" />
												<option value="fa fa-google" label="&#xf1a0" />
												<option value="fa fa-reddit" label="&#xf1a1" />
												<option value="fa fa-reddit-square" label="&#xf1a2" />
												<option value="fa fa-stumbleupon-circle" label="&#xf1a3" />
												<option value="fa fa-stumbleupon" label="&#xf1a4" />
												<option value="fa fa-delicious" label="&#xf1a5" />
												<option value="fa fa-digg" label="&#xf1a6" />
												<option value="fa fa-pied-piper" label="&#xf1a7" />
												<option value="fa fa-pied-piper-alt" label="&#xf1a8" />
												<option value="fa fa-drupal" label="&#xf1a9" />
												<option value="fa fa-joomla" label="&#xf1aa" />
												<option value="fa fa-language" label="&#xf1ab" />
												<option value="fa fa-fax" label="&#xf1ac" />
												<option value="fa fa-building" label="&#xf1ad" />
												<option value="fa fa-child" label="&#xf1ae" />
												<option value="fa fa-paw" label="&#xf1b0" />
												<option value="fa fa-spoon" label="&#xf1b1" />
												<option value="fa fa-cube" label="&#xf1b2" />
												<option value="fa fa-cubes" label="&#xf1b3" />
												<option value="fa fa-behance" label="&#xf1b4" />
												<option value="fa fa-behance-square" label="&#xf1b5" />
												<option value="fa fa-steam" label="&#xf1b6" />
												<option value="fa fa-steam-square" label="&#xf1b7" />
												<option value="fa fa-recycle" label="&#xf1b8" />
												<option value="fa fa-car" label="&#xf1b9" />
												<option value="fa fa-taxi" label="&#xf1ba" />
												<option value="fa fa-tree" label="&#xf1bb" />
												<option value="fa fa-spotify" label="&#xf1bc" />
												<option value="fa fa-deviantart" label="&#xf1bd" />
												<option value="fa fa-soundcloud" label="&#xf1be" />
												<option value="fa fa-database" label="&#xf1c0" />
												<option value="fa fa-file-pdf-o" label="&#xf1c1" />
												<option value="fa fa-file-word-o" label="&#xf1c2" />
												<option value="fa fa-file-excel-o" label="&#xf1c3" />
												<option value="fa fa-file-powerpoint-o" label="&#xf1c4" />
												<option value="fa fa-file-image-o" label="&#xf1c5" />
												<option value="fa fa-file-archive-o" label="&#xf1c6" />
												<option value="fa fa-file-audio-o" label="&#xf1c7" />
												<option value="fa fa-file-video-o" label="&#xf1c8" />
												<option value="fa fa-file-code-o" label="&#xf1c9" />
												<option value="fa fa-vine" label="&#xf1ca" />
												<option value="fa fa-codepen" label="&#xf1cb" />
												<option value="fa fa-jsfiddle" label="&#xf1cc" />
												<option value="fa fa-life-ring" label="&#xf1cd" />
												<option value="fa fa-circle-o-notch" label="&#xf1ce" />
												<option value="fa fa-rebel" label="&#xf1d0" />
												<option value="fa fa-empire" label="&#xf1d1" />
												<option value="fa fa-git-square" label="&#xf1d2" />
												<option value="fa fa-git" label="&#xf1d3" />
												<option value="fa fa-hacker-news" label="&#xf1d4" />
												<option value="fa fa-tencent-weibo" label="&#xf1d5" />
												<option value="fa fa-qq" label="&#xf1d6" />
												<option value="fa fa-weixin" label="&#xf1d7" />
												<option value="fa fa-paper-plane" label="&#xf1d8" />
												<option value="fa fa-paper-plane-o" label="&#xf1d9" />
												<option value="fa fa-history" label="&#xf1da" />
												<option value="fa fa-circle-thin" label="&#xf1db" />
												<option value="fa fa-header" label="&#xf1dc" />
												<option value="fa fa-paragraph" label="&#xf1dd" />
												<option value="fa fa-sliders" label="&#xf1de" />
												<option value="fa fa-share-alt" label="&#xf1e0" />
												<option value="fa fa-share-alt-square" label="&#xf1e1" />
												<option value="fa fa-bomb" label="&#xf1e2" />
												<option value="fa fa-futbol-o" label="&#xf1e3" />
												<option value="fa fa-tty" label="&#xf1e4" />
												<option value="fa fa-binoculars" label="&#xf1e5" />
												<option value="fa fa-plug" label="&#xf1e6" />
												<option value="fa fa-slideshare" label="&#xf1e7" />
												<option value="fa fa-twitch" label="&#xf1e8" />
												<option value="fa fa-yelp" label="&#xf1e9" />
												<option value="fa fa-newspaper-o" label="&#xf1ea" />
												<option value="fa fa-wifi" label="&#xf1eb" />
												<option value="fa fa-calculator" label="&#xf1ec" />
												<option value="fa fa-paypal" label="&#xf1ed" />
												<option value="fa fa-google-wallet" label="&#xf1ee" />
												<option value="fa fa-cc-visa" label="&#xf1f0" />
												<option value="fa fa-cc-mastercard" label="&#xf1f1" />
												<option value="fa fa-cc-discover" label="&#xf1f2" />
												<option value="fa fa-cc-amex" label="&#xf1f3" />
												<option value="fa fa-cc-paypal" label="&#xf1f4" />
												<option value="fa fa-cc-stripe" label="&#xf1f5" />
												<option value="fa fa-bell-slash" label="&#xf1f6" />
												<option value="fa fa-bell-slash-o" label="&#xf1f7" />
												<option value="fa fa-trash" label="&#xf1f8" />
												<option value="fa fa-copyright" label="&#xf1f9" />
												<option value="fa fa-at" label="&#xf1fa" />
												<option value="fa fa-eyedropper" label="&#xf1fb" />
												<option value="fa fa-paint-brush" label="&#xf1fc" />
												<option value="fa fa-birthday-cake" label="&#xf1fd" />
												<option value="fa fa-area-chart" label="&#xf1fe" />
												<option value="fa fa-pie-chart" label="&#xf200" />
												<option value="fa fa-line-chart" label="&#xf201" />
												<option value="fa fa-lastfm" label="&#xf202" />
												<option value="fa fa-lastfm-square" label="&#xf203" />
												<option value="fa fa-toggle-off" label="&#xf204" />
												<option value="fa fa-toggle-on" label="&#xf205" />
												<option value="fa fa-bicycle" label="&#xf206" />
												<option value="fa fa-bus" label="&#xf207" />
												<option value="fa fa-ioxhost" label="&#xf208" />
												<option value="fa fa-angellist" label="&#xf209" />
												<option value="fa fa-cc" label="&#xf20a" />
												<option value="fa fa-ils" label="&#xf20b" />
												<option value="fa fa-meanpath" label="&#xf20c" />
												<option value="fa fa-buysellads" label="&#xf20d" />
												<option value="fa fa-connectdevelop" label="&#xf20e" />
												<option value="fa fa-dashcube" label="&#xf210" />
												<option value="fa fa-forumbee" label="&#xf211" />
												<option value="fa fa-leanpub" label="&#xf212" />
												<option value="fa fa-sellsy" label="&#xf213" />
												<option value="fa fa-shirtsinbulk" label="&#xf214" />
												<option value="fa fa-simplybuilt" label="&#xf215" />
												<option value="fa fa-skyatlas" label="&#xf216" />
												<option value="fa fa-cart-plus" label="&#xf217" />
												<option value="fa fa-cart-arrow-down" label="&#xf218" />
												<option value="fa fa-diamond" label="&#xf219" />
												<option value="fa fa-ship" label="&#xf21a" />
												<option value="fa fa-user-secret" label="&#xf21b" />
												<option value="fa fa-motorcycle" label="&#xf21c" />
												<option value="fa fa-street-view" label="&#xf21d" />
												<option value="fa fa-heartbeat" label="&#xf21e" />
												<option value="fa fa-venus" label="&#xf221" />
												<option value="fa fa-mars" label="&#xf222" />
												<option value="fa fa-mercury" label="&#xf223" />
												<option value="fa fa-transgender" label="&#xf224" />
												<option value="fa fa-transgender-alt" label="&#xf225" />
												<option value="fa fa-venus-double" label="&#xf226" />
												<option value="fa fa-mars-double" label="&#xf227" />
												<option value="fa fa-venus-mars" label="&#xf228" />
												<option value="fa fa-mars-stroke" label="&#xf229" />
												<option value="fa fa-mars-stroke-v" label="&#xf22a" />
												<option value="fa fa-mars-stroke-h" label="&#xf22b" />
												<option value="fa fa-neuter" label="&#xf22c" />
												<option value="fa fa-facebook-official" label="&#xf230" />
												<option value="fa fa-pinterest-p" label="&#xf231" />
												<option value="fa fa-whatsapp" label="&#xf232" />
												<option value="fa fa-server" label="&#xf233" />
												<option value="fa fa-user-plus" label="&#xf234" />
												<option value="fa fa-user-times" label="&#xf235" />
												<option value="fa fa-bed" label="&#xf236" />
												<option value="fa fa-viacoin" label="&#xf237" />
												<option value="fa fa-train" label="&#xf238" />
												<option value="fa fa-subway" label="&#xf239" />
												<option value="fa fa-medium" label="&#xf23a" />
											</select>

										</div>
									</div>
									<div class="form-group">

										<label for="inputEmail3" class="col-md-3 control-label">h1-label-3</label>
										<div class="col-md-9">
											<input id="h1label3" name="h1label3" type="text"
												value="${basics.h1Label5}" placeholder="Label"
												class="form-control">
										</div>
									</div>
									<div class="form-group">

										<label for="inputEmail3" class="col-md-3 control-label">h1-label-3-description</label>
										<div class="col-md-9">
											<input id="h1Description3" name="h1Description3" type="text"
												value="${basics.h1Label6}" placeholder="description"
												class="form-control">
										</div>
									</div>
									<div class="form-group">

										<label for="inputEmail3" class="col-md-3 control-label">h1-icon-4</label>
										<div class="col-md-9">
											<select class="fa-select" id="icon4" name="icon4">
												<option label="Select icon" />
												<option value="fa fa-glass" label="&#xf000" />
												<option value="fa fa-music" label="&#xf001" />
												<option value="fa fa-search" label="&#xf002" />
												<option value="fa fa-envelope-o" label="&#xf003" />
												<option value="fa fa-heart" label="&#xf004" />
												<option value="fa fa-star" label="&#xf005" />
												<option value="fa fa-star-o" label="&#xf006" />
												<option value="fa fa-user" label="&#xf007" />
												<option value="fa fa-film" label="&#xf008" />
												<option value="fa fa-th-large" label="&#xf009" />
												<option value="fa fa-th" label="&#xf00a" />
												<option value="fa fa-th-list" label="&#xf00b" />
												<option value="fa fa-check" label="&#xf00c" />
												<option value="fa fa-times" label="&#xf00d" />
												<option value="fa fa-search-plus" label="&#xf00e" />
												<option value="fa fa-search-minus" label="&#xf010" />
												<option value="fa fa-power-off" label="&#xf011" />
												<option value="fa fa-signal" label="&#xf012" />
												<option value="fa fa-cog" label="&#xf013" />
												<option value="fa fa-trash-o" label="&#xf014" />
												<option value="fa fa-home" label="&#xf015" />
												<option value="fa fa-file-o" label="&#xf016" />
												<option value="fa fa-clock-o" label="&#xf017" />
												<option value="fa fa-road" label="&#xf018" />
												<option value="fa fa-download" label="&#xf019" />
												<option value="fa fa-arrow-circle-o-down" label="&#xf01a" />
												<option value="fa fa-arrow-circle-o-up" label="&#xf01b" />
												<option value="fa fa-inbox" label="&#xf01c" />
												<option value="fa fa-play-circle-o" label="&#xf01d" />
												<option value="fa fa-repeat" label="&#xf01e" />
												<option value="fa fa-refresh" label="&#xf021" />
												<option value="fa fa-list-alt" label="&#xf022" />
												<option value="fa fa-lock" label="&#xf023" />
												<option value="fa fa-flag" label="&#xf024" />
												<option value="fa fa-headphones" label="&#xf025" />
												<option value="fa fa-volume-off" label="&#xf026" />
												<option value="fa fa-volume-down" label="&#xf027" />
												<option value="fa fa-volume-up" label="&#xf028" />
												<option value="fa fa-qrcode" label="&#xf029" />
												<option value="fa fa-barcode" label="&#xf02a" />
												<option value="fa fa-tag" label="&#xf02b" />
												<option value="fa fa-tags" label="&#xf02c" />
												<option value="fa fa-book" label="&#xf02d" />
												<option value="fa fa-bookmark" label="&#xf02e" />
												<option value="fa fa-print" label="&#xf02f" />
												<option value="fa fa-camera" label="&#xf030" />
												<option value="fa fa-font" label="&#xf031" />
												<option value="fa fa-bold" label="&#xf032" />
												<option value="fa fa-italic" label="&#xf033" />
												<option value="fa fa-text-height" label="&#xf034" />
												<option value="fa fa-text-width" label="&#xf035" />
												<option value="fa fa-align-left" label="&#xf036" />
												<option value="fa fa-align-center" label="&#xf037" />
												<option value="fa fa-align-right" label="&#xf038" />
												<option value="fa fa-align-justify" label="&#xf039" />
												<option value="fa fa-list" label="&#xf03a" />
												<option value="fa fa-outdent" label="&#xf03b" />
												<option value="fa fa-indent" label="&#xf03c" />
												<option value="fa fa-video-camera" label="&#xf03d" />
												<option value="fa fa-picture-o" label="&#xf03e" />
												<option value="fa fa-pencil" label="&#xf040" />
												<option value="fa fa-map-marker" label="&#xf041" />
												<option value="fa fa-adjust" label="&#xf042" />
												<option value="fa fa-tint" label="&#xf043" />
												<option value="fa fa-pencil-square-o" label="&#xf044" />
												<option value="fa fa-share-square-o" label="&#xf045" />
												<option value="fa fa-check-square-o" label="&#xf046" />
												<option value="fa fa-arrows" label="&#xf047" />
												<option value="fa fa-step-backward" label="&#xf048" />
												<option value="fa fa-fast-backward" label="&#xf049" />
												<option value="fa fa-backward" label="&#xf04a" />
												<option value="fa fa-play" label="&#xf04b" />
												<option value="fa fa-pause" label="&#xf04c" />
												<option value="fa fa-stop" label="&#xf04d" />
												<option value="fa fa-forward" label="&#xf04e" />
												<option value="fa fa-fast-forward" label="&#xf050" />
												<option value="fa fa-step-forward" label="&#xf051" />
												<option value="fa fa-eject" label="&#xf052" />
												<option value="fa fa-chevron-left" label="&#xf053" />
												<option value="fa fa-chevron-right" label="&#xf054" />
												<option value="fa fa-plus-circle" label="&#xf055" />
												<option value="fa fa-minus-circle" label="&#xf056" />
												<option value="fa fa-times-circle" label="&#xf057" />
												<option value="fa fa-check-circle" label="&#xf058" />
												<option value="fa fa-question-circle" label="&#xf059" />
												<option value="fa fa-info-circle" label="&#xf05a" />
												<option value="fa fa-crosshairs" label="&#xf05b" />
												<option value="fa fa-times-circle-o" label="&#xf05c" />
												<option value="fa fa-check-circle-o" label="&#xf05d" />
												<option value="fa fa-ban" label="&#xf05e" />
												<option value="fa fa-arrow-left" label="&#xf060" />
												<option value="fa fa-arrow-right" label="&#xf061" />
												<option value="fa fa-arrow-up" label="&#xf062" />
												<option value="fa fa-arrow-down" label="&#xf063" />
												<option value="fa fa-share" label="&#xf064" />
												<option value="fa fa-expand" label="&#xf065" />
												<option value="fa fa-compress" label="&#xf066" />
												<option value="fa fa-plus" label="&#xf067" />
												<option value="fa fa-minus" label="&#xf068" />
												<option value="fa fa-asterisk" label="&#xf069" />
												<option value="fa fa-exclamation-circle" label="&#xf06a" />
												<option value="fa fa-gift" label="&#xf06b" />
												<option value="fa fa-leaf" label="&#xf06c" />
												<option value="fa fa-fire" label="&#xf06d" />
												<option value="fa fa-eye" label="&#xf06e" />
												<option value="fa fa-eye-slash" label="&#xf070" />
												<option value="fa fa-exclamation-triangle" label="&#xf071" />
												<option value="fa fa-plane" label="&#xf072" />
												<option value="fa fa-calendar" label="&#xf073" />
												<option value="fa fa-random" label="&#xf074" />
												<option value="fa fa-comment" label="&#xf075" />
												<option value="fa fa-magnet" label="&#xf076" />
												<option value="fa fa-chevron-up" label="&#xf077" />
												<option value="fa fa-chevron-down" label="&#xf078" />
												<option value="fa fa-retweet" label="&#xf079" />
												<option value="fa fa-shopping-cart" label="&#xf07a" />
												<option value="fa fa-folder" label="&#xf07b" />
												<option value="fa fa-folder-open" label="&#xf07c" />
												<option value="fa fa-arrows-v" label="&#xf07d" />
												<option value="fa fa-arrows-h" label="&#xf07e" />
												<option value="fa fa-bar-chart" label="&#xf080" />
												<option value="fa fa-twitter-square" label="&#xf081" />
												<option value="fa fa-facebook-square" label="&#xf082" />
												<option value="fa fa-camera-retro" label="&#xf083" />
												<option value="fa fa-key" label="&#xf084" />
												<option value="fa fa-cogs" label="&#xf085" />
												<option value="fa fa-comments" label="&#xf086" />
												<option value="fa fa-thumbs-o-up" label="&#xf087" />
												<option value="fa fa-thumbs-o-down" label="&#xf088" />
												<option value="fa fa-star-half" label="&#xf089" />
												<option value="fa fa-heart-o" label="&#xf08a" />
												<option value="fa fa-sign-out" label="&#xf08b" />
												<option value="fa fa-linkedin-square" label="&#xf08c" />
												<option value="fa fa-thumb-tack" label="&#xf08d" />
												<option value="fa fa-external-link" label="&#xf08e" />
												<option value="fa fa-sign-in" label="&#xf090" />
												<option value="fa fa-trophy" label="&#xf091" />
												<option value="fa fa-github-square" label="&#xf092" />
												<option value="fa fa-upload" label="&#xf093" />
												<option value="fa fa-lemon-o" label="&#xf094" />
												<option value="fa fa-phone" label="&#xf095" />
												<option value="fa fa-square-o" label="&#xf096" />
												<option value="fa fa-bookmark-o" label="&#xf097" />
												<option value="fa fa-phone-square" label="&#xf098" />
												<option value="fa fa-twitter" label="&#xf099" />
												<option value="fa fa-facebook" label="&#xf09a" />
												<option value="fa fa-github" label="&#xf09b" />
												<option value="fa fa-unlock" label="&#xf09c" />
												<option value="fa fa-credit-card" label="&#xf09d" />
												<option value="fa fa-rss" label="&#xf09e" />
												<option value="fa fa-hdd-o" label="&#xf0a0" />
												<option value="fa fa-bullhorn" label="&#xf0a1" />
												<option value="fa fa-bell" label="&#xf0f3" />
												<option value="fa fa-certificate" label="&#xf0a3" />
												<option value="fa fa-hand-o-right" label="&#xf0a4" />
												<option value="fa fa-hand-o-left" label="&#xf0a5" />
												<option value="fa fa-hand-o-up" label="&#xf0a6" />
												<option value="fa fa-hand-o-down" label="&#xf0a7" />
												<option value="fa fa-arrow-circle-left" label="&#xf0a8" />
												<option value="fa fa-arrow-circle-right" label="&#xf0a9" />
												<option value="fa fa-arrow-circle-up" label="&#xf0aa" />
												<option value="fa fa-arrow-circle-down" label="&#xf0ab" />
												<option value="fa fa-globe" label="&#xf0ac" />
												<option value="fa fa-wrench" label="&#xf0ad" />
												<option value="fa fa-tasks" label="&#xf0ae" />
												<option value="fa fa-filter" label="&#xf0b0" />
												<option value="fa fa-briefcase" label="&#xf0b1" />
												<option value="fa fa-arrows-alt" label="&#xf0b2" />
												<option value="fa fa-users" label="&#xf0c0" />
												<option value="fa fa-link" label="&#xf0c1" />
												<option value="fa fa-cloud" label="&#xf0c2" />
												<option value="fa fa-flask" label="&#xf0c3" />
												<option value="fa fa-scissors" label="&#xf0c4" />
												<option value="fa fa-files-o" label="&#xf0c5" />
												<option value="fa fa-paperclip" label="&#xf0c6" />
												<option value="fa fa-floppy-o" label="&#xf0c7" />
												<option value="fa fa-square" label="&#xf0c8" />
												<option value="fa fa-bars" label="&#xf0c9" />
												<option value="fa fa-list-ul" label="&#xf0ca" />
												<option value="fa fa-list-ol" label="&#xf0cb" />
												<option value="fa fa-strikethrough" label="&#xf0cc" />
												<option value="fa fa-underline" label="&#xf0cd" />
												<option value="fa fa-table" label="&#xf0ce" />
												<option value="fa fa-magic" label="&#xf0d0" />
												<option value="fa fa-truck" label="&#xf0d1" />
												<option value="fa fa-pinterest" label="&#xf0d2" />
												<option value="fa fa-pinterest-square" label="&#xf0d3" />
												<option value="fa fa-google-plus-square" label="&#xf0d4" />
												<option value="fa fa-google-plus" label="&#xf0d5" />
												<option value="fa fa-money" label="&#xf0d6" />
												<option value="fa fa-caret-down" label="&#xf0d7" />
												<option value="fa fa-caret-up" label="&#xf0d8" />
												<option value="fa fa-caret-left" label="&#xf0d9" />
												<option value="fa fa-caret-right" label="&#xf0da" />
												<option value="fa fa-columns" label="&#xf0db" />
												<option value="fa fa-sort" label="&#xf0dc" />
												<option value="fa fa-sort-desc" label="&#xf0dd" />
												<option value="fa fa-sort-asc" label="&#xf0de" />
												<option value="fa fa-envelope" label="&#xf0e0" />
												<option value="fa fa-linkedin" label="&#xf0e1" />
												<option value="fa fa-undo" label="&#xf0e2" />
												<option value="fa fa-gavel" label="&#xf0e3" />
												<option value="fa fa-tachometer" label="&#xf0e4" />
												<option value="fa fa-comment-o" label="&#xf0e5" />
												<option value="fa fa-comments-o" label="&#xf0e6" />
												<option value="fa fa-bolt" label="&#xf0e7" />
												<option value="fa fa-sitemap" label="&#xf0e8" />
												<option value="fa fa-umbrella" label="&#xf0e9" />
												<option value="fa fa-clipboard" label="&#xf0ea" />
												<option value="fa fa-lightbulb-o" label="&#xf0eb" />
												<option value="fa fa-exchange" label="&#xf0ec" />
												<option value="fa fa-cloud-download" label="&#xf0ed" />
												<option value="fa fa-cloud-upload" label="&#xf0ee" />
												<option value="fa fa-user-md" label="&#xf0f0" />
												<option value="fa fa-stethoscope" label="&#xf0f1" />
												<option value="fa fa-suitcase" label="&#xf0f2" />
												<option value="fa fa-bell-o" label="&#xf0a2" />
												<option value="fa fa-coffee" label="&#xf0f4" />
												<option value="fa fa-cutlery" label="&#xf0f5" />
												<option value="fa fa-file-text-o" label="&#xf0f6" />
												<option value="fa fa-building-o" label="&#xf0f7" />
												<option value="fa fa-hospital-o" label="&#xf0f8" />
												<option value="fa fa-ambulance" label="&#xf0f9" />
												<option value="fa fa-medkit" label="&#xf0fa" />
												<option value="fa fa-fighter-jet" label="&#xf0fb" />
												<option value="fa fa-beer" label="&#xf0fc" />
												<option value="fa fa-h-square" label="&#xf0fd" />
												<option value="fa fa-plus-square" label="&#xf0fe" />
												<option value="fa fa-angle-double-left" label="&#xf100" />
												<option value="fa fa-angle-double-right" label="&#xf101" />
												<option value="fa fa-angle-double-up" label="&#xf102" />
												<option value="fa fa-angle-double-down" label="&#xf103" />
												<option value="fa fa-angle-left" label="&#xf104" />
												<option value="fa fa-angle-right" label="&#xf105" />
												<option value="fa fa-angle-up" label="&#xf106" />
												<option value="fa fa-angle-down" label="&#xf107" />
												<option value="fa fa-desktop" label="&#xf108" />
												<option value="fa fa-laptop" label="&#xf109" />
												<option value="fa fa-tablet" label="&#xf10a" />
												<option value="fa fa-mobile" label="&#xf10b" />
												<option value="fa fa-circle-o" label="&#xf10c" />
												<option value="fa fa-quote-left" label="&#xf10d" />
												<option value="fa fa-quote-right" label="&#xf10e" />
												<option value="fa fa-spinner" label="&#xf110" />
												<option value="fa fa-circle" label="&#xf111" />
												<option value="fa fa-reply" label="&#xf112" />
												<option value="fa fa-github-alt" label="&#xf113" />
												<option value="fa fa-folder-o" label="&#xf114" />
												<option value="fa fa-folder-open-o" label="&#xf115" />
												<option value="fa fa-smile-o" label="&#xf118" />
												<option value="fa fa-frown-o" label="&#xf119" />
												<option value="fa fa-meh-o" label="&#xf11a" />
												<option value="fa fa-gamepad" label="&#xf11b" />
												<option value="fa fa-keyboard-o" label="&#xf11c" />
												<option value="fa fa-flag-o" label="&#xf11d" />
												<option value="fa fa-flag-checkered" label="&#xf11e" />
												<option value="fa fa-terminal" label="&#xf120" />
												<option value="fa fa-code" label="&#xf121" />
												<option value="fa fa-reply-all" label="&#xf122" />
												<option value="fa fa-star-half-o" label="&#xf123" />
												<option value="fa fa-location-arrow" label="&#xf124" />
												<option value="fa fa-crop" label="&#xf125" />
												<option value="fa fa-code-fork" label="&#xf126" />
												<option value="fa fa-chain-broken" label="&#xf127" />
												<option value="fa fa-question" label="&#xf128" />
												<option value="fa fa-info" label="&#xf129" />
												<option value="fa fa-exclamation" label="&#xf12a" />
												<option value="fa fa-superscript" label="&#xf12b" />
												<option value="fa fa-subscript" label="&#xf12c" />
												<option value="fa fa-eraser" label="&#xf12d" />
												<option value="fa fa-puzzle-piece" label="&#xf12e" />
												<option value="fa fa-microphone" label="&#xf130" />
												<option value="fa fa-microphone-slash" label="&#xf131" />
												<option value="fa fa-shield" label="&#xf132" />
												<option value="fa fa-calendar-o" label="&#xf133" />
												<option value="fa fa-fire-extinguisher" label="&#xf134" />
												<option value="fa fa-rocket" label="&#xf135" />
												<option value="fa fa-maxcdn" label="&#xf136" />
												<option value="fa fa-chevron-circle-left" label="&#xf137" />
												<option value="fa fa-chevron-circle-right" label="&#xf138" />
												<option value="fa fa-chevron-circle-up" label="&#xf139" />
												<option value="fa fa-chevron-circle-down" label="&#xf13a" />
												<option value="fa fa-html5" label="&#xf13b" />
												<option value="fa fa-css3" label="&#xf13c" />
												<option value="fa fa-anchor" label="&#xf13d" />
												<option value="fa fa-unlock-alt" label="&#xf13e" />
												<option value="fa fa-bullseye" label="&#xf140" />
												<option value="fa fa-ellipsis-h" label="&#xf141" />
												<option value="fa fa-ellipsis-v" label="&#xf142" />
												<option value="fa fa-rss-square" label="&#xf143" />
												<option value="fa fa-play-circle" label="&#xf144" />
												<option value="fa fa-ticket" label="&#xf145" />
												<option value="fa fa-minus-square" label="&#xf146" />
												<option value="fa fa-minus-square-o" label="&#xf147" />
												<option value="fa fa-level-up" label="&#xf148" />
												<option value="fa fa-level-down" label="&#xf149" />
												<option value="fa fa-check-square" label="&#xf14a" />
												<option value="fa fa-pencil-square" label="&#xf14b" />
												<option value="fa fa-external-link-square" label="&#xf14c" />
												<option value="fa fa-share-square" label="&#xf14d" />
												<option value="fa fa-compass" label="&#xf14e" />
												<option value="fa fa-caret-square-o-down" label="&#xf150" />
												<option value="fa fa-caret-square-o-up" label="&#xf151" />
												<option value="fa fa-caret-square-o-right" label="&#xf152" />
												<option value="fa fa-eur" label="&#xf153" />
												<option value="fa fa-gbp" label="&#xf154" />
												<option value="fa fa-usd" label="&#xf155" />
												<option value="fa fa-inr" label="&#xf156" />
												<option value="fa fa-jpy" label="&#xf157" />
												<option value="fa fa-rub" label="&#xf158" />
												<option value="fa fa-krw" label="&#xf159" />
												<option value="fa fa-btc" label="&#xf15a" />
												<option value="fa fa-file" label="&#xf15b" />
												<option value="fa fa-file-text" label="&#xf15c" />
												<option value="fa fa-sort-alpha-asc" label="&#xf15d" />
												<option value="fa fa-sort-alpha-desc" label="&#xf15e" />
												<option value="fa fa-sort-amount-asc" label="&#xf160" />
												<option value="fa fa-sort-amount-desc" label="&#xf161" />
												<option value="fa fa-sort-numeric-asc" label="&#xf162" />
												<option value="fa fa-sort-numeric-desc" label="&#xf163" />
												<option value="fa fa-thumbs-up" label="&#xf164" />
												<option value="fa fa-thumbs-down" label="&#xf165" />
												<option value="fa fa-youtube-square" label="&#xf166" />
												<option value="fa fa-youtube" label="&#xf167" />
												<option value="fa fa-xing" label="&#xf168" />
												<option value="fa fa-xing-square" label="&#xf169" />
												<option value="fa fa-youtube-play" label="&#xf16a" />
												<option value="fa fa-dropbox" label="&#xf16b" />
												<option value="fa fa-stack-overflow" label="&#xf16c" />
												<option value="fa fa-instagram" label="&#xf16d" />
												<option value="fa fa-flickr" label="&#xf16e" />
												<option value="fa fa-adn" label="&#xf170" />
												<option value="fa fa-bitbucket" label="&#xf171" />
												<option value="fa fa-bitbucket-square" label="&#xf172" />
												<option value="fa fa-tumblr" label="&#xf173" />
												<option value="fa fa-tumblr-square" label="&#xf174" />
												<option value="fa fa-long-arrow-down" label="&#xf175" />
												<option value="fa fa-long-arrow-up" label="&#xf176" />
												<option value="fa fa-long-arrow-left" label="&#xf177" />
												<option value="fa fa-long-arrow-right" label="&#xf178" />
												<option value="fa fa-apple" label="&#xf179" />
												<option value="fa fa-windows" label="&#xf17a" />
												<option value="fa fa-android" label="&#xf17b" />
												<option value="fa fa-linux" label="&#xf17c" />
												<option value="fa fa-dribbble" label="&#xf17d" />
												<option value="fa fa-skype" label="&#xf17e" />
												<option value="fa fa-foursquare" label="&#xf180" />
												<option value="fa fa-trello" label="&#xf181" />
												<option value="fa fa-female" label="&#xf182" />
												<option value="fa fa-male" label="&#xf183" />
												<option value="fa fa-gratipay" label="&#xf184" />
												<option value="fa fa-sun-o" label="&#xf185" />
												<option value="fa fa-moon-o" label="&#xf186" />
												<option value="fa fa-archive" label="&#xf187" />
												<option value="fa fa-bug" label="&#xf188" />
												<option value="fa fa-vk" label="&#xf189" />
												<option value="fa fa-weibo" label="&#xf18a" />
												<option value="fa fa-renren" label="&#xf18b" />
												<option value="fa fa-pagelines" label="&#xf18c" />
												<option value="fa fa-stack-exchange" label="&#xf18d" />
												<option value="fa fa-arrow-circle-o-right" label="&#xf18e" />
												<option value="fa fa-arrow-circle-o-left" label="&#xf190" />
												<option value="fa fa-caret-square-o-left" label="&#xf191" />
												<option value="fa fa-dot-circle-o" label="&#xf192" />
												<option value="fa fa-wheelchair" label="&#xf193" />
												<option value="fa fa-vimeo-square" label="&#xf194" />
												<option value="fa fa-try" label="&#xf195" />
												<option value="fa fa-plus-square-o" label="&#xf196" />
												<option value="fa fa-space-shuttle" label="&#xf197" />
												<option value="fa fa-slack" label="&#xf198" />
												<option value="fa fa-envelope-square" label="&#xf199" />
												<option value="fa fa-wordpress" label="&#xf19a" />
												<option value="fa fa-openid" label="&#xf19b" />
												<option value="fa fa-university" label="&#xf19c" />
												<option value="fa fa-graduation-cap" label="&#xf19d" />
												<option value="fa fa-yahoo" label="&#xf19e" />
												<option value="fa fa-google" label="&#xf1a0" />
												<option value="fa fa-reddit" label="&#xf1a1" />
												<option value="fa fa-reddit-square" label="&#xf1a2" />
												<option value="fa fa-stumbleupon-circle" label="&#xf1a3" />
												<option value="fa fa-stumbleupon" label="&#xf1a4" />
												<option value="fa fa-delicious" label="&#xf1a5" />
												<option value="fa fa-digg" label="&#xf1a6" />
												<option value="fa fa-pied-piper" label="&#xf1a7" />
												<option value="fa fa-pied-piper-alt" label="&#xf1a8" />
												<option value="fa fa-drupal" label="&#xf1a9" />
												<option value="fa fa-joomla" label="&#xf1aa" />
												<option value="fa fa-language" label="&#xf1ab" />
												<option value="fa fa-fax" label="&#xf1ac" />
												<option value="fa fa-building" label="&#xf1ad" />
												<option value="fa fa-child" label="&#xf1ae" />
												<option value="fa fa-paw" label="&#xf1b0" />
												<option value="fa fa-spoon" label="&#xf1b1" />
												<option value="fa fa-cube" label="&#xf1b2" />
												<option value="fa fa-cubes" label="&#xf1b3" />
												<option value="fa fa-behance" label="&#xf1b4" />
												<option value="fa fa-behance-square" label="&#xf1b5" />
												<option value="fa fa-steam" label="&#xf1b6" />
												<option value="fa fa-steam-square" label="&#xf1b7" />
												<option value="fa fa-recycle" label="&#xf1b8" />
												<option value="fa fa-car" label="&#xf1b9" />
												<option value="fa fa-taxi" label="&#xf1ba" />
												<option value="fa fa-tree" label="&#xf1bb" />
												<option value="fa fa-spotify" label="&#xf1bc" />
												<option value="fa fa-deviantart" label="&#xf1bd" />
												<option value="fa fa-soundcloud" label="&#xf1be" />
												<option value="fa fa-database" label="&#xf1c0" />
												<option value="fa fa-file-pdf-o" label="&#xf1c1" />
												<option value="fa fa-file-word-o" label="&#xf1c2" />
												<option value="fa fa-file-excel-o" label="&#xf1c3" />
												<option value="fa fa-file-powerpoint-o" label="&#xf1c4" />
												<option value="fa fa-file-image-o" label="&#xf1c5" />
												<option value="fa fa-file-archive-o" label="&#xf1c6" />
												<option value="fa fa-file-audio-o" label="&#xf1c7" />
												<option value="fa fa-file-video-o" label="&#xf1c8" />
												<option value="fa fa-file-code-o" label="&#xf1c9" />
												<option value="fa fa-vine" label="&#xf1ca" />
												<option value="fa fa-codepen" label="&#xf1cb" />
												<option value="fa fa-jsfiddle" label="&#xf1cc" />
												<option value="fa fa-life-ring" label="&#xf1cd" />
												<option value="fa fa-circle-o-notch" label="&#xf1ce" />
												<option value="fa fa-rebel" label="&#xf1d0" />
												<option value="fa fa-empire" label="&#xf1d1" />
												<option value="fa fa-git-square" label="&#xf1d2" />
												<option value="fa fa-git" label="&#xf1d3" />
												<option value="fa fa-hacker-news" label="&#xf1d4" />
												<option value="fa fa-tencent-weibo" label="&#xf1d5" />
												<option value="fa fa-qq" label="&#xf1d6" />
												<option value="fa fa-weixin" label="&#xf1d7" />
												<option value="fa fa-paper-plane" label="&#xf1d8" />
												<option value="fa fa-paper-plane-o" label="&#xf1d9" />
												<option value="fa fa-history" label="&#xf1da" />
												<option value="fa fa-circle-thin" label="&#xf1db" />
												<option value="fa fa-header" label="&#xf1dc" />
												<option value="fa fa-paragraph" label="&#xf1dd" />
												<option value="fa fa-sliders" label="&#xf1de" />
												<option value="fa fa-share-alt" label="&#xf1e0" />
												<option value="fa fa-share-alt-square" label="&#xf1e1" />
												<option value="fa fa-bomb" label="&#xf1e2" />
												<option value="fa fa-futbol-o" label="&#xf1e3" />
												<option value="fa fa-tty" label="&#xf1e4" />
												<option value="fa fa-binoculars" label="&#xf1e5" />
												<option value="fa fa-plug" label="&#xf1e6" />
												<option value="fa fa-slideshare" label="&#xf1e7" />
												<option value="fa fa-twitch" label="&#xf1e8" />
												<option value="fa fa-yelp" label="&#xf1e9" />
												<option value="fa fa-newspaper-o" label="&#xf1ea" />
												<option value="fa fa-wifi" label="&#xf1eb" />
												<option value="fa fa-calculator" label="&#xf1ec" />
												<option value="fa fa-paypal" label="&#xf1ed" />
												<option value="fa fa-google-wallet" label="&#xf1ee" />
												<option value="fa fa-cc-visa" label="&#xf1f0" />
												<option value="fa fa-cc-mastercard" label="&#xf1f1" />
												<option value="fa fa-cc-discover" label="&#xf1f2" />
												<option value="fa fa-cc-amex" label="&#xf1f3" />
												<option value="fa fa-cc-paypal" label="&#xf1f4" />
												<option value="fa fa-cc-stripe" label="&#xf1f5" />
												<option value="fa fa-bell-slash" label="&#xf1f6" />
												<option value="fa fa-bell-slash-o" label="&#xf1f7" />
												<option value="fa fa-trash" label="&#xf1f8" />
												<option value="fa fa-copyright" label="&#xf1f9" />
												<option value="fa fa-at" label="&#xf1fa" />
												<option value="fa fa-eyedropper" label="&#xf1fb" />
												<option value="fa fa-paint-brush" label="&#xf1fc" />
												<option value="fa fa-birthday-cake" label="&#xf1fd" />
												<option value="fa fa-area-chart" label="&#xf1fe" />
												<option value="fa fa-pie-chart" label="&#xf200" />
												<option value="fa fa-line-chart" label="&#xf201" />
												<option value="fa fa-lastfm" label="&#xf202" />
												<option value="fa fa-lastfm-square" label="&#xf203" />
												<option value="fa fa-toggle-off" label="&#xf204" />
												<option value="fa fa-toggle-on" label="&#xf205" />
												<option value="fa fa-bicycle" label="&#xf206" />
												<option value="fa fa-bus" label="&#xf207" />
												<option value="fa fa-ioxhost" label="&#xf208" />
												<option value="fa fa-angellist" label="&#xf209" />
												<option value="fa fa-cc" label="&#xf20a" />
												<option value="fa fa-ils" label="&#xf20b" />
												<option value="fa fa-meanpath" label="&#xf20c" />
												<option value="fa fa-buysellads" label="&#xf20d" />
												<option value="fa fa-connectdevelop" label="&#xf20e" />
												<option value="fa fa-dashcube" label="&#xf210" />
												<option value="fa fa-forumbee" label="&#xf211" />
												<option value="fa fa-leanpub" label="&#xf212" />
												<option value="fa fa-sellsy" label="&#xf213" />
												<option value="fa fa-shirtsinbulk" label="&#xf214" />
												<option value="fa fa-simplybuilt" label="&#xf215" />
												<option value="fa fa-skyatlas" label="&#xf216" />
												<option value="fa fa-cart-plus" label="&#xf217" />
												<option value="fa fa-cart-arrow-down" label="&#xf218" />
												<option value="fa fa-diamond" label="&#xf219" />
												<option value="fa fa-ship" label="&#xf21a" />
												<option value="fa fa-user-secret" label="&#xf21b" />
												<option value="fa fa-motorcycle" label="&#xf21c" />
												<option value="fa fa-street-view" label="&#xf21d" />
												<option value="fa fa-heartbeat" label="&#xf21e" />
												<option value="fa fa-venus" label="&#xf221" />
												<option value="fa fa-mars" label="&#xf222" />
												<option value="fa fa-mercury" label="&#xf223" />
												<option value="fa fa-transgender" label="&#xf224" />
												<option value="fa fa-transgender-alt" label="&#xf225" />
												<option value="fa fa-venus-double" label="&#xf226" />
												<option value="fa fa-mars-double" label="&#xf227" />
												<option value="fa fa-venus-mars" label="&#xf228" />
												<option value="fa fa-mars-stroke" label="&#xf229" />
												<option value="fa fa-mars-stroke-v" label="&#xf22a" />
												<option value="fa fa-mars-stroke-h" label="&#xf22b" />
												<option value="fa fa-neuter" label="&#xf22c" />
												<option value="fa fa-facebook-official" label="&#xf230" />
												<option value="fa fa-pinterest-p" label="&#xf231" />
												<option value="fa fa-whatsapp" label="&#xf232" />
												<option value="fa fa-server" label="&#xf233" />
												<option value="fa fa-user-plus" label="&#xf234" />
												<option value="fa fa-user-times" label="&#xf235" />
												<option value="fa fa-bed" label="&#xf236" />
												<option value="fa fa-viacoin" label="&#xf237" />
												<option value="fa fa-train" label="&#xf238" />
												<option value="fa fa-subway" label="&#xf239" />
												<option value="fa fa-medium" label="&#xf23a" />
											</select>

										</div>
									</div>
									<div class="form-group">

										<label for="inputEmail3" class="col-md-3 control-label">h1-label-4</label>
										<div class="col-md-9">
											<input id="h1Label4" name="h1Label4" type="text"
												value="${basics.h1Label7}" placeholder="Label"
												class="form-control">

										</div>
									</div>
									<div class="form-group">

										<label for="inputEmail3" class="col-md-3 control-label">h1-label-4-description</label>
										<div class="col-md-9">
											<input id="h1Description4" name="h1Description4" type="text"
												value="${basics.h1Label8}" placeholder="S2-Label-3"
												class="form-control">
										</div>
									</div>


									<div class="form-group">
										<label for="inputEmail3" class="col-md-3 control-label">h1-icon-5</label>
										<div class="col-md-9">
											<select class="fa-select" id="icon5" name="icon5">
												<option label="Select icon" />
												<option value="fa fa-glass" label="&#xf000" />
												<option value="fa fa-music" label="&#xf001" />
												<option value="fa fa-search" label="&#xf002" />
												<option value="fa fa-envelope-o" label="&#xf003" />
												<option value="fa fa-heart" label="&#xf004" />
												<option value="fa fa-star" label="&#xf005" />
												<option value="fa fa-star-o" label="&#xf006" />
												<option value="fa fa-user" label="&#xf007" />
												<option value="fa fa-film" label="&#xf008" />
												<option value="fa fa-th-large" label="&#xf009" />
												<option value="fa fa-th" label="&#xf00a" />
												<option value="fa fa-th-list" label="&#xf00b" />
												<option value="fa fa-check" label="&#xf00c" />
												<option value="fa fa-times" label="&#xf00d" />
												<option value="fa fa-search-plus" label="&#xf00e" />
												<option value="fa fa-search-minus" label="&#xf010" />
												<option value="fa fa-power-off" label="&#xf011" />
												<option value="fa fa-signal" label="&#xf012" />
												<option value="fa fa-cog" label="&#xf013" />
												<option value="fa fa-trash-o" label="&#xf014" />
												<option value="fa fa-home" label="&#xf015" />
												<option value="fa fa-file-o" label="&#xf016" />
												<option value="fa fa-clock-o" label="&#xf017" />
												<option value="fa fa-road" label="&#xf018" />
												<option value="fa fa-download" label="&#xf019" />
												<option value="fa fa-arrow-circle-o-down" label="&#xf01a" />
												<option value="fa fa-arrow-circle-o-up" label="&#xf01b" />
												<option value="fa fa-inbox" label="&#xf01c" />
												<option value="fa fa-play-circle-o" label="&#xf01d" />
												<option value="fa fa-repeat" label="&#xf01e" />
												<option value="fa fa-refresh" label="&#xf021" />
												<option value="fa fa-list-alt" label="&#xf022" />
												<option value="fa fa-lock" label="&#xf023" />
												<option value="fa fa-flag" label="&#xf024" />
												<option value="fa fa-headphones" label="&#xf025" />
												<option value="fa fa-volume-off" label="&#xf026" />
												<option value="fa fa-volume-down" label="&#xf027" />
												<option value="fa fa-volume-up" label="&#xf028" />
												<option value="fa fa-qrcode" label="&#xf029" />
												<option value="fa fa-barcode" label="&#xf02a" />
												<option value="fa fa-tag" label="&#xf02b" />
												<option value="fa fa-tags" label="&#xf02c" />
												<option value="fa fa-book" label="&#xf02d" />
												<option value="fa fa-bookmark" label="&#xf02e" />
												<option value="fa fa-print" label="&#xf02f" />
												<option value="fa fa-camera" label="&#xf030" />
												<option value="fa fa-font" label="&#xf031" />
												<option value="fa fa-bold" label="&#xf032" />
												<option value="fa fa-italic" label="&#xf033" />
												<option value="fa fa-text-height" label="&#xf034" />
												<option value="fa fa-text-width" label="&#xf035" />
												<option value="fa fa-align-left" label="&#xf036" />
												<option value="fa fa-align-center" label="&#xf037" />
												<option value="fa fa-align-right" label="&#xf038" />
												<option value="fa fa-align-justify" label="&#xf039" />
												<option value="fa fa-list" label="&#xf03a" />
												<option value="fa fa-outdent" label="&#xf03b" />
												<option value="fa fa-indent" label="&#xf03c" />
												<option value="fa fa-video-camera" label="&#xf03d" />
												<option value="fa fa-picture-o" label="&#xf03e" />
												<option value="fa fa-pencil" label="&#xf040" />
												<option value="fa fa-map-marker" label="&#xf041" />
												<option value="fa fa-adjust" label="&#xf042" />
												<option value="fa fa-tint" label="&#xf043" />
												<option value="fa fa-pencil-square-o" label="&#xf044" />
												<option value="fa fa-share-square-o" label="&#xf045" />
												<option value="fa fa-check-square-o" label="&#xf046" />
												<option value="fa fa-arrows" label="&#xf047" />
												<option value="fa fa-step-backward" label="&#xf048" />
												<option value="fa fa-fast-backward" label="&#xf049" />
												<option value="fa fa-backward" label="&#xf04a" />
												<option value="fa fa-play" label="&#xf04b" />
												<option value="fa fa-pause" label="&#xf04c" />
												<option value="fa fa-stop" label="&#xf04d" />
												<option value="fa fa-forward" label="&#xf04e" />
												<option value="fa fa-fast-forward" label="&#xf050" />
												<option value="fa fa-step-forward" label="&#xf051" />
												<option value="fa fa-eject" label="&#xf052" />
												<option value="fa fa-chevron-left" label="&#xf053" />
												<option value="fa fa-chevron-right" label="&#xf054" />
												<option value="fa fa-plus-circle" label="&#xf055" />
												<option value="fa fa-minus-circle" label="&#xf056" />
												<option value="fa fa-times-circle" label="&#xf057" />
												<option value="fa fa-check-circle" label="&#xf058" />
												<option value="fa fa-question-circle" label="&#xf059" />
												<option value="fa fa-info-circle" label="&#xf05a" />
												<option value="fa fa-crosshairs" label="&#xf05b" />
												<option value="fa fa-times-circle-o" label="&#xf05c" />
												<option value="fa fa-check-circle-o" label="&#xf05d" />
												<option value="fa fa-ban" label="&#xf05e" />
												<option value="fa fa-arrow-left" label="&#xf060" />
												<option value="fa fa-arrow-right" label="&#xf061" />
												<option value="fa fa-arrow-up" label="&#xf062" />
												<option value="fa fa-arrow-down" label="&#xf063" />
												<option value="fa fa-share" label="&#xf064" />
												<option value="fa fa-expand" label="&#xf065" />
												<option value="fa fa-compress" label="&#xf066" />
												<option value="fa fa-plus" label="&#xf067" />
												<option value="fa fa-minus" label="&#xf068" />
												<option value="fa fa-asterisk" label="&#xf069" />
												<option value="fa fa-exclamation-circle" label="&#xf06a" />
												<option value="fa fa-gift" label="&#xf06b" />
												<option value="fa fa-leaf" label="&#xf06c" />
												<option value="fa fa-fire" label="&#xf06d" />
												<option value="fa fa-eye" label="&#xf06e" />
												<option value="fa fa-eye-slash" label="&#xf070" />
												<option value="fa fa-exclamation-triangle" label="&#xf071" />
												<option value="fa fa-plane" label="&#xf072" />
												<option value="fa fa-calendar" label="&#xf073" />
												<option value="fa fa-random" label="&#xf074" />
												<option value="fa fa-comment" label="&#xf075" />
												<option value="fa fa-magnet" label="&#xf076" />
												<option value="fa fa-chevron-up" label="&#xf077" />
												<option value="fa fa-chevron-down" label="&#xf078" />
												<option value="fa fa-retweet" label="&#xf079" />
												<option value="fa fa-shopping-cart" label="&#xf07a" />
												<option value="fa fa-folder" label="&#xf07b" />
												<option value="fa fa-folder-open" label="&#xf07c" />
												<option value="fa fa-arrows-v" label="&#xf07d" />
												<option value="fa fa-arrows-h" label="&#xf07e" />
												<option value="fa fa-bar-chart" label="&#xf080" />
												<option value="fa fa-twitter-square" label="&#xf081" />
												<option value="fa fa-facebook-square" label="&#xf082" />
												<option value="fa fa-camera-retro" label="&#xf083" />
												<option value="fa fa-key" label="&#xf084" />
												<option value="fa fa-cogs" label="&#xf085" />
												<option value="fa fa-comments" label="&#xf086" />
												<option value="fa fa-thumbs-o-up" label="&#xf087" />
												<option value="fa fa-thumbs-o-down" label="&#xf088" />
												<option value="fa fa-star-half" label="&#xf089" />
												<option value="fa fa-heart-o" label="&#xf08a" />
												<option value="fa fa-sign-out" label="&#xf08b" />
												<option value="fa fa-linkedin-square" label="&#xf08c" />
												<option value="fa fa-thumb-tack" label="&#xf08d" />
												<option value="fa fa-external-link" label="&#xf08e" />
												<option value="fa fa-sign-in" label="&#xf090" />
												<option value="fa fa-trophy" label="&#xf091" />
												<option value="fa fa-github-square" label="&#xf092" />
												<option value="fa fa-upload" label="&#xf093" />
												<option value="fa fa-lemon-o" label="&#xf094" />
												<option value="fa fa-phone" label="&#xf095" />
												<option value="fa fa-square-o" label="&#xf096" />
												<option value="fa fa-bookmark-o" label="&#xf097" />
												<option value="fa fa-phone-square" label="&#xf098" />
												<option value="fa fa-twitter" label="&#xf099" />
												<option value="fa fa-facebook" label="&#xf09a" />
												<option value="fa fa-github" label="&#xf09b" />
												<option value="fa fa-unlock" label="&#xf09c" />
												<option value="fa fa-credit-card" label="&#xf09d" />
												<option value="fa fa-rss" label="&#xf09e" />
												<option value="fa fa-hdd-o" label="&#xf0a0" />
												<option value="fa fa-bullhorn" label="&#xf0a1" />
												<option value="fa fa-bell" label="&#xf0f3" />
												<option value="fa fa-certificate" label="&#xf0a3" />
												<option value="fa fa-hand-o-right" label="&#xf0a4" />
												<option value="fa fa-hand-o-left" label="&#xf0a5" />
												<option value="fa fa-hand-o-up" label="&#xf0a6" />
												<option value="fa fa-hand-o-down" label="&#xf0a7" />
												<option value="fa fa-arrow-circle-left" label="&#xf0a8" />
												<option value="fa fa-arrow-circle-right" label="&#xf0a9" />
												<option value="fa fa-arrow-circle-up" label="&#xf0aa" />
												<option value="fa fa-arrow-circle-down" label="&#xf0ab" />
												<option value="fa fa-globe" label="&#xf0ac" />
												<option value="fa fa-wrench" label="&#xf0ad" />
												<option value="fa fa-tasks" label="&#xf0ae" />
												<option value="fa fa-filter" label="&#xf0b0" />
												<option value="fa fa-briefcase" label="&#xf0b1" />
												<option value="fa fa-arrows-alt" label="&#xf0b2" />
												<option value="fa fa-users" label="&#xf0c0" />
												<option value="fa fa-link" label="&#xf0c1" />
												<option value="fa fa-cloud" label="&#xf0c2" />
												<option value="fa fa-flask" label="&#xf0c3" />
												<option value="fa fa-scissors" label="&#xf0c4" />
												<option value="fa fa-files-o" label="&#xf0c5" />
												<option value="fa fa-paperclip" label="&#xf0c6" />
												<option value="fa fa-floppy-o" label="&#xf0c7" />
												<option value="fa fa-square" label="&#xf0c8" />
												<option value="fa fa-bars" label="&#xf0c9" />
												<option value="fa fa-list-ul" label="&#xf0ca" />
												<option value="fa fa-list-ol" label="&#xf0cb" />
												<option value="fa fa-strikethrough" label="&#xf0cc" />
												<option value="fa fa-underline" label="&#xf0cd" />
												<option value="fa fa-table" label="&#xf0ce" />
												<option value="fa fa-magic" label="&#xf0d0" />
												<option value="fa fa-truck" label="&#xf0d1" />
												<option value="fa fa-pinterest" label="&#xf0d2" />
												<option value="fa fa-pinterest-square" label="&#xf0d3" />
												<option value="fa fa-google-plus-square" label="&#xf0d4" />
												<option value="fa fa-google-plus" label="&#xf0d5" />
												<option value="fa fa-money" label="&#xf0d6" />
												<option value="fa fa-caret-down" label="&#xf0d7" />
												<option value="fa fa-caret-up" label="&#xf0d8" />
												<option value="fa fa-caret-left" label="&#xf0d9" />
												<option value="fa fa-caret-right" label="&#xf0da" />
												<option value="fa fa-columns" label="&#xf0db" />
												<option value="fa fa-sort" label="&#xf0dc" />
												<option value="fa fa-sort-desc" label="&#xf0dd" />
												<option value="fa fa-sort-asc" label="&#xf0de" />
												<option value="fa fa-envelope" label="&#xf0e0" />
												<option value="fa fa-linkedin" label="&#xf0e1" />
												<option value="fa fa-undo" label="&#xf0e2" />
												<option value="fa fa-gavel" label="&#xf0e3" />
												<option value="fa fa-tachometer" label="&#xf0e4" />
												<option value="fa fa-comment-o" label="&#xf0e5" />
												<option value="fa fa-comments-o" label="&#xf0e6" />
												<option value="fa fa-bolt" label="&#xf0e7" />
												<option value="fa fa-sitemap" label="&#xf0e8" />
												<option value="fa fa-umbrella" label="&#xf0e9" />
												<option value="fa fa-clipboard" label="&#xf0ea" />
												<option value="fa fa-lightbulb-o" label="&#xf0eb" />
												<option value="fa fa-exchange" label="&#xf0ec" />
												<option value="fa fa-cloud-download" label="&#xf0ed" />
												<option value="fa fa-cloud-upload" label="&#xf0ee" />
												<option value="fa fa-user-md" label="&#xf0f0" />
												<option value="fa fa-stethoscope" label="&#xf0f1" />
												<option value="fa fa-suitcase" label="&#xf0f2" />
												<option value="fa fa-bell-o" label="&#xf0a2" />
												<option value="fa fa-coffee" label="&#xf0f4" />
												<option value="fa fa-cutlery" label="&#xf0f5" />
												<option value="fa fa-file-text-o" label="&#xf0f6" />
												<option value="fa fa-building-o" label="&#xf0f7" />
												<option value="fa fa-hospital-o" label="&#xf0f8" />
												<option value="fa fa-ambulance" label="&#xf0f9" />
												<option value="fa fa-medkit" label="&#xf0fa" />
												<option value="fa fa-fighter-jet" label="&#xf0fb" />
												<option value="fa fa-beer" label="&#xf0fc" />
												<option value="fa fa-h-square" label="&#xf0fd" />
												<option value="fa fa-plus-square" label="&#xf0fe" />
												<option value="fa fa-angle-double-left" label="&#xf100" />
												<option value="fa fa-angle-double-right" label="&#xf101" />
												<option value="fa fa-angle-double-up" label="&#xf102" />
												<option value="fa fa-angle-double-down" label="&#xf103" />
												<option value="fa fa-angle-left" label="&#xf104" />
												<option value="fa fa-angle-right" label="&#xf105" />
												<option value="fa fa-angle-up" label="&#xf106" />
												<option value="fa fa-angle-down" label="&#xf107" />
												<option value="fa fa-desktop" label="&#xf108" />
												<option value="fa fa-laptop" label="&#xf109" />
												<option value="fa fa-tablet" label="&#xf10a" />
												<option value="fa fa-mobile" label="&#xf10b" />
												<option value="fa fa-circle-o" label="&#xf10c" />
												<option value="fa fa-quote-left" label="&#xf10d" />
												<option value="fa fa-quote-right" label="&#xf10e" />
												<option value="fa fa-spinner" label="&#xf110" />
												<option value="fa fa-circle" label="&#xf111" />
												<option value="fa fa-reply" label="&#xf112" />
												<option value="fa fa-github-alt" label="&#xf113" />
												<option value="fa fa-folder-o" label="&#xf114" />
												<option value="fa fa-folder-open-o" label="&#xf115" />
												<option value="fa fa-smile-o" label="&#xf118" />
												<option value="fa fa-frown-o" label="&#xf119" />
												<option value="fa fa-meh-o" label="&#xf11a" />
												<option value="fa fa-gamepad" label="&#xf11b" />
												<option value="fa fa-keyboard-o" label="&#xf11c" />
												<option value="fa fa-flag-o" label="&#xf11d" />
												<option value="fa fa-flag-checkered" label="&#xf11e" />
												<option value="fa fa-terminal" label="&#xf120" />
												<option value="fa fa-code" label="&#xf121" />
												<option value="fa fa-reply-all" label="&#xf122" />
												<option value="fa fa-star-half-o" label="&#xf123" />
												<option value="fa fa-location-arrow" label="&#xf124" />
												<option value="fa fa-crop" label="&#xf125" />
												<option value="fa fa-code-fork" label="&#xf126" />
												<option value="fa fa-chain-broken" label="&#xf127" />
												<option value="fa fa-question" label="&#xf128" />
												<option value="fa fa-info" label="&#xf129" />
												<option value="fa fa-exclamation" label="&#xf12a" />
												<option value="fa fa-superscript" label="&#xf12b" />
												<option value="fa fa-subscript" label="&#xf12c" />
												<option value="fa fa-eraser" label="&#xf12d" />
												<option value="fa fa-puzzle-piece" label="&#xf12e" />
												<option value="fa fa-microphone" label="&#xf130" />
												<option value="fa fa-microphone-slash" label="&#xf131" />
												<option value="fa fa-shield" label="&#xf132" />
												<option value="fa fa-calendar-o" label="&#xf133" />
												<option value="fa fa-fire-extinguisher" label="&#xf134" />
												<option value="fa fa-rocket" label="&#xf135" />
												<option value="fa fa-maxcdn" label="&#xf136" />
												<option value="fa fa-chevron-circle-left" label="&#xf137" />
												<option value="fa fa-chevron-circle-right" label="&#xf138" />
												<option value="fa fa-chevron-circle-up" label="&#xf139" />
												<option value="fa fa-chevron-circle-down" label="&#xf13a" />
												<option value="fa fa-html5" label="&#xf13b" />
												<option value="fa fa-css3" label="&#xf13c" />
												<option value="fa fa-anchor" label="&#xf13d" />
												<option value="fa fa-unlock-alt" label="&#xf13e" />
												<option value="fa fa-bullseye" label="&#xf140" />
												<option value="fa fa-ellipsis-h" label="&#xf141" />
												<option value="fa fa-ellipsis-v" label="&#xf142" />
												<option value="fa fa-rss-square" label="&#xf143" />
												<option value="fa fa-play-circle" label="&#xf144" />
												<option value="fa fa-ticket" label="&#xf145" />
												<option value="fa fa-minus-square" label="&#xf146" />
												<option value="fa fa-minus-square-o" label="&#xf147" />
												<option value="fa fa-level-up" label="&#xf148" />
												<option value="fa fa-level-down" label="&#xf149" />
												<option value="fa fa-check-square" label="&#xf14a" />
												<option value="fa fa-pencil-square" label="&#xf14b" />
												<option value="fa fa-external-link-square" label="&#xf14c" />
												<option value="fa fa-share-square" label="&#xf14d" />
												<option value="fa fa-compass" label="&#xf14e" />
												<option value="fa fa-caret-square-o-down" label="&#xf150" />
												<option value="fa fa-caret-square-o-up" label="&#xf151" />
												<option value="fa fa-caret-square-o-right" label="&#xf152" />
												<option value="fa fa-eur" label="&#xf153" />
												<option value="fa fa-gbp" label="&#xf154" />
												<option value="fa fa-usd" label="&#xf155" />
												<option value="fa fa-inr" label="&#xf156" />
												<option value="fa fa-jpy" label="&#xf157" />
												<option value="fa fa-rub" label="&#xf158" />
												<option value="fa fa-krw" label="&#xf159" />
												<option value="fa fa-btc" label="&#xf15a" />
												<option value="fa fa-file" label="&#xf15b" />
												<option value="fa fa-file-text" label="&#xf15c" />
												<option value="fa fa-sort-alpha-asc" label="&#xf15d" />
												<option value="fa fa-sort-alpha-desc" label="&#xf15e" />
												<option value="fa fa-sort-amount-asc" label="&#xf160" />
												<option value="fa fa-sort-amount-desc" label="&#xf161" />
												<option value="fa fa-sort-numeric-asc" label="&#xf162" />
												<option value="fa fa-sort-numeric-desc" label="&#xf163" />
												<option value="fa fa-thumbs-up" label="&#xf164" />
												<option value="fa fa-thumbs-down" label="&#xf165" />
												<option value="fa fa-youtube-square" label="&#xf166" />
												<option value="fa fa-youtube" label="&#xf167" />
												<option value="fa fa-xing" label="&#xf168" />
												<option value="fa fa-xing-square" label="&#xf169" />
												<option value="fa fa-youtube-play" label="&#xf16a" />
												<option value="fa fa-dropbox" label="&#xf16b" />
												<option value="fa fa-stack-overflow" label="&#xf16c" />
												<option value="fa fa-instagram" label="&#xf16d" />
												<option value="fa fa-flickr" label="&#xf16e" />
												<option value="fa fa-adn" label="&#xf170" />
												<option value="fa fa-bitbucket" label="&#xf171" />
												<option value="fa fa-bitbucket-square" label="&#xf172" />
												<option value="fa fa-tumblr" label="&#xf173" />
												<option value="fa fa-tumblr-square" label="&#xf174" />
												<option value="fa fa-long-arrow-down" label="&#xf175" />
												<option value="fa fa-long-arrow-up" label="&#xf176" />
												<option value="fa fa-long-arrow-left" label="&#xf177" />
												<option value="fa fa-long-arrow-right" label="&#xf178" />
												<option value="fa fa-apple" label="&#xf179" />
												<option value="fa fa-windows" label="&#xf17a" />
												<option value="fa fa-android" label="&#xf17b" />
												<option value="fa fa-linux" label="&#xf17c" />
												<option value="fa fa-dribbble" label="&#xf17d" />
												<option value="fa fa-skype" label="&#xf17e" />
												<option value="fa fa-foursquare" label="&#xf180" />
												<option value="fa fa-trello" label="&#xf181" />
												<option value="fa fa-female" label="&#xf182" />
												<option value="fa fa-male" label="&#xf183" />
												<option value="fa fa-gratipay" label="&#xf184" />
												<option value="fa fa-sun-o" label="&#xf185" />
												<option value="fa fa-moon-o" label="&#xf186" />
												<option value="fa fa-archive" label="&#xf187" />
												<option value="fa fa-bug" label="&#xf188" />
												<option value="fa fa-vk" label="&#xf189" />
												<option value="fa fa-weibo" label="&#xf18a" />
												<option value="fa fa-renren" label="&#xf18b" />
												<option value="fa fa-pagelines" label="&#xf18c" />
												<option value="fa fa-stack-exchange" label="&#xf18d" />
												<option value="fa fa-arrow-circle-o-right" label="&#xf18e" />
												<option value="fa fa-arrow-circle-o-left" label="&#xf190" />
												<option value="fa fa-caret-square-o-left" label="&#xf191" />
												<option value="fa fa-dot-circle-o" label="&#xf192" />
												<option value="fa fa-wheelchair" label="&#xf193" />
												<option value="fa fa-vimeo-square" label="&#xf194" />
												<option value="fa fa-try" label="&#xf195" />
												<option value="fa fa-plus-square-o" label="&#xf196" />
												<option value="fa fa-space-shuttle" label="&#xf197" />
												<option value="fa fa-slack" label="&#xf198" />
												<option value="fa fa-envelope-square" label="&#xf199" />
												<option value="fa fa-wordpress" label="&#xf19a" />
												<option value="fa fa-openid" label="&#xf19b" />
												<option value="fa fa-university" label="&#xf19c" />
												<option value="fa fa-graduation-cap" label="&#xf19d" />
												<option value="fa fa-yahoo" label="&#xf19e" />
												<option value="fa fa-google" label="&#xf1a0" />
												<option value="fa fa-reddit" label="&#xf1a1" />
												<option value="fa fa-reddit-square" label="&#xf1a2" />
												<option value="fa fa-stumbleupon-circle" label="&#xf1a3" />
												<option value="fa fa-stumbleupon" label="&#xf1a4" />
												<option value="fa fa-delicious" label="&#xf1a5" />
												<option value="fa fa-digg" label="&#xf1a6" />
												<option value="fa fa-pied-piper" label="&#xf1a7" />
												<option value="fa fa-pied-piper-alt" label="&#xf1a8" />
												<option value="fa fa-drupal" label="&#xf1a9" />
												<option value="fa fa-joomla" label="&#xf1aa" />
												<option value="fa fa-language" label="&#xf1ab" />
												<option value="fa fa-fax" label="&#xf1ac" />
												<option value="fa fa-building" label="&#xf1ad" />
												<option value="fa fa-child" label="&#xf1ae" />
												<option value="fa fa-paw" label="&#xf1b0" />
												<option value="fa fa-spoon" label="&#xf1b1" />
												<option value="fa fa-cube" label="&#xf1b2" />
												<option value="fa fa-cubes" label="&#xf1b3" />
												<option value="fa fa-behance" label="&#xf1b4" />
												<option value="fa fa-behance-square" label="&#xf1b5" />
												<option value="fa fa-steam" label="&#xf1b6" />
												<option value="fa fa-steam-square" label="&#xf1b7" />
												<option value="fa fa-recycle" label="&#xf1b8" />
												<option value="fa fa-car" label="&#xf1b9" />
												<option value="fa fa-taxi" label="&#xf1ba" />
												<option value="fa fa-tree" label="&#xf1bb" />
												<option value="fa fa-spotify" label="&#xf1bc" />
												<option value="fa fa-deviantart" label="&#xf1bd" />
												<option value="fa fa-soundcloud" label="&#xf1be" />
												<option value="fa fa-database" label="&#xf1c0" />
												<option value="fa fa-file-pdf-o" label="&#xf1c1" />
												<option value="fa fa-file-word-o" label="&#xf1c2" />
												<option value="fa fa-file-excel-o" label="&#xf1c3" />
												<option value="fa fa-file-powerpoint-o" label="&#xf1c4" />
												<option value="fa fa-file-image-o" label="&#xf1c5" />
												<option value="fa fa-file-archive-o" label="&#xf1c6" />
												<option value="fa fa-file-audio-o" label="&#xf1c7" />
												<option value="fa fa-file-video-o" label="&#xf1c8" />
												<option value="fa fa-file-code-o" label="&#xf1c9" />
												<option value="fa fa-vine" label="&#xf1ca" />
												<option value="fa fa-codepen" label="&#xf1cb" />
												<option value="fa fa-jsfiddle" label="&#xf1cc" />
												<option value="fa fa-life-ring" label="&#xf1cd" />
												<option value="fa fa-circle-o-notch" label="&#xf1ce" />
												<option value="fa fa-rebel" label="&#xf1d0" />
												<option value="fa fa-empire" label="&#xf1d1" />
												<option value="fa fa-git-square" label="&#xf1d2" />
												<option value="fa fa-git" label="&#xf1d3" />
												<option value="fa fa-hacker-news" label="&#xf1d4" />
												<option value="fa fa-tencent-weibo" label="&#xf1d5" />
												<option value="fa fa-qq" label="&#xf1d6" />
												<option value="fa fa-weixin" label="&#xf1d7" />
												<option value="fa fa-paper-plane" label="&#xf1d8" />
												<option value="fa fa-paper-plane-o" label="&#xf1d9" />
												<option value="fa fa-history" label="&#xf1da" />
												<option value="fa fa-circle-thin" label="&#xf1db" />
												<option value="fa fa-header" label="&#xf1dc" />
												<option value="fa fa-paragraph" label="&#xf1dd" />
												<option value="fa fa-sliders" label="&#xf1de" />
												<option value="fa fa-share-alt" label="&#xf1e0" />
												<option value="fa fa-share-alt-square" label="&#xf1e1" />
												<option value="fa fa-bomb" label="&#xf1e2" />
												<option value="fa fa-futbol-o" label="&#xf1e3" />
												<option value="fa fa-tty" label="&#xf1e4" />
												<option value="fa fa-binoculars" label="&#xf1e5" />
												<option value="fa fa-plug" label="&#xf1e6" />
												<option value="fa fa-slideshare" label="&#xf1e7" />
												<option value="fa fa-twitch" label="&#xf1e8" />
												<option value="fa fa-yelp" label="&#xf1e9" />
												<option value="fa fa-newspaper-o" label="&#xf1ea" />
												<option value="fa fa-wifi" label="&#xf1eb" />
												<option value="fa fa-calculator" label="&#xf1ec" />
												<option value="fa fa-paypal" label="&#xf1ed" />
												<option value="fa fa-google-wallet" label="&#xf1ee" />
												<option value="fa fa-cc-visa" label="&#xf1f0" />
												<option value="fa fa-cc-mastercard" label="&#xf1f1" />
												<option value="fa fa-cc-discover" label="&#xf1f2" />
												<option value="fa fa-cc-amex" label="&#xf1f3" />
												<option value="fa fa-cc-paypal" label="&#xf1f4" />
												<option value="fa fa-cc-stripe" label="&#xf1f5" />
												<option value="fa fa-bell-slash" label="&#xf1f6" />
												<option value="fa fa-bell-slash-o" label="&#xf1f7" />
												<option value="fa fa-trash" label="&#xf1f8" />
												<option value="fa fa-copyright" label="&#xf1f9" />
												<option value="fa fa-at" label="&#xf1fa" />
												<option value="fa fa-eyedropper" label="&#xf1fb" />
												<option value="fa fa-paint-brush" label="&#xf1fc" />
												<option value="fa fa-birthday-cake" label="&#xf1fd" />
												<option value="fa fa-area-chart" label="&#xf1fe" />
												<option value="fa fa-pie-chart" label="&#xf200" />
												<option value="fa fa-line-chart" label="&#xf201" />
												<option value="fa fa-lastfm" label="&#xf202" />
												<option value="fa fa-lastfm-square" label="&#xf203" />
												<option value="fa fa-toggle-off" label="&#xf204" />
												<option value="fa fa-toggle-on" label="&#xf205" />
												<option value="fa fa-bicycle" label="&#xf206" />
												<option value="fa fa-bus" label="&#xf207" />
												<option value="fa fa-ioxhost" label="&#xf208" />
												<option value="fa fa-angellist" label="&#xf209" />
												<option value="fa fa-cc" label="&#xf20a" />
												<option value="fa fa-ils" label="&#xf20b" />
												<option value="fa fa-meanpath" label="&#xf20c" />
												<option value="fa fa-buysellads" label="&#xf20d" />
												<option value="fa fa-connectdevelop" label="&#xf20e" />
												<option value="fa fa-dashcube" label="&#xf210" />
												<option value="fa fa-forumbee" label="&#xf211" />
												<option value="fa fa-leanpub" label="&#xf212" />
												<option value="fa fa-sellsy" label="&#xf213" />
												<option value="fa fa-shirtsinbulk" label="&#xf214" />
												<option value="fa fa-simplybuilt" label="&#xf215" />
												<option value="fa fa-skyatlas" label="&#xf216" />
												<option value="fa fa-cart-plus" label="&#xf217" />
												<option value="fa fa-cart-arrow-down" label="&#xf218" />
												<option value="fa fa-diamond" label="&#xf219" />
												<option value="fa fa-ship" label="&#xf21a" />
												<option value="fa fa-user-secret" label="&#xf21b" />
												<option value="fa fa-motorcycle" label="&#xf21c" />
												<option value="fa fa-street-view" label="&#xf21d" />
												<option value="fa fa-heartbeat" label="&#xf21e" />
												<option value="fa fa-venus" label="&#xf221" />
												<option value="fa fa-mars" label="&#xf222" />
												<option value="fa fa-mercury" label="&#xf223" />
												<option value="fa fa-transgender" label="&#xf224" />
												<option value="fa fa-transgender-alt" label="&#xf225" />
												<option value="fa fa-venus-double" label="&#xf226" />
												<option value="fa fa-mars-double" label="&#xf227" />
												<option value="fa fa-venus-mars" label="&#xf228" />
												<option value="fa fa-mars-stroke" label="&#xf229" />
												<option value="fa fa-mars-stroke-v" label="&#xf22a" />
												<option value="fa fa-mars-stroke-h" label="&#xf22b" />
												<option value="fa fa-neuter" label="&#xf22c" />
												<option value="fa fa-facebook-official" label="&#xf230" />
												<option value="fa fa-pinterest-p" label="&#xf231" />
												<option value="fa fa-whatsapp" label="&#xf232" />
												<option value="fa fa-server" label="&#xf233" />
												<option value="fa fa-user-plus" label="&#xf234" />
												<option value="fa fa-user-times" label="&#xf235" />
												<option value="fa fa-bed" label="&#xf236" />
												<option value="fa fa-viacoin" label="&#xf237" />
												<option value="fa fa-train" label="&#xf238" />
												<option value="fa fa-subway" label="&#xf239" />
												<option value="fa fa-medium" label="&#xf23a" />
											</select>

										</div>
									</div>
									<div class="form-group">
										<label for="inputEmail3" class="col-md-3 control-label">h1-label-5</label>
										<div class="col-md-9">
											<input id="h1Label5" name="h1Label5" type="text"
												value="${basics.h1Label9}" placeholder="Label"
												class="form-control">
										</div>
									</div>
									<div class="form-group">

										<label for="inputEmail3" class="col-md-3 control-label">h1-label-5-description</label>
										<div class="col-md-9">
											<input id="h1Description5" name="h1Description5" type="text"
												value="${basics.h1Label10}" placeholder="Description"
												class="form-control">
										</div>
									</div>

									<div class="form-group">

										<label for="inputEmail3" class="col-md-3 control-label">h1-icon-6</label>
										<div class="col-md-9">
											<select class="fa-select" id="icon6" name="icon6">
												<option label="Select icon" />
												<option value="fa fa-glass" label="&#xf000" />
												<option value="fa fa-music" label="&#xf001" />
												<option value="fa fa-search" label="&#xf002" />
												<option value="fa fa-envelope-o" label="&#xf003" />
												<option value="fa fa-heart" label="&#xf004" />
												<option value="fa fa-star" label="&#xf005" />
												<option value="fa fa-star-o" label="&#xf006" />
												<option value="fa fa-user" label="&#xf007" />
												<option value="fa fa-film" label="&#xf008" />
												<option value="fa fa-th-large" label="&#xf009" />
												<option value="fa fa-th" label="&#xf00a" />
												<option value="fa fa-th-list" label="&#xf00b" />
												<option value="fa fa-check" label="&#xf00c" />
												<option value="fa fa-times" label="&#xf00d" />
												<option value="fa fa-search-plus" label="&#xf00e" />
												<option value="fa fa-search-minus" label="&#xf010" />
												<option value="fa fa-power-off" label="&#xf011" />
												<option value="fa fa-signal" label="&#xf012" />
												<option value="fa fa-cog" label="&#xf013" />
												<option value="fa fa-trash-o" label="&#xf014" />
												<option value="fa fa-home" label="&#xf015" />
												<option value="fa fa-file-o" label="&#xf016" />
												<option value="fa fa-clock-o" label="&#xf017" />
												<option value="fa fa-road" label="&#xf018" />
												<option value="fa fa-download" label="&#xf019" />
												<option value="fa fa-arrow-circle-o-down" label="&#xf01a" />
												<option value="fa fa-arrow-circle-o-up" label="&#xf01b" />
												<option value="fa fa-inbox" label="&#xf01c" />
												<option value="fa fa-play-circle-o" label="&#xf01d" />
												<option value="fa fa-repeat" label="&#xf01e" />
												<option value="fa fa-refresh" label="&#xf021" />
												<option value="fa fa-list-alt" label="&#xf022" />
												<option value="fa fa-lock" label="&#xf023" />
												<option value="fa fa-flag" label="&#xf024" />
												<option value="fa fa-headphones" label="&#xf025" />
												<option value="fa fa-volume-off" label="&#xf026" />
												<option value="fa fa-volume-down" label="&#xf027" />
												<option value="fa fa-volume-up" label="&#xf028" />
												<option value="fa fa-qrcode" label="&#xf029" />
												<option value="fa fa-barcode" label="&#xf02a" />
												<option value="fa fa-tag" label="&#xf02b" />
												<option value="fa fa-tags" label="&#xf02c" />
												<option value="fa fa-book" label="&#xf02d" />
												<option value="fa fa-bookmark" label="&#xf02e" />
												<option value="fa fa-print" label="&#xf02f" />
												<option value="fa fa-camera" label="&#xf030" />
												<option value="fa fa-font" label="&#xf031" />
												<option value="fa fa-bold" label="&#xf032" />
												<option value="fa fa-italic" label="&#xf033" />
												<option value="fa fa-text-height" label="&#xf034" />
												<option value="fa fa-text-width" label="&#xf035" />
												<option value="fa fa-align-left" label="&#xf036" />
												<option value="fa fa-align-center" label="&#xf037" />
												<option value="fa fa-align-right" label="&#xf038" />
												<option value="fa fa-align-justify" label="&#xf039" />
												<option value="fa fa-list" label="&#xf03a" />
												<option value="fa fa-outdent" label="&#xf03b" />
												<option value="fa fa-indent" label="&#xf03c" />
												<option value="fa fa-video-camera" label="&#xf03d" />
												<option value="fa fa-picture-o" label="&#xf03e" />
												<option value="fa fa-pencil" label="&#xf040" />
												<option value="fa fa-map-marker" label="&#xf041" />
												<option value="fa fa-adjust" label="&#xf042" />
												<option value="fa fa-tint" label="&#xf043" />
												<option value="fa fa-pencil-square-o" label="&#xf044" />
												<option value="fa fa-share-square-o" label="&#xf045" />
												<option value="fa fa-check-square-o" label="&#xf046" />
												<option value="fa fa-arrows" label="&#xf047" />
												<option value="fa fa-step-backward" label="&#xf048" />
												<option value="fa fa-fast-backward" label="&#xf049" />
												<option value="fa fa-backward" label="&#xf04a" />
												<option value="fa fa-play" label="&#xf04b" />
												<option value="fa fa-pause" label="&#xf04c" />
												<option value="fa fa-stop" label="&#xf04d" />
												<option value="fa fa-forward" label="&#xf04e" />
												<option value="fa fa-fast-forward" label="&#xf050" />
												<option value="fa fa-step-forward" label="&#xf051" />
												<option value="fa fa-eject" label="&#xf052" />
												<option value="fa fa-chevron-left" label="&#xf053" />
												<option value="fa fa-chevron-right" label="&#xf054" />
												<option value="fa fa-plus-circle" label="&#xf055" />
												<option value="fa fa-minus-circle" label="&#xf056" />
												<option value="fa fa-times-circle" label="&#xf057" />
												<option value="fa fa-check-circle" label="&#xf058" />
												<option value="fa fa-question-circle" label="&#xf059" />
												<option value="fa fa-info-circle" label="&#xf05a" />
												<option value="fa fa-crosshairs" label="&#xf05b" />
												<option value="fa fa-times-circle-o" label="&#xf05c" />
												<option value="fa fa-check-circle-o" label="&#xf05d" />
												<option value="fa fa-ban" label="&#xf05e" />
												<option value="fa fa-arrow-left" label="&#xf060" />
												<option value="fa fa-arrow-right" label="&#xf061" />
												<option value="fa fa-arrow-up" label="&#xf062" />
												<option value="fa fa-arrow-down" label="&#xf063" />
												<option value="fa fa-share" label="&#xf064" />
												<option value="fa fa-expand" label="&#xf065" />
												<option value="fa fa-compress" label="&#xf066" />
												<option value="fa fa-plus" label="&#xf067" />
												<option value="fa fa-minus" label="&#xf068" />
												<option value="fa fa-asterisk" label="&#xf069" />
												<option value="fa fa-exclamation-circle" label="&#xf06a" />
												<option value="fa fa-gift" label="&#xf06b" />
												<option value="fa fa-leaf" label="&#xf06c" />
												<option value="fa fa-fire" label="&#xf06d" />
												<option value="fa fa-eye" label="&#xf06e" />
												<option value="fa fa-eye-slash" label="&#xf070" />
												<option value="fa fa-exclamation-triangle" label="&#xf071" />
												<option value="fa fa-plane" label="&#xf072" />
												<option value="fa fa-calendar" label="&#xf073" />
												<option value="fa fa-random" label="&#xf074" />
												<option value="fa fa-comment" label="&#xf075" />
												<option value="fa fa-magnet" label="&#xf076" />
												<option value="fa fa-chevron-up" label="&#xf077" />
												<option value="fa fa-chevron-down" label="&#xf078" />
												<option value="fa fa-retweet" label="&#xf079" />
												<option value="fa fa-shopping-cart" label="&#xf07a" />
												<option value="fa fa-folder" label="&#xf07b" />
												<option value="fa fa-folder-open" label="&#xf07c" />
												<option value="fa fa-arrows-v" label="&#xf07d" />
												<option value="fa fa-arrows-h" label="&#xf07e" />
												<option value="fa fa-bar-chart" label="&#xf080" />
												<option value="fa fa-twitter-square" label="&#xf081" />
												<option value="fa fa-facebook-square" label="&#xf082" />
												<option value="fa fa-camera-retro" label="&#xf083" />
												<option value="fa fa-key" label="&#xf084" />
												<option value="fa fa-cogs" label="&#xf085" />
												<option value="fa fa-comments" label="&#xf086" />
												<option value="fa fa-thumbs-o-up" label="&#xf087" />
												<option value="fa fa-thumbs-o-down" label="&#xf088" />
												<option value="fa fa-star-half" label="&#xf089" />
												<option value="fa fa-heart-o" label="&#xf08a" />
												<option value="fa fa-sign-out" label="&#xf08b" />
												<option value="fa fa-linkedin-square" label="&#xf08c" />
												<option value="fa fa-thumb-tack" label="&#xf08d" />
												<option value="fa fa-external-link" label="&#xf08e" />
												<option value="fa fa-sign-in" label="&#xf090" />
												<option value="fa fa-trophy" label="&#xf091" />
												<option value="fa fa-github-square" label="&#xf092" />
												<option value="fa fa-upload" label="&#xf093" />
												<option value="fa fa-lemon-o" label="&#xf094" />
												<option value="fa fa-phone" label="&#xf095" />
												<option value="fa fa-square-o" label="&#xf096" />
												<option value="fa fa-bookmark-o" label="&#xf097" />
												<option value="fa fa-phone-square" label="&#xf098" />
												<option value="fa fa-twitter" label="&#xf099" />
												<option value="fa fa-facebook" label="&#xf09a" />
												<option value="fa fa-github" label="&#xf09b" />
												<option value="fa fa-unlock" label="&#xf09c" />
												<option value="fa fa-credit-card" label="&#xf09d" />
												<option value="fa fa-rss" label="&#xf09e" />
												<option value="fa fa-hdd-o" label="&#xf0a0" />
												<option value="fa fa-bullhorn" label="&#xf0a1" />
												<option value="fa fa-bell" label="&#xf0f3" />
												<option value="fa fa-certificate" label="&#xf0a3" />
												<option value="fa fa-hand-o-right" label="&#xf0a4" />
												<option value="fa fa-hand-o-left" label="&#xf0a5" />
												<option value="fa fa-hand-o-up" label="&#xf0a6" />
												<option value="fa fa-hand-o-down" label="&#xf0a7" />
												<option value="fa fa-arrow-circle-left" label="&#xf0a8" />
												<option value="fa fa-arrow-circle-right" label="&#xf0a9" />
												<option value="fa fa-arrow-circle-up" label="&#xf0aa" />
												<option value="fa fa-arrow-circle-down" label="&#xf0ab" />
												<option value="fa fa-globe" label="&#xf0ac" />
												<option value="fa fa-wrench" label="&#xf0ad" />
												<option value="fa fa-tasks" label="&#xf0ae" />
												<option value="fa fa-filter" label="&#xf0b0" />
												<option value="fa fa-briefcase" label="&#xf0b1" />
												<option value="fa fa-arrows-alt" label="&#xf0b2" />
												<option value="fa fa-users" label="&#xf0c0" />
												<option value="fa fa-link" label="&#xf0c1" />
												<option value="fa fa-cloud" label="&#xf0c2" />
												<option value="fa fa-flask" label="&#xf0c3" />
												<option value="fa fa-scissors" label="&#xf0c4" />
												<option value="fa fa-files-o" label="&#xf0c5" />
												<option value="fa fa-paperclip" label="&#xf0c6" />
												<option value="fa fa-floppy-o" label="&#xf0c7" />
												<option value="fa fa-square" label="&#xf0c8" />
												<option value="fa fa-bars" label="&#xf0c9" />
												<option value="fa fa-list-ul" label="&#xf0ca" />
												<option value="fa fa-list-ol" label="&#xf0cb" />
												<option value="fa fa-strikethrough" label="&#xf0cc" />
												<option value="fa fa-underline" label="&#xf0cd" />
												<option value="fa fa-table" label="&#xf0ce" />
												<option value="fa fa-magic" label="&#xf0d0" />
												<option value="fa fa-truck" label="&#xf0d1" />
												<option value="fa fa-pinterest" label="&#xf0d2" />
												<option value="fa fa-pinterest-square" label="&#xf0d3" />
												<option value="fa fa-google-plus-square" label="&#xf0d4" />
												<option value="fa fa-google-plus" label="&#xf0d5" />
												<option value="fa fa-money" label="&#xf0d6" />
												<option value="fa fa-caret-down" label="&#xf0d7" />
												<option value="fa fa-caret-up" label="&#xf0d8" />
												<option value="fa fa-caret-left" label="&#xf0d9" />
												<option value="fa fa-caret-right" label="&#xf0da" />
												<option value="fa fa-columns" label="&#xf0db" />
												<option value="fa fa-sort" label="&#xf0dc" />
												<option value="fa fa-sort-desc" label="&#xf0dd" />
												<option value="fa fa-sort-asc" label="&#xf0de" />
												<option value="fa fa-envelope" label="&#xf0e0" />
												<option value="fa fa-linkedin" label="&#xf0e1" />
												<option value="fa fa-undo" label="&#xf0e2" />
												<option value="fa fa-gavel" label="&#xf0e3" />
												<option value="fa fa-tachometer" label="&#xf0e4" />
												<option value="fa fa-comment-o" label="&#xf0e5" />
												<option value="fa fa-comments-o" label="&#xf0e6" />
												<option value="fa fa-bolt" label="&#xf0e7" />
												<option value="fa fa-sitemap" label="&#xf0e8" />
												<option value="fa fa-umbrella" label="&#xf0e9" />
												<option value="fa fa-clipboard" label="&#xf0ea" />
												<option value="fa fa-lightbulb-o" label="&#xf0eb" />
												<option value="fa fa-exchange" label="&#xf0ec" />
												<option value="fa fa-cloud-download" label="&#xf0ed" />
												<option value="fa fa-cloud-upload" label="&#xf0ee" />
												<option value="fa fa-user-md" label="&#xf0f0" />
												<option value="fa fa-stethoscope" label="&#xf0f1" />
												<option value="fa fa-suitcase" label="&#xf0f2" />
												<option value="fa fa-bell-o" label="&#xf0a2" />
												<option value="fa fa-coffee" label="&#xf0f4" />
												<option value="fa fa-cutlery" label="&#xf0f5" />
												<option value="fa fa-file-text-o" label="&#xf0f6" />
												<option value="fa fa-building-o" label="&#xf0f7" />
												<option value="fa fa-hospital-o" label="&#xf0f8" />
												<option value="fa fa-ambulance" label="&#xf0f9" />
												<option value="fa fa-medkit" label="&#xf0fa" />
												<option value="fa fa-fighter-jet" label="&#xf0fb" />
												<option value="fa fa-beer" label="&#xf0fc" />
												<option value="fa fa-h-square" label="&#xf0fd" />
												<option value="fa fa-plus-square" label="&#xf0fe" />
												<option value="fa fa-angle-double-left" label="&#xf100" />
												<option value="fa fa-angle-double-right" label="&#xf101" />
												<option value="fa fa-angle-double-up" label="&#xf102" />
												<option value="fa fa-angle-double-down" label="&#xf103" />
												<option value="fa fa-angle-left" label="&#xf104" />
												<option value="fa fa-angle-right" label="&#xf105" />
												<option value="fa fa-angle-up" label="&#xf106" />
												<option value="fa fa-angle-down" label="&#xf107" />
												<option value="fa fa-desktop" label="&#xf108" />
												<option value="fa fa-laptop" label="&#xf109" />
												<option value="fa fa-tablet" label="&#xf10a" />
												<option value="fa fa-mobile" label="&#xf10b" />
												<option value="fa fa-circle-o" label="&#xf10c" />
												<option value="fa fa-quote-left" label="&#xf10d" />
												<option value="fa fa-quote-right" label="&#xf10e" />
												<option value="fa fa-spinner" label="&#xf110" />
												<option value="fa fa-circle" label="&#xf111" />
												<option value="fa fa-reply" label="&#xf112" />
												<option value="fa fa-github-alt" label="&#xf113" />
												<option value="fa fa-folder-o" label="&#xf114" />
												<option value="fa fa-folder-open-o" label="&#xf115" />
												<option value="fa fa-smile-o" label="&#xf118" />
												<option value="fa fa-frown-o" label="&#xf119" />
												<option value="fa fa-meh-o" label="&#xf11a" />
												<option value="fa fa-gamepad" label="&#xf11b" />
												<option value="fa fa-keyboard-o" label="&#xf11c" />
												<option value="fa fa-flag-o" label="&#xf11d" />
												<option value="fa fa-flag-checkered" label="&#xf11e" />
												<option value="fa fa-terminal" label="&#xf120" />
												<option value="fa fa-code" label="&#xf121" />
												<option value="fa fa-reply-all" label="&#xf122" />
												<option value="fa fa-star-half-o" label="&#xf123" />
												<option value="fa fa-location-arrow" label="&#xf124" />
												<option value="fa fa-crop" label="&#xf125" />
												<option value="fa fa-code-fork" label="&#xf126" />
												<option value="fa fa-chain-broken" label="&#xf127" />
												<option value="fa fa-question" label="&#xf128" />
												<option value="fa fa-info" label="&#xf129" />
												<option value="fa fa-exclamation" label="&#xf12a" />
												<option value="fa fa-superscript" label="&#xf12b" />
												<option value="fa fa-subscript" label="&#xf12c" />
												<option value="fa fa-eraser" label="&#xf12d" />
												<option value="fa fa-puzzle-piece" label="&#xf12e" />
												<option value="fa fa-microphone" label="&#xf130" />
												<option value="fa fa-microphone-slash" label="&#xf131" />
												<option value="fa fa-shield" label="&#xf132" />
												<option value="fa fa-calendar-o" label="&#xf133" />
												<option value="fa fa-fire-extinguisher" label="&#xf134" />
												<option value="fa fa-rocket" label="&#xf135" />
												<option value="fa fa-maxcdn" label="&#xf136" />
												<option value="fa fa-chevron-circle-left" label="&#xf137" />
												<option value="fa fa-chevron-circle-right" label="&#xf138" />
												<option value="fa fa-chevron-circle-up" label="&#xf139" />
												<option value="fa fa-chevron-circle-down" label="&#xf13a" />
												<option value="fa fa-html5" label="&#xf13b" />
												<option value="fa fa-css3" label="&#xf13c" />
												<option value="fa fa-anchor" label="&#xf13d" />
												<option value="fa fa-unlock-alt" label="&#xf13e" />
												<option value="fa fa-bullseye" label="&#xf140" />
												<option value="fa fa-ellipsis-h" label="&#xf141" />
												<option value="fa fa-ellipsis-v" label="&#xf142" />
												<option value="fa fa-rss-square" label="&#xf143" />
												<option value="fa fa-play-circle" label="&#xf144" />
												<option value="fa fa-ticket" label="&#xf145" />
												<option value="fa fa-minus-square" label="&#xf146" />
												<option value="fa fa-minus-square-o" label="&#xf147" />
												<option value="fa fa-level-up" label="&#xf148" />
												<option value="fa fa-level-down" label="&#xf149" />
												<option value="fa fa-check-square" label="&#xf14a" />
												<option value="fa fa-pencil-square" label="&#xf14b" />
												<option value="fa fa-external-link-square" label="&#xf14c" />
												<option value="fa fa-share-square" label="&#xf14d" />
												<option value="fa fa-compass" label="&#xf14e" />
												<option value="fa fa-caret-square-o-down" label="&#xf150" />
												<option value="fa fa-caret-square-o-up" label="&#xf151" />
												<option value="fa fa-caret-square-o-right" label="&#xf152" />
												<option value="fa fa-eur" label="&#xf153" />
												<option value="fa fa-gbp" label="&#xf154" />
												<option value="fa fa-usd" label="&#xf155" />
												<option value="fa fa-inr" label="&#xf156" />
												<option value="fa fa-jpy" label="&#xf157" />
												<option value="fa fa-rub" label="&#xf158" />
												<option value="fa fa-krw" label="&#xf159" />
												<option value="fa fa-btc" label="&#xf15a" />
												<option value="fa fa-file" label="&#xf15b" />
												<option value="fa fa-file-text" label="&#xf15c" />
												<option value="fa fa-sort-alpha-asc" label="&#xf15d" />
												<option value="fa fa-sort-alpha-desc" label="&#xf15e" />
												<option value="fa fa-sort-amount-asc" label="&#xf160" />
												<option value="fa fa-sort-amount-desc" label="&#xf161" />
												<option value="fa fa-sort-numeric-asc" label="&#xf162" />
												<option value="fa fa-sort-numeric-desc" label="&#xf163" />
												<option value="fa fa-thumbs-up" label="&#xf164" />
												<option value="fa fa-thumbs-down" label="&#xf165" />
												<option value="fa fa-youtube-square" label="&#xf166" />
												<option value="fa fa-youtube" label="&#xf167" />
												<option value="fa fa-xing" label="&#xf168" />
												<option value="fa fa-xing-square" label="&#xf169" />
												<option value="fa fa-youtube-play" label="&#xf16a" />
												<option value="fa fa-dropbox" label="&#xf16b" />
												<option value="fa fa-stack-overflow" label="&#xf16c" />
												<option value="fa fa-instagram" label="&#xf16d" />
												<option value="fa fa-flickr" label="&#xf16e" />
												<option value="fa fa-adn" label="&#xf170" />
												<option value="fa fa-bitbucket" label="&#xf171" />
												<option value="fa fa-bitbucket-square" label="&#xf172" />
												<option value="fa fa-tumblr" label="&#xf173" />
												<option value="fa fa-tumblr-square" label="&#xf174" />
												<option value="fa fa-long-arrow-down" label="&#xf175" />
												<option value="fa fa-long-arrow-up" label="&#xf176" />
												<option value="fa fa-long-arrow-left" label="&#xf177" />
												<option value="fa fa-long-arrow-right" label="&#xf178" />
												<option value="fa fa-apple" label="&#xf179" />
												<option value="fa fa-windows" label="&#xf17a" />
												<option value="fa fa-android" label="&#xf17b" />
												<option value="fa fa-linux" label="&#xf17c" />
												<option value="fa fa-dribbble" label="&#xf17d" />
												<option value="fa fa-skype" label="&#xf17e" />
												<option value="fa fa-foursquare" label="&#xf180" />
												<option value="fa fa-trello" label="&#xf181" />
												<option value="fa fa-female" label="&#xf182" />
												<option value="fa fa-male" label="&#xf183" />
												<option value="fa fa-gratipay" label="&#xf184" />
												<option value="fa fa-sun-o" label="&#xf185" />
												<option value="fa fa-moon-o" label="&#xf186" />
												<option value="fa fa-archive" label="&#xf187" />
												<option value="fa fa-bug" label="&#xf188" />
												<option value="fa fa-vk" label="&#xf189" />
												<option value="fa fa-weibo" label="&#xf18a" />
												<option value="fa fa-renren" label="&#xf18b" />
												<option value="fa fa-pagelines" label="&#xf18c" />
												<option value="fa fa-stack-exchange" label="&#xf18d" />
												<option value="fa fa-arrow-circle-o-right" label="&#xf18e" />
												<option value="fa fa-arrow-circle-o-left" label="&#xf190" />
												<option value="fa fa-caret-square-o-left" label="&#xf191" />
												<option value="fa fa-dot-circle-o" label="&#xf192" />
												<option value="fa fa-wheelchair" label="&#xf193" />
												<option value="fa fa-vimeo-square" label="&#xf194" />
												<option value="fa fa-try" label="&#xf195" />
												<option value="fa fa-plus-square-o" label="&#xf196" />
												<option value="fa fa-space-shuttle" label="&#xf197" />
												<option value="fa fa-slack" label="&#xf198" />
												<option value="fa fa-envelope-square" label="&#xf199" />
												<option value="fa fa-wordpress" label="&#xf19a" />
												<option value="fa fa-openid" label="&#xf19b" />
												<option value="fa fa-university" label="&#xf19c" />
												<option value="fa fa-graduation-cap" label="&#xf19d" />
												<option value="fa fa-yahoo" label="&#xf19e" />
												<option value="fa fa-google" label="&#xf1a0" />
												<option value="fa fa-reddit" label="&#xf1a1" />
												<option value="fa fa-reddit-square" label="&#xf1a2" />
												<option value="fa fa-stumbleupon-circle" label="&#xf1a3" />
												<option value="fa fa-stumbleupon" label="&#xf1a4" />
												<option value="fa fa-delicious" label="&#xf1a5" />
												<option value="fa fa-digg" label="&#xf1a6" />
												<option value="fa fa-pied-piper" label="&#xf1a7" />
												<option value="fa fa-pied-piper-alt" label="&#xf1a8" />
												<option value="fa fa-drupal" label="&#xf1a9" />
												<option value="fa fa-joomla" label="&#xf1aa" />
												<option value="fa fa-language" label="&#xf1ab" />
												<option value="fa fa-fax" label="&#xf1ac" />
												<option value="fa fa-building" label="&#xf1ad" />
												<option value="fa fa-child" label="&#xf1ae" />
												<option value="fa fa-paw" label="&#xf1b0" />
												<option value="fa fa-spoon" label="&#xf1b1" />
												<option value="fa fa-cube" label="&#xf1b2" />
												<option value="fa fa-cubes" label="&#xf1b3" />
												<option value="fa fa-behance" label="&#xf1b4" />
												<option value="fa fa-behance-square" label="&#xf1b5" />
												<option value="fa fa-steam" label="&#xf1b6" />
												<option value="fa fa-steam-square" label="&#xf1b7" />
												<option value="fa fa-recycle" label="&#xf1b8" />
												<option value="fa fa-car" label="&#xf1b9" />
												<option value="fa fa-taxi" label="&#xf1ba" />
												<option value="fa fa-tree" label="&#xf1bb" />
												<option value="fa fa-spotify" label="&#xf1bc" />
												<option value="fa fa-deviantart" label="&#xf1bd" />
												<option value="fa fa-soundcloud" label="&#xf1be" />
												<option value="fa fa-database" label="&#xf1c0" />
												<option value="fa fa-file-pdf-o" label="&#xf1c1" />
												<option value="fa fa-file-word-o" label="&#xf1c2" />
												<option value="fa fa-file-excel-o" label="&#xf1c3" />
												<option value="fa fa-file-powerpoint-o" label="&#xf1c4" />
												<option value="fa fa-file-image-o" label="&#xf1c5" />
												<option value="fa fa-file-archive-o" label="&#xf1c6" />
												<option value="fa fa-file-audio-o" label="&#xf1c7" />
												<option value="fa fa-file-video-o" label="&#xf1c8" />
												<option value="fa fa-file-code-o" label="&#xf1c9" />
												<option value="fa fa-vine" label="&#xf1ca" />
												<option value="fa fa-codepen" label="&#xf1cb" />
												<option value="fa fa-jsfiddle" label="&#xf1cc" />
												<option value="fa fa-life-ring" label="&#xf1cd" />
												<option value="fa fa-circle-o-notch" label="&#xf1ce" />
												<option value="fa fa-rebel" label="&#xf1d0" />
												<option value="fa fa-empire" label="&#xf1d1" />
												<option value="fa fa-git-square" label="&#xf1d2" />
												<option value="fa fa-git" label="&#xf1d3" />
												<option value="fa fa-hacker-news" label="&#xf1d4" />
												<option value="fa fa-tencent-weibo" label="&#xf1d5" />
												<option value="fa fa-qq" label="&#xf1d6" />
												<option value="fa fa-weixin" label="&#xf1d7" />
												<option value="fa fa-paper-plane" label="&#xf1d8" />
												<option value="fa fa-paper-plane-o" label="&#xf1d9" />
												<option value="fa fa-history" label="&#xf1da" />
												<option value="fa fa-circle-thin" label="&#xf1db" />
												<option value="fa fa-header" label="&#xf1dc" />
												<option value="fa fa-paragraph" label="&#xf1dd" />
												<option value="fa fa-sliders" label="&#xf1de" />
												<option value="fa fa-share-alt" label="&#xf1e0" />
												<option value="fa fa-share-alt-square" label="&#xf1e1" />
												<option value="fa fa-bomb" label="&#xf1e2" />
												<option value="fa fa-futbol-o" label="&#xf1e3" />
												<option value="fa fa-tty" label="&#xf1e4" />
												<option value="fa fa-binoculars" label="&#xf1e5" />
												<option value="fa fa-plug" label="&#xf1e6" />
												<option value="fa fa-slideshare" label="&#xf1e7" />
												<option value="fa fa-twitch" label="&#xf1e8" />
												<option value="fa fa-yelp" label="&#xf1e9" />
												<option value="fa fa-newspaper-o" label="&#xf1ea" />
												<option value="fa fa-wifi" label="&#xf1eb" />
												<option value="fa fa-calculator" label="&#xf1ec" />
												<option value="fa fa-paypal" label="&#xf1ed" />
												<option value="fa fa-google-wallet" label="&#xf1ee" />
												<option value="fa fa-cc-visa" label="&#xf1f0" />
												<option value="fa fa-cc-mastercard" label="&#xf1f1" />
												<option value="fa fa-cc-discover" label="&#xf1f2" />
												<option value="fa fa-cc-amex" label="&#xf1f3" />
												<option value="fa fa-cc-paypal" label="&#xf1f4" />
												<option value="fa fa-cc-stripe" label="&#xf1f5" />
												<option value="fa fa-bell-slash" label="&#xf1f6" />
												<option value="fa fa-bell-slash-o" label="&#xf1f7" />
												<option value="fa fa-trash" label="&#xf1f8" />
												<option value="fa fa-copyright" label="&#xf1f9" />
												<option value="fa fa-at" label="&#xf1fa" />
												<option value="fa fa-eyedropper" label="&#xf1fb" />
												<option value="fa fa-paint-brush" label="&#xf1fc" />
												<option value="fa fa-birthday-cake" label="&#xf1fd" />
												<option value="fa fa-area-chart" label="&#xf1fe" />
												<option value="fa fa-pie-chart" label="&#xf200" />
												<option value="fa fa-line-chart" label="&#xf201" />
												<option value="fa fa-lastfm" label="&#xf202" />
												<option value="fa fa-lastfm-square" label="&#xf203" />
												<option value="fa fa-toggle-off" label="&#xf204" />
												<option value="fa fa-toggle-on" label="&#xf205" />
												<option value="fa fa-bicycle" label="&#xf206" />
												<option value="fa fa-bus" label="&#xf207" />
												<option value="fa fa-ioxhost" label="&#xf208" />
												<option value="fa fa-angellist" label="&#xf209" />
												<option value="fa fa-cc" label="&#xf20a" />
												<option value="fa fa-ils" label="&#xf20b" />
												<option value="fa fa-meanpath" label="&#xf20c" />
												<option value="fa fa-buysellads" label="&#xf20d" />
												<option value="fa fa-connectdevelop" label="&#xf20e" />
												<option value="fa fa-dashcube" label="&#xf210" />
												<option value="fa fa-forumbee" label="&#xf211" />
												<option value="fa fa-leanpub" label="&#xf212" />
												<option value="fa fa-sellsy" label="&#xf213" />
												<option value="fa fa-shirtsinbulk" label="&#xf214" />
												<option value="fa fa-simplybuilt" label="&#xf215" />
												<option value="fa fa-skyatlas" label="&#xf216" />
												<option value="fa fa-cart-plus" label="&#xf217" />
												<option value="fa fa-cart-arrow-down" label="&#xf218" />
												<option value="fa fa-diamond" label="&#xf219" />
												<option value="fa fa-ship" label="&#xf21a" />
												<option value="fa fa-user-secret" label="&#xf21b" />
												<option value="fa fa-motorcycle" label="&#xf21c" />
												<option value="fa fa-street-view" label="&#xf21d" />
												<option value="fa fa-heartbeat" label="&#xf21e" />
												<option value="fa fa-venus" label="&#xf221" />
												<option value="fa fa-mars" label="&#xf222" />
												<option value="fa fa-mercury" label="&#xf223" />
												<option value="fa fa-transgender" label="&#xf224" />
												<option value="fa fa-transgender-alt" label="&#xf225" />
												<option value="fa fa-venus-double" label="&#xf226" />
												<option value="fa fa-mars-double" label="&#xf227" />
												<option value="fa fa-venus-mars" label="&#xf228" />
												<option value="fa fa-mars-stroke" label="&#xf229" />
												<option value="fa fa-mars-stroke-v" label="&#xf22a" />
												<option value="fa fa-mars-stroke-h" label="&#xf22b" />
												<option value="fa fa-neuter" label="&#xf22c" />
												<option value="fa fa-facebook-official" label="&#xf230" />
												<option value="fa fa-pinterest-p" label="&#xf231" />
												<option value="fa fa-whatsapp" label="&#xf232" />
												<option value="fa fa-server" label="&#xf233" />
												<option value="fa fa-user-plus" label="&#xf234" />
												<option value="fa fa-user-times" label="&#xf235" />
												<option value="fa fa-bed" label="&#xf236" />
												<option value="fa fa-viacoin" label="&#xf237" />
												<option value="fa fa-train" label="&#xf238" />
												<option value="fa fa-subway" label="&#xf239" />
												<option value="fa fa-medium" label="&#xf23a" />
											</select>

										</div>
									</div>
									<div class="form-group">

										<label for="inputEmail3" class="col-md-3 control-label">h1-label-6</label>
										<div class="col-md-9">
											<input id="h1Label6" name="h1Label6" type="text"
												value="${basics.h1Label11}" placeholder="Label"
												class="form-control">
										</div>
									</div>
									<div class="form-group">

										<label for="inputEmail3" class="col-md-3 control-label">h1-label-6-description</label>
										<div class="col-md-9">
											<input id="h1Description6" name="h1Description6" type="text"
												value="${basics.h1Label12}" placeholder="Description"
												class="form-control">
										</div>
									</div>
									<div class="form-group">

										<label for="inputEmail3" class="col-md-3 control-label">h1-icon-7</label>
										<div class="col-md-9">
											<select class="fa-select" id="icon7" name="icon7">
												<option label="Select icon" />
												<option value="fa fa-glass" label="&#xf000" />
												<option value="fa fa-music" label="&#xf001" />
												<option value="fa fa-search" label="&#xf002" />
												<option value="fa fa-envelope-o" label="&#xf003" />
												<option value="fa fa-heart" label="&#xf004" />
												<option value="fa fa-star" label="&#xf005" />
												<option value="fa fa-star-o" label="&#xf006" />
												<option value="fa fa-user" label="&#xf007" />
												<option value="fa fa-film" label="&#xf008" />
												<option value="fa fa-th-large" label="&#xf009" />
												<option value="fa fa-th" label="&#xf00a" />
												<option value="fa fa-th-list" label="&#xf00b" />
												<option value="fa fa-check" label="&#xf00c" />
												<option value="fa fa-times" label="&#xf00d" />
												<option value="fa fa-search-plus" label="&#xf00e" />
												<option value="fa fa-search-minus" label="&#xf010" />
												<option value="fa fa-power-off" label="&#xf011" />
												<option value="fa fa-signal" label="&#xf012" />
												<option value="fa fa-cog" label="&#xf013" />
												<option value="fa fa-trash-o" label="&#xf014" />
												<option value="fa fa-home" label="&#xf015" />
												<option value="fa fa-file-o" label="&#xf016" />
												<option value="fa fa-clock-o" label="&#xf017" />
												<option value="fa fa-road" label="&#xf018" />
												<option value="fa fa-download" label="&#xf019" />
												<option value="fa fa-arrow-circle-o-down" label="&#xf01a" />
												<option value="fa fa-arrow-circle-o-up" label="&#xf01b" />
												<option value="fa fa-inbox" label="&#xf01c" />
												<option value="fa fa-play-circle-o" label="&#xf01d" />
												<option value="fa fa-repeat" label="&#xf01e" />
												<option value="fa fa-refresh" label="&#xf021" />
												<option value="fa fa-list-alt" label="&#xf022" />
												<option value="fa fa-lock" label="&#xf023" />
												<option value="fa fa-flag" label="&#xf024" />
												<option value="fa fa-headphones" label="&#xf025" />
												<option value="fa fa-volume-off" label="&#xf026" />
												<option value="fa fa-volume-down" label="&#xf027" />
												<option value="fa fa-volume-up" label="&#xf028" />
												<option value="fa fa-qrcode" label="&#xf029" />
												<option value="fa fa-barcode" label="&#xf02a" />
												<option value="fa fa-tag" label="&#xf02b" />
												<option value="fa fa-tags" label="&#xf02c" />
												<option value="fa fa-book" label="&#xf02d" />
												<option value="fa fa-bookmark" label="&#xf02e" />
												<option value="fa fa-print" label="&#xf02f" />
												<option value="fa fa-camera" label="&#xf030" />
												<option value="fa fa-font" label="&#xf031" />
												<option value="fa fa-bold" label="&#xf032" />
												<option value="fa fa-italic" label="&#xf033" />
												<option value="fa fa-text-height" label="&#xf034" />
												<option value="fa fa-text-width" label="&#xf035" />
												<option value="fa fa-align-left" label="&#xf036" />
												<option value="fa fa-align-center" label="&#xf037" />
												<option value="fa fa-align-right" label="&#xf038" />
												<option value="fa fa-align-justify" label="&#xf039" />
												<option value="fa fa-list" label="&#xf03a" />
												<option value="fa fa-outdent" label="&#xf03b" />
												<option value="fa fa-indent" label="&#xf03c" />
												<option value="fa fa-video-camera" label="&#xf03d" />
												<option value="fa fa-picture-o" label="&#xf03e" />
												<option value="fa fa-pencil" label="&#xf040" />
												<option value="fa fa-map-marker" label="&#xf041" />
												<option value="fa fa-adjust" label="&#xf042" />
												<option value="fa fa-tint" label="&#xf043" />
												<option value="fa fa-pencil-square-o" label="&#xf044" />
												<option value="fa fa-share-square-o" label="&#xf045" />
												<option value="fa fa-check-square-o" label="&#xf046" />
												<option value="fa fa-arrows" label="&#xf047" />
												<option value="fa fa-step-backward" label="&#xf048" />
												<option value="fa fa-fast-backward" label="&#xf049" />
												<option value="fa fa-backward" label="&#xf04a" />
												<option value="fa fa-play" label="&#xf04b" />
												<option value="fa fa-pause" label="&#xf04c" />
												<option value="fa fa-stop" label="&#xf04d" />
												<option value="fa fa-forward" label="&#xf04e" />
												<option value="fa fa-fast-forward" label="&#xf050" />
												<option value="fa fa-step-forward" label="&#xf051" />
												<option value="fa fa-eject" label="&#xf052" />
												<option value="fa fa-chevron-left" label="&#xf053" />
												<option value="fa fa-chevron-right" label="&#xf054" />
												<option value="fa fa-plus-circle" label="&#xf055" />
												<option value="fa fa-minus-circle" label="&#xf056" />
												<option value="fa fa-times-circle" label="&#xf057" />
												<option value="fa fa-check-circle" label="&#xf058" />
												<option value="fa fa-question-circle" label="&#xf059" />
												<option value="fa fa-info-circle" label="&#xf05a" />
												<option value="fa fa-crosshairs" label="&#xf05b" />
												<option value="fa fa-times-circle-o" label="&#xf05c" />
												<option value="fa fa-check-circle-o" label="&#xf05d" />
												<option value="fa fa-ban" label="&#xf05e" />
												<option value="fa fa-arrow-left" label="&#xf060" />
												<option value="fa fa-arrow-right" label="&#xf061" />
												<option value="fa fa-arrow-up" label="&#xf062" />
												<option value="fa fa-arrow-down" label="&#xf063" />
												<option value="fa fa-share" label="&#xf064" />
												<option value="fa fa-expand" label="&#xf065" />
												<option value="fa fa-compress" label="&#xf066" />
												<option value="fa fa-plus" label="&#xf067" />
												<option value="fa fa-minus" label="&#xf068" />
												<option value="fa fa-asterisk" label="&#xf069" />
												<option value="fa fa-exclamation-circle" label="&#xf06a" />
												<option value="fa fa-gift" label="&#xf06b" />
												<option value="fa fa-leaf" label="&#xf06c" />
												<option value="fa fa-fire" label="&#xf06d" />
												<option value="fa fa-eye" label="&#xf06e" />
												<option value="fa fa-eye-slash" label="&#xf070" />
												<option value="fa fa-exclamation-triangle" label="&#xf071" />
												<option value="fa fa-plane" label="&#xf072" />
												<option value="fa fa-calendar" label="&#xf073" />
												<option value="fa fa-random" label="&#xf074" />
												<option value="fa fa-comment" label="&#xf075" />
												<option value="fa fa-magnet" label="&#xf076" />
												<option value="fa fa-chevron-up" label="&#xf077" />
												<option value="fa fa-chevron-down" label="&#xf078" />
												<option value="fa fa-retweet" label="&#xf079" />
												<option value="fa fa-shopping-cart" label="&#xf07a" />
												<option value="fa fa-folder" label="&#xf07b" />
												<option value="fa fa-folder-open" label="&#xf07c" />
												<option value="fa fa-arrows-v" label="&#xf07d" />
												<option value="fa fa-arrows-h" label="&#xf07e" />
												<option value="fa fa-bar-chart" label="&#xf080" />
												<option value="fa fa-twitter-square" label="&#xf081" />
												<option value="fa fa-facebook-square" label="&#xf082" />
												<option value="fa fa-camera-retro" label="&#xf083" />
												<option value="fa fa-key" label="&#xf084" />
												<option value="fa fa-cogs" label="&#xf085" />
												<option value="fa fa-comments" label="&#xf086" />
												<option value="fa fa-thumbs-o-up" label="&#xf087" />
												<option value="fa fa-thumbs-o-down" label="&#xf088" />
												<option value="fa fa-star-half" label="&#xf089" />
												<option value="fa fa-heart-o" label="&#xf08a" />
												<option value="fa fa-sign-out" label="&#xf08b" />
												<option value="fa fa-linkedin-square" label="&#xf08c" />
												<option value="fa fa-thumb-tack" label="&#xf08d" />
												<option value="fa fa-external-link" label="&#xf08e" />
												<option value="fa fa-sign-in" label="&#xf090" />
												<option value="fa fa-trophy" label="&#xf091" />
												<option value="fa fa-github-square" label="&#xf092" />
												<option value="fa fa-upload" label="&#xf093" />
												<option value="fa fa-lemon-o" label="&#xf094" />
												<option value="fa fa-phone" label="&#xf095" />
												<option value="fa fa-square-o" label="&#xf096" />
												<option value="fa fa-bookmark-o" label="&#xf097" />
												<option value="fa fa-phone-square" label="&#xf098" />
												<option value="fa fa-twitter" label="&#xf099" />
												<option value="fa fa-facebook" label="&#xf09a" />
												<option value="fa fa-github" label="&#xf09b" />
												<option value="fa fa-unlock" label="&#xf09c" />
												<option value="fa fa-credit-card" label="&#xf09d" />
												<option value="fa fa-rss" label="&#xf09e" />
												<option value="fa fa-hdd-o" label="&#xf0a0" />
												<option value="fa fa-bullhorn" label="&#xf0a1" />
												<option value="fa fa-bell" label="&#xf0f3" />
												<option value="fa fa-certificate" label="&#xf0a3" />
												<option value="fa fa-hand-o-right" label="&#xf0a4" />
												<option value="fa fa-hand-o-left" label="&#xf0a5" />
												<option value="fa fa-hand-o-up" label="&#xf0a6" />
												<option value="fa fa-hand-o-down" label="&#xf0a7" />
												<option value="fa fa-arrow-circle-left" label="&#xf0a8" />
												<option value="fa fa-arrow-circle-right" label="&#xf0a9" />
												<option value="fa fa-arrow-circle-up" label="&#xf0aa" />
												<option value="fa fa-arrow-circle-down" label="&#xf0ab" />
												<option value="fa fa-globe" label="&#xf0ac" />
												<option value="fa fa-wrench" label="&#xf0ad" />
												<option value="fa fa-tasks" label="&#xf0ae" />
												<option value="fa fa-filter" label="&#xf0b0" />
												<option value="fa fa-briefcase" label="&#xf0b1" />
												<option value="fa fa-arrows-alt" label="&#xf0b2" />
												<option value="fa fa-users" label="&#xf0c0" />
												<option value="fa fa-link" label="&#xf0c1" />
												<option value="fa fa-cloud" label="&#xf0c2" />
												<option value="fa fa-flask" label="&#xf0c3" />
												<option value="fa fa-scissors" label="&#xf0c4" />
												<option value="fa fa-files-o" label="&#xf0c5" />
												<option value="fa fa-paperclip" label="&#xf0c6" />
												<option value="fa fa-floppy-o" label="&#xf0c7" />
												<option value="fa fa-square" label="&#xf0c8" />
												<option value="fa fa-bars" label="&#xf0c9" />
												<option value="fa fa-list-ul" label="&#xf0ca" />
												<option value="fa fa-list-ol" label="&#xf0cb" />
												<option value="fa fa-strikethrough" label="&#xf0cc" />
												<option value="fa fa-underline" label="&#xf0cd" />
												<option value="fa fa-table" label="&#xf0ce" />
												<option value="fa fa-magic" label="&#xf0d0" />
												<option value="fa fa-truck" label="&#xf0d1" />
												<option value="fa fa-pinterest" label="&#xf0d2" />
												<option value="fa fa-pinterest-square" label="&#xf0d3" />
												<option value="fa fa-google-plus-square" label="&#xf0d4" />
												<option value="fa fa-google-plus" label="&#xf0d5" />
												<option value="fa fa-money" label="&#xf0d6" />
												<option value="fa fa-caret-down" label="&#xf0d7" />
												<option value="fa fa-caret-up" label="&#xf0d8" />
												<option value="fa fa-caret-left" label="&#xf0d9" />
												<option value="fa fa-caret-right" label="&#xf0da" />
												<option value="fa fa-columns" label="&#xf0db" />
												<option value="fa fa-sort" label="&#xf0dc" />
												<option value="fa fa-sort-desc" label="&#xf0dd" />
												<option value="fa fa-sort-asc" label="&#xf0de" />
												<option value="fa fa-envelope" label="&#xf0e0" />
												<option value="fa fa-linkedin" label="&#xf0e1" />
												<option value="fa fa-undo" label="&#xf0e2" />
												<option value="fa fa-gavel" label="&#xf0e3" />
												<option value="fa fa-tachometer" label="&#xf0e4" />
												<option value="fa fa-comment-o" label="&#xf0e5" />
												<option value="fa fa-comments-o" label="&#xf0e6" />
												<option value="fa fa-bolt" label="&#xf0e7" />
												<option value="fa fa-sitemap" label="&#xf0e8" />
												<option value="fa fa-umbrella" label="&#xf0e9" />
												<option value="fa fa-clipboard" label="&#xf0ea" />
												<option value="fa fa-lightbulb-o" label="&#xf0eb" />
												<option value="fa fa-exchange" label="&#xf0ec" />
												<option value="fa fa-cloud-download" label="&#xf0ed" />
												<option value="fa fa-cloud-upload" label="&#xf0ee" />
												<option value="fa fa-user-md" label="&#xf0f0" />
												<option value="fa fa-stethoscope" label="&#xf0f1" />
												<option value="fa fa-suitcase" label="&#xf0f2" />
												<option value="fa fa-bell-o" label="&#xf0a2" />
												<option value="fa fa-coffee" label="&#xf0f4" />
												<option value="fa fa-cutlery" label="&#xf0f5" />
												<option value="fa fa-file-text-o" label="&#xf0f6" />
												<option value="fa fa-building-o" label="&#xf0f7" />
												<option value="fa fa-hospital-o" label="&#xf0f8" />
												<option value="fa fa-ambulance" label="&#xf0f9" />
												<option value="fa fa-medkit" label="&#xf0fa" />
												<option value="fa fa-fighter-jet" label="&#xf0fb" />
												<option value="fa fa-beer" label="&#xf0fc" />
												<option value="fa fa-h-square" label="&#xf0fd" />
												<option value="fa fa-plus-square" label="&#xf0fe" />
												<option value="fa fa-angle-double-left" label="&#xf100" />
												<option value="fa fa-angle-double-right" label="&#xf101" />
												<option value="fa fa-angle-double-up" label="&#xf102" />
												<option value="fa fa-angle-double-down" label="&#xf103" />
												<option value="fa fa-angle-left" label="&#xf104" />
												<option value="fa fa-angle-right" label="&#xf105" />
												<option value="fa fa-angle-up" label="&#xf106" />
												<option value="fa fa-angle-down" label="&#xf107" />
												<option value="fa fa-desktop" label="&#xf108" />
												<option value="fa fa-laptop" label="&#xf109" />
												<option value="fa fa-tablet" label="&#xf10a" />
												<option value="fa fa-mobile" label="&#xf10b" />
												<option value="fa fa-circle-o" label="&#xf10c" />
												<option value="fa fa-quote-left" label="&#xf10d" />
												<option value="fa fa-quote-right" label="&#xf10e" />
												<option value="fa fa-spinner" label="&#xf110" />
												<option value="fa fa-circle" label="&#xf111" />
												<option value="fa fa-reply" label="&#xf112" />
												<option value="fa fa-github-alt" label="&#xf113" />
												<option value="fa fa-folder-o" label="&#xf114" />
												<option value="fa fa-folder-open-o" label="&#xf115" />
												<option value="fa fa-smile-o" label="&#xf118" />
												<option value="fa fa-frown-o" label="&#xf119" />
												<option value="fa fa-meh-o" label="&#xf11a" />
												<option value="fa fa-gamepad" label="&#xf11b" />
												<option value="fa fa-keyboard-o" label="&#xf11c" />
												<option value="fa fa-flag-o" label="&#xf11d" />
												<option value="fa fa-flag-checkered" label="&#xf11e" />
												<option value="fa fa-terminal" label="&#xf120" />
												<option value="fa fa-code" label="&#xf121" />
												<option value="fa fa-reply-all" label="&#xf122" />
												<option value="fa fa-star-half-o" label="&#xf123" />
												<option value="fa fa-location-arrow" label="&#xf124" />
												<option value="fa fa-crop" label="&#xf125" />
												<option value="fa fa-code-fork" label="&#xf126" />
												<option value="fa fa-chain-broken" label="&#xf127" />
												<option value="fa fa-question" label="&#xf128" />
												<option value="fa fa-info" label="&#xf129" />
												<option value="fa fa-exclamation" label="&#xf12a" />
												<option value="fa fa-superscript" label="&#xf12b" />
												<option value="fa fa-subscript" label="&#xf12c" />
												<option value="fa fa-eraser" label="&#xf12d" />
												<option value="fa fa-puzzle-piece" label="&#xf12e" />
												<option value="fa fa-microphone" label="&#xf130" />
												<option value="fa fa-microphone-slash" label="&#xf131" />
												<option value="fa fa-shield" label="&#xf132" />
												<option value="fa fa-calendar-o" label="&#xf133" />
												<option value="fa fa-fire-extinguisher" label="&#xf134" />
												<option value="fa fa-rocket" label="&#xf135" />
												<option value="fa fa-maxcdn" label="&#xf136" />
												<option value="fa fa-chevron-circle-left" label="&#xf137" />
												<option value="fa fa-chevron-circle-right" label="&#xf138" />
												<option value="fa fa-chevron-circle-up" label="&#xf139" />
												<option value="fa fa-chevron-circle-down" label="&#xf13a" />
												<option value="fa fa-html5" label="&#xf13b" />
												<option value="fa fa-css3" label="&#xf13c" />
												<option value="fa fa-anchor" label="&#xf13d" />
												<option value="fa fa-unlock-alt" label="&#xf13e" />
												<option value="fa fa-bullseye" label="&#xf140" />
												<option value="fa fa-ellipsis-h" label="&#xf141" />
												<option value="fa fa-ellipsis-v" label="&#xf142" />
												<option value="fa fa-rss-square" label="&#xf143" />
												<option value="fa fa-play-circle" label="&#xf144" />
												<option value="fa fa-ticket" label="&#xf145" />
												<option value="fa fa-minus-square" label="&#xf146" />
												<option value="fa fa-minus-square-o" label="&#xf147" />
												<option value="fa fa-level-up" label="&#xf148" />
												<option value="fa fa-level-down" label="&#xf149" />
												<option value="fa fa-check-square" label="&#xf14a" />
												<option value="fa fa-pencil-square" label="&#xf14b" />
												<option value="fa fa-external-link-square" label="&#xf14c" />
												<option value="fa fa-share-square" label="&#xf14d" />
												<option value="fa fa-compass" label="&#xf14e" />
												<option value="fa fa-caret-square-o-down" label="&#xf150" />
												<option value="fa fa-caret-square-o-up" label="&#xf151" />
												<option value="fa fa-caret-square-o-right" label="&#xf152" />
												<option value="fa fa-eur" label="&#xf153" />
												<option value="fa fa-gbp" label="&#xf154" />
												<option value="fa fa-usd" label="&#xf155" />
												<option value="fa fa-inr" label="&#xf156" />
												<option value="fa fa-jpy" label="&#xf157" />
												<option value="fa fa-rub" label="&#xf158" />
												<option value="fa fa-krw" label="&#xf159" />
												<option value="fa fa-btc" label="&#xf15a" />
												<option value="fa fa-file" label="&#xf15b" />
												<option value="fa fa-file-text" label="&#xf15c" />
												<option value="fa fa-sort-alpha-asc" label="&#xf15d" />
												<option value="fa fa-sort-alpha-desc" label="&#xf15e" />
												<option value="fa fa-sort-amount-asc" label="&#xf160" />
												<option value="fa fa-sort-amount-desc" label="&#xf161" />
												<option value="fa fa-sort-numeric-asc" label="&#xf162" />
												<option value="fa fa-sort-numeric-desc" label="&#xf163" />
												<option value="fa fa-thumbs-up" label="&#xf164" />
												<option value="fa fa-thumbs-down" label="&#xf165" />
												<option value="fa fa-youtube-square" label="&#xf166" />
												<option value="fa fa-youtube" label="&#xf167" />
												<option value="fa fa-xing" label="&#xf168" />
												<option value="fa fa-xing-square" label="&#xf169" />
												<option value="fa fa-youtube-play" label="&#xf16a" />
												<option value="fa fa-dropbox" label="&#xf16b" />
												<option value="fa fa-stack-overflow" label="&#xf16c" />
												<option value="fa fa-instagram" label="&#xf16d" />
												<option value="fa fa-flickr" label="&#xf16e" />
												<option value="fa fa-adn" label="&#xf170" />
												<option value="fa fa-bitbucket" label="&#xf171" />
												<option value="fa fa-bitbucket-square" label="&#xf172" />
												<option value="fa fa-tumblr" label="&#xf173" />
												<option value="fa fa-tumblr-square" label="&#xf174" />
												<option value="fa fa-long-arrow-down" label="&#xf175" />
												<option value="fa fa-long-arrow-up" label="&#xf176" />
												<option value="fa fa-long-arrow-left" label="&#xf177" />
												<option value="fa fa-long-arrow-right" label="&#xf178" />
												<option value="fa fa-apple" label="&#xf179" />
												<option value="fa fa-windows" label="&#xf17a" />
												<option value="fa fa-android" label="&#xf17b" />
												<option value="fa fa-linux" label="&#xf17c" />
												<option value="fa fa-dribbble" label="&#xf17d" />
												<option value="fa fa-skype" label="&#xf17e" />
												<option value="fa fa-foursquare" label="&#xf180" />
												<option value="fa fa-trello" label="&#xf181" />
												<option value="fa fa-female" label="&#xf182" />
												<option value="fa fa-male" label="&#xf183" />
												<option value="fa fa-gratipay" label="&#xf184" />
												<option value="fa fa-sun-o" label="&#xf185" />
												<option value="fa fa-moon-o" label="&#xf186" />
												<option value="fa fa-archive" label="&#xf187" />
												<option value="fa fa-bug" label="&#xf188" />
												<option value="fa fa-vk" label="&#xf189" />
												<option value="fa fa-weibo" label="&#xf18a" />
												<option value="fa fa-renren" label="&#xf18b" />
												<option value="fa fa-pagelines" label="&#xf18c" />
												<option value="fa fa-stack-exchange" label="&#xf18d" />
												<option value="fa fa-arrow-circle-o-right" label="&#xf18e" />
												<option value="fa fa-arrow-circle-o-left" label="&#xf190" />
												<option value="fa fa-caret-square-o-left" label="&#xf191" />
												<option value="fa fa-dot-circle-o" label="&#xf192" />
												<option value="fa fa-wheelchair" label="&#xf193" />
												<option value="fa fa-vimeo-square" label="&#xf194" />
												<option value="fa fa-try" label="&#xf195" />
												<option value="fa fa-plus-square-o" label="&#xf196" />
												<option value="fa fa-space-shuttle" label="&#xf197" />
												<option value="fa fa-slack" label="&#xf198" />
												<option value="fa fa-envelope-square" label="&#xf199" />
												<option value="fa fa-wordpress" label="&#xf19a" />
												<option value="fa fa-openid" label="&#xf19b" />
												<option value="fa fa-university" label="&#xf19c" />
												<option value="fa fa-graduation-cap" label="&#xf19d" />
												<option value="fa fa-yahoo" label="&#xf19e" />
												<option value="fa fa-google" label="&#xf1a0" />
												<option value="fa fa-reddit" label="&#xf1a1" />
												<option value="fa fa-reddit-square" label="&#xf1a2" />
												<option value="fa fa-stumbleupon-circle" label="&#xf1a3" />
												<option value="fa fa-stumbleupon" label="&#xf1a4" />
												<option value="fa fa-delicious" label="&#xf1a5" />
												<option value="fa fa-digg" label="&#xf1a6" />
												<option value="fa fa-pied-piper" label="&#xf1a7" />
												<option value="fa fa-pied-piper-alt" label="&#xf1a8" />
												<option value="fa fa-drupal" label="&#xf1a9" />
												<option value="fa fa-joomla" label="&#xf1aa" />
												<option value="fa fa-language" label="&#xf1ab" />
												<option value="fa fa-fax" label="&#xf1ac" />
												<option value="fa fa-building" label="&#xf1ad" />
												<option value="fa fa-child" label="&#xf1ae" />
												<option value="fa fa-paw" label="&#xf1b0" />
												<option value="fa fa-spoon" label="&#xf1b1" />
												<option value="fa fa-cube" label="&#xf1b2" />
												<option value="fa fa-cubes" label="&#xf1b3" />
												<option value="fa fa-behance" label="&#xf1b4" />
												<option value="fa fa-behance-square" label="&#xf1b5" />
												<option value="fa fa-steam" label="&#xf1b6" />
												<option value="fa fa-steam-square" label="&#xf1b7" />
												<option value="fa fa-recycle" label="&#xf1b8" />
												<option value="fa fa-car" label="&#xf1b9" />
												<option value="fa fa-taxi" label="&#xf1ba" />
												<option value="fa fa-tree" label="&#xf1bb" />
												<option value="fa fa-spotify" label="&#xf1bc" />
												<option value="fa fa-deviantart" label="&#xf1bd" />
												<option value="fa fa-soundcloud" label="&#xf1be" />
												<option value="fa fa-database" label="&#xf1c0" />
												<option value="fa fa-file-pdf-o" label="&#xf1c1" />
												<option value="fa fa-file-word-o" label="&#xf1c2" />
												<option value="fa fa-file-excel-o" label="&#xf1c3" />
												<option value="fa fa-file-powerpoint-o" label="&#xf1c4" />
												<option value="fa fa-file-image-o" label="&#xf1c5" />
												<option value="fa fa-file-archive-o" label="&#xf1c6" />
												<option value="fa fa-file-audio-o" label="&#xf1c7" />
												<option value="fa fa-file-video-o" label="&#xf1c8" />
												<option value="fa fa-file-code-o" label="&#xf1c9" />
												<option value="fa fa-vine" label="&#xf1ca" />
												<option value="fa fa-codepen" label="&#xf1cb" />
												<option value="fa fa-jsfiddle" label="&#xf1cc" />
												<option value="fa fa-life-ring" label="&#xf1cd" />
												<option value="fa fa-circle-o-notch" label="&#xf1ce" />
												<option value="fa fa-rebel" label="&#xf1d0" />
												<option value="fa fa-empire" label="&#xf1d1" />
												<option value="fa fa-git-square" label="&#xf1d2" />
												<option value="fa fa-git" label="&#xf1d3" />
												<option value="fa fa-hacker-news" label="&#xf1d4" />
												<option value="fa fa-tencent-weibo" label="&#xf1d5" />
												<option value="fa fa-qq" label="&#xf1d6" />
												<option value="fa fa-weixin" label="&#xf1d7" />
												<option value="fa fa-paper-plane" label="&#xf1d8" />
												<option value="fa fa-paper-plane-o" label="&#xf1d9" />
												<option value="fa fa-history" label="&#xf1da" />
												<option value="fa fa-circle-thin" label="&#xf1db" />
												<option value="fa fa-header" label="&#xf1dc" />
												<option value="fa fa-paragraph" label="&#xf1dd" />
												<option value="fa fa-sliders" label="&#xf1de" />
												<option value="fa fa-share-alt" label="&#xf1e0" />
												<option value="fa fa-share-alt-square" label="&#xf1e1" />
												<option value="fa fa-bomb" label="&#xf1e2" />
												<option value="fa fa-futbol-o" label="&#xf1e3" />
												<option value="fa fa-tty" label="&#xf1e4" />
												<option value="fa fa-binoculars" label="&#xf1e5" />
												<option value="fa fa-plug" label="&#xf1e6" />
												<option value="fa fa-slideshare" label="&#xf1e7" />
												<option value="fa fa-twitch" label="&#xf1e8" />
												<option value="fa fa-yelp" label="&#xf1e9" />
												<option value="fa fa-newspaper-o" label="&#xf1ea" />
												<option value="fa fa-wifi" label="&#xf1eb" />
												<option value="fa fa-calculator" label="&#xf1ec" />
												<option value="fa fa-paypal" label="&#xf1ed" />
												<option value="fa fa-google-wallet" label="&#xf1ee" />
												<option value="fa fa-cc-visa" label="&#xf1f0" />
												<option value="fa fa-cc-mastercard" label="&#xf1f1" />
												<option value="fa fa-cc-discover" label="&#xf1f2" />
												<option value="fa fa-cc-amex" label="&#xf1f3" />
												<option value="fa fa-cc-paypal" label="&#xf1f4" />
												<option value="fa fa-cc-stripe" label="&#xf1f5" />
												<option value="fa fa-bell-slash" label="&#xf1f6" />
												<option value="fa fa-bell-slash-o" label="&#xf1f7" />
												<option value="fa fa-trash" label="&#xf1f8" />
												<option value="fa fa-copyright" label="&#xf1f9" />
												<option value="fa fa-at" label="&#xf1fa" />
												<option value="fa fa-eyedropper" label="&#xf1fb" />
												<option value="fa fa-paint-brush" label="&#xf1fc" />
												<option value="fa fa-birthday-cake" label="&#xf1fd" />
												<option value="fa fa-area-chart" label="&#xf1fe" />
												<option value="fa fa-pie-chart" label="&#xf200" />
												<option value="fa fa-line-chart" label="&#xf201" />
												<option value="fa fa-lastfm" label="&#xf202" />
												<option value="fa fa-lastfm-square" label="&#xf203" />
												<option value="fa fa-toggle-off" label="&#xf204" />
												<option value="fa fa-toggle-on" label="&#xf205" />
												<option value="fa fa-bicycle" label="&#xf206" />
												<option value="fa fa-bus" label="&#xf207" />
												<option value="fa fa-ioxhost" label="&#xf208" />
												<option value="fa fa-angellist" label="&#xf209" />
												<option value="fa fa-cc" label="&#xf20a" />
												<option value="fa fa-ils" label="&#xf20b" />
												<option value="fa fa-meanpath" label="&#xf20c" />
												<option value="fa fa-buysellads" label="&#xf20d" />
												<option value="fa fa-connectdevelop" label="&#xf20e" />
												<option value="fa fa-dashcube" label="&#xf210" />
												<option value="fa fa-forumbee" label="&#xf211" />
												<option value="fa fa-leanpub" label="&#xf212" />
												<option value="fa fa-sellsy" label="&#xf213" />
												<option value="fa fa-shirtsinbulk" label="&#xf214" />
												<option value="fa fa-simplybuilt" label="&#xf215" />
												<option value="fa fa-skyatlas" label="&#xf216" />
												<option value="fa fa-cart-plus" label="&#xf217" />
												<option value="fa fa-cart-arrow-down" label="&#xf218" />
												<option value="fa fa-diamond" label="&#xf219" />
												<option value="fa fa-ship" label="&#xf21a" />
												<option value="fa fa-user-secret" label="&#xf21b" />
												<option value="fa fa-motorcycle" label="&#xf21c" />
												<option value="fa fa-street-view" label="&#xf21d" />
												<option value="fa fa-heartbeat" label="&#xf21e" />
												<option value="fa fa-venus" label="&#xf221" />
												<option value="fa fa-mars" label="&#xf222" />
												<option value="fa fa-mercury" label="&#xf223" />
												<option value="fa fa-transgender" label="&#xf224" />
												<option value="fa fa-transgender-alt" label="&#xf225" />
												<option value="fa fa-venus-double" label="&#xf226" />
												<option value="fa fa-mars-double" label="&#xf227" />
												<option value="fa fa-venus-mars" label="&#xf228" />
												<option value="fa fa-mars-stroke" label="&#xf229" />
												<option value="fa fa-mars-stroke-v" label="&#xf22a" />
												<option value="fa fa-mars-stroke-h" label="&#xf22b" />
												<option value="fa fa-neuter" label="&#xf22c" />
												<option value="fa fa-facebook-official" label="&#xf230" />
												<option value="fa fa-pinterest-p" label="&#xf231" />
												<option value="fa fa-whatsapp" label="&#xf232" />
												<option value="fa fa-server" label="&#xf233" />
												<option value="fa fa-user-plus" label="&#xf234" />
												<option value="fa fa-user-times" label="&#xf235" />
												<option value="fa fa-bed" label="&#xf236" />
												<option value="fa fa-viacoin" label="&#xf237" />
												<option value="fa fa-train" label="&#xf238" />
												<option value="fa fa-subway" label="&#xf239" />
												<option value="fa fa-medium" label="&#xf23a" />
											</select>

										</div>
									</div>
									<div class="form-group">

										<label for="inputEmail3" class="col-md-3 control-label">h1-label-7</label>
										<div class="col-md-9">
											<input id="h1Label7" name="h1Label7" type="text"
												value="${basics.h1Label13}" placeholder="Label"
												class="form-control">
										</div>
									</div>
									<div class="form-group">

										<label for="inputEmail3" class="col-md-3 control-label">h1-label-7-description</label>
										<div class="col-md-9">
											<input id="h1Description7" name="h1Description7" type="text"
												value="${basics.h1Label14}" placeholder="description"
												class="form-control">
										</div>
									</div>
									<div class="form-group">

										<label for="inputEmail3" class="col-md-3 control-label">h1-icon-8</label>
										<div class="col-md-9">
											<select class="fa-select" id="icon8" name="icon8">
												<option label="Select icon" />
												<option value="fa fa-glass" label="&#xf000" />
												<option value="fa fa-music" label="&#xf001" />
												<option value="fa fa-search" label="&#xf002" />
												<option value="fa fa-envelope-o" label="&#xf003" />
												<option value="fa fa-heart" label="&#xf004" />
												<option value="fa fa-star" label="&#xf005" />
												<option value="fa fa-star-o" label="&#xf006" />
												<option value="fa fa-user" label="&#xf007" />
												<option value="fa fa-film" label="&#xf008" />
												<option value="fa fa-th-large" label="&#xf009" />
												<option value="fa fa-th" label="&#xf00a" />
												<option value="fa fa-th-list" label="&#xf00b" />
												<option value="fa fa-check" label="&#xf00c" />
												<option value="fa fa-times" label="&#xf00d" />
												<option value="fa fa-search-plus" label="&#xf00e" />
												<option value="fa fa-search-minus" label="&#xf010" />
												<option value="fa fa-power-off" label="&#xf011" />
												<option value="fa fa-signal" label="&#xf012" />
												<option value="fa fa-cog" label="&#xf013" />
												<option value="fa fa-trash-o" label="&#xf014" />
												<option value="fa fa-home" label="&#xf015" />
												<option value="fa fa-file-o" label="&#xf016" />
												<option value="fa fa-clock-o" label="&#xf017" />
												<option value="fa fa-road" label="&#xf018" />
												<option value="fa fa-download" label="&#xf019" />
												<option value="fa fa-arrow-circle-o-down" label="&#xf01a" />
												<option value="fa fa-arrow-circle-o-up" label="&#xf01b" />
												<option value="fa fa-inbox" label="&#xf01c" />
												<option value="fa fa-play-circle-o" label="&#xf01d" />
												<option value="fa fa-repeat" label="&#xf01e" />
												<option value="fa fa-refresh" label="&#xf021" />
												<option value="fa fa-list-alt" label="&#xf022" />
												<option value="fa fa-lock" label="&#xf023" />
												<option value="fa fa-flag" label="&#xf024" />
												<option value="fa fa-headphones" label="&#xf025" />
												<option value="fa fa-volume-off" label="&#xf026" />
												<option value="fa fa-volume-down" label="&#xf027" />
												<option value="fa fa-volume-up" label="&#xf028" />
												<option value="fa fa-qrcode" label="&#xf029" />
												<option value="fa fa-barcode" label="&#xf02a" />
												<option value="fa fa-tag" label="&#xf02b" />
												<option value="fa fa-tags" label="&#xf02c" />
												<option value="fa fa-book" label="&#xf02d" />
												<option value="fa fa-bookmark" label="&#xf02e" />
												<option value="fa fa-print" label="&#xf02f" />
												<option value="fa fa-camera" label="&#xf030" />
												<option value="fa fa-font" label="&#xf031" />
												<option value="fa fa-bold" label="&#xf032" />
												<option value="fa fa-italic" label="&#xf033" />
												<option value="fa fa-text-height" label="&#xf034" />
												<option value="fa fa-text-width" label="&#xf035" />
												<option value="fa fa-align-left" label="&#xf036" />
												<option value="fa fa-align-center" label="&#xf037" />
												<option value="fa fa-align-right" label="&#xf038" />
												<option value="fa fa-align-justify" label="&#xf039" />
												<option value="fa fa-list" label="&#xf03a" />
												<option value="fa fa-outdent" label="&#xf03b" />
												<option value="fa fa-indent" label="&#xf03c" />
												<option value="fa fa-video-camera" label="&#xf03d" />
												<option value="fa fa-picture-o" label="&#xf03e" />
												<option value="fa fa-pencil" label="&#xf040" />
												<option value="fa fa-map-marker" label="&#xf041" />
												<option value="fa fa-adjust" label="&#xf042" />
												<option value="fa fa-tint" label="&#xf043" />
												<option value="fa fa-pencil-square-o" label="&#xf044" />
												<option value="fa fa-share-square-o" label="&#xf045" />
												<option value="fa fa-check-square-o" label="&#xf046" />
												<option value="fa fa-arrows" label="&#xf047" />
												<option value="fa fa-step-backward" label="&#xf048" />
												<option value="fa fa-fast-backward" label="&#xf049" />
												<option value="fa fa-backward" label="&#xf04a" />
												<option value="fa fa-play" label="&#xf04b" />
												<option value="fa fa-pause" label="&#xf04c" />
												<option value="fa fa-stop" label="&#xf04d" />
												<option value="fa fa-forward" label="&#xf04e" />
												<option value="fa fa-fast-forward" label="&#xf050" />
												<option value="fa fa-step-forward" label="&#xf051" />
												<option value="fa fa-eject" label="&#xf052" />
												<option value="fa fa-chevron-left" label="&#xf053" />
												<option value="fa fa-chevron-right" label="&#xf054" />
												<option value="fa fa-plus-circle" label="&#xf055" />
												<option value="fa fa-minus-circle" label="&#xf056" />
												<option value="fa fa-times-circle" label="&#xf057" />
												<option value="fa fa-check-circle" label="&#xf058" />
												<option value="fa fa-question-circle" label="&#xf059" />
												<option value="fa fa-info-circle" label="&#xf05a" />
												<option value="fa fa-crosshairs" label="&#xf05b" />
												<option value="fa fa-times-circle-o" label="&#xf05c" />
												<option value="fa fa-check-circle-o" label="&#xf05d" />
												<option value="fa fa-ban" label="&#xf05e" />
												<option value="fa fa-arrow-left" label="&#xf060" />
												<option value="fa fa-arrow-right" label="&#xf061" />
												<option value="fa fa-arrow-up" label="&#xf062" />
												<option value="fa fa-arrow-down" label="&#xf063" />
												<option value="fa fa-share" label="&#xf064" />
												<option value="fa fa-expand" label="&#xf065" />
												<option value="fa fa-compress" label="&#xf066" />
												<option value="fa fa-plus" label="&#xf067" />
												<option value="fa fa-minus" label="&#xf068" />
												<option value="fa fa-asterisk" label="&#xf069" />
												<option value="fa fa-exclamation-circle" label="&#xf06a" />
												<option value="fa fa-gift" label="&#xf06b" />
												<option value="fa fa-leaf" label="&#xf06c" />
												<option value="fa fa-fire" label="&#xf06d" />
												<option value="fa fa-eye" label="&#xf06e" />
												<option value="fa fa-eye-slash" label="&#xf070" />
												<option value="fa fa-exclamation-triangle" label="&#xf071" />
												<option value="fa fa-plane" label="&#xf072" />
												<option value="fa fa-calendar" label="&#xf073" />
												<option value="fa fa-random" label="&#xf074" />
												<option value="fa fa-comment" label="&#xf075" />
												<option value="fa fa-magnet" label="&#xf076" />
												<option value="fa fa-chevron-up" label="&#xf077" />
												<option value="fa fa-chevron-down" label="&#xf078" />
												<option value="fa fa-retweet" label="&#xf079" />
												<option value="fa fa-shopping-cart" label="&#xf07a" />
												<option value="fa fa-folder" label="&#xf07b" />
												<option value="fa fa-folder-open" label="&#xf07c" />
												<option value="fa fa-arrows-v" label="&#xf07d" />
												<option value="fa fa-arrows-h" label="&#xf07e" />
												<option value="fa fa-bar-chart" label="&#xf080" />
												<option value="fa fa-twitter-square" label="&#xf081" />
												<option value="fa fa-facebook-square" label="&#xf082" />
												<option value="fa fa-camera-retro" label="&#xf083" />
												<option value="fa fa-key" label="&#xf084" />
												<option value="fa fa-cogs" label="&#xf085" />
												<option value="fa fa-comments" label="&#xf086" />
												<option value="fa fa-thumbs-o-up" label="&#xf087" />
												<option value="fa fa-thumbs-o-down" label="&#xf088" />
												<option value="fa fa-star-half" label="&#xf089" />
												<option value="fa fa-heart-o" label="&#xf08a" />
												<option value="fa fa-sign-out" label="&#xf08b" />
												<option value="fa fa-linkedin-square" label="&#xf08c" />
												<option value="fa fa-thumb-tack" label="&#xf08d" />
												<option value="fa fa-external-link" label="&#xf08e" />
												<option value="fa fa-sign-in" label="&#xf090" />
												<option value="fa fa-trophy" label="&#xf091" />
												<option value="fa fa-github-square" label="&#xf092" />
												<option value="fa fa-upload" label="&#xf093" />
												<option value="fa fa-lemon-o" label="&#xf094" />
												<option value="fa fa-phone" label="&#xf095" />
												<option value="fa fa-square-o" label="&#xf096" />
												<option value="fa fa-bookmark-o" label="&#xf097" />
												<option value="fa fa-phone-square" label="&#xf098" />
												<option value="fa fa-twitter" label="&#xf099" />
												<option value="fa fa-facebook" label="&#xf09a" />
												<option value="fa fa-github" label="&#xf09b" />
												<option value="fa fa-unlock" label="&#xf09c" />
												<option value="fa fa-credit-card" label="&#xf09d" />
												<option value="fa fa-rss" label="&#xf09e" />
												<option value="fa fa-hdd-o" label="&#xf0a0" />
												<option value="fa fa-bullhorn" label="&#xf0a1" />
												<option value="fa fa-bell" label="&#xf0f3" />
												<option value="fa fa-certificate" label="&#xf0a3" />
												<option value="fa fa-hand-o-right" label="&#xf0a4" />
												<option value="fa fa-hand-o-left" label="&#xf0a5" />
												<option value="fa fa-hand-o-up" label="&#xf0a6" />
												<option value="fa fa-hand-o-down" label="&#xf0a7" />
												<option value="fa fa-arrow-circle-left" label="&#xf0a8" />
												<option value="fa fa-arrow-circle-right" label="&#xf0a9" />
												<option value="fa fa-arrow-circle-up" label="&#xf0aa" />
												<option value="fa fa-arrow-circle-down" label="&#xf0ab" />
												<option value="fa fa-globe" label="&#xf0ac" />
												<option value="fa fa-wrench" label="&#xf0ad" />
												<option value="fa fa-tasks" label="&#xf0ae" />
												<option value="fa fa-filter" label="&#xf0b0" />
												<option value="fa fa-briefcase" label="&#xf0b1" />
												<option value="fa fa-arrows-alt" label="&#xf0b2" />
												<option value="fa fa-users" label="&#xf0c0" />
												<option value="fa fa-link" label="&#xf0c1" />
												<option value="fa fa-cloud" label="&#xf0c2" />
												<option value="fa fa-flask" label="&#xf0c3" />
												<option value="fa fa-scissors" label="&#xf0c4" />
												<option value="fa fa-files-o" label="&#xf0c5" />
												<option value="fa fa-paperclip" label="&#xf0c6" />
												<option value="fa fa-floppy-o" label="&#xf0c7" />
												<option value="fa fa-square" label="&#xf0c8" />
												<option value="fa fa-bars" label="&#xf0c9" />
												<option value="fa fa-list-ul" label="&#xf0ca" />
												<option value="fa fa-list-ol" label="&#xf0cb" />
												<option value="fa fa-strikethrough" label="&#xf0cc" />
												<option value="fa fa-underline" label="&#xf0cd" />
												<option value="fa fa-table" label="&#xf0ce" />
												<option value="fa fa-magic" label="&#xf0d0" />
												<option value="fa fa-truck" label="&#xf0d1" />
												<option value="fa fa-pinterest" label="&#xf0d2" />
												<option value="fa fa-pinterest-square" label="&#xf0d3" />
												<option value="fa fa-google-plus-square" label="&#xf0d4" />
												<option value="fa fa-google-plus" label="&#xf0d5" />
												<option value="fa fa-money" label="&#xf0d6" />
												<option value="fa fa-caret-down" label="&#xf0d7" />
												<option value="fa fa-caret-up" label="&#xf0d8" />
												<option value="fa fa-caret-left" label="&#xf0d9" />
												<option value="fa fa-caret-right" label="&#xf0da" />
												<option value="fa fa-columns" label="&#xf0db" />
												<option value="fa fa-sort" label="&#xf0dc" />
												<option value="fa fa-sort-desc" label="&#xf0dd" />
												<option value="fa fa-sort-asc" label="&#xf0de" />
												<option value="fa fa-envelope" label="&#xf0e0" />
												<option value="fa fa-linkedin" label="&#xf0e1" />
												<option value="fa fa-undo" label="&#xf0e2" />
												<option value="fa fa-gavel" label="&#xf0e3" />
												<option value="fa fa-tachometer" label="&#xf0e4" />
												<option value="fa fa-comment-o" label="&#xf0e5" />
												<option value="fa fa-comments-o" label="&#xf0e6" />
												<option value="fa fa-bolt" label="&#xf0e7" />
												<option value="fa fa-sitemap" label="&#xf0e8" />
												<option value="fa fa-umbrella" label="&#xf0e9" />
												<option value="fa fa-clipboard" label="&#xf0ea" />
												<option value="fa fa-lightbulb-o" label="&#xf0eb" />
												<option value="fa fa-exchange" label="&#xf0ec" />
												<option value="fa fa-cloud-download" label="&#xf0ed" />
												<option value="fa fa-cloud-upload" label="&#xf0ee" />
												<option value="fa fa-user-md" label="&#xf0f0" />
												<option value="fa fa-stethoscope" label="&#xf0f1" />
												<option value="fa fa-suitcase" label="&#xf0f2" />
												<option value="fa fa-bell-o" label="&#xf0a2" />
												<option value="fa fa-coffee" label="&#xf0f4" />
												<option value="fa fa-cutlery" label="&#xf0f5" />
												<option value="fa fa-file-text-o" label="&#xf0f6" />
												<option value="fa fa-building-o" label="&#xf0f7" />
												<option value="fa fa-hospital-o" label="&#xf0f8" />
												<option value="fa fa-ambulance" label="&#xf0f9" />
												<option value="fa fa-medkit" label="&#xf0fa" />
												<option value="fa fa-fighter-jet" label="&#xf0fb" />
												<option value="fa fa-beer" label="&#xf0fc" />
												<option value="fa fa-h-square" label="&#xf0fd" />
												<option value="fa fa-plus-square" label="&#xf0fe" />
												<option value="fa fa-angle-double-left" label="&#xf100" />
												<option value="fa fa-angle-double-right" label="&#xf101" />
												<option value="fa fa-angle-double-up" label="&#xf102" />
												<option value="fa fa-angle-double-down" label="&#xf103" />
												<option value="fa fa-angle-left" label="&#xf104" />
												<option value="fa fa-angle-right" label="&#xf105" />
												<option value="fa fa-angle-up" label="&#xf106" />
												<option value="fa fa-angle-down" label="&#xf107" />
												<option value="fa fa-desktop" label="&#xf108" />
												<option value="fa fa-laptop" label="&#xf109" />
												<option value="fa fa-tablet" label="&#xf10a" />
												<option value="fa fa-mobile" label="&#xf10b" />
												<option value="fa fa-circle-o" label="&#xf10c" />
												<option value="fa fa-quote-left" label="&#xf10d" />
												<option value="fa fa-quote-right" label="&#xf10e" />
												<option value="fa fa-spinner" label="&#xf110" />
												<option value="fa fa-circle" label="&#xf111" />
												<option value="fa fa-reply" label="&#xf112" />
												<option value="fa fa-github-alt" label="&#xf113" />
												<option value="fa fa-folder-o" label="&#xf114" />
												<option value="fa fa-folder-open-o" label="&#xf115" />
												<option value="fa fa-smile-o" label="&#xf118" />
												<option value="fa fa-frown-o" label="&#xf119" />
												<option value="fa fa-meh-o" label="&#xf11a" />
												<option value="fa fa-gamepad" label="&#xf11b" />
												<option value="fa fa-keyboard-o" label="&#xf11c" />
												<option value="fa fa-flag-o" label="&#xf11d" />
												<option value="fa fa-flag-checkered" label="&#xf11e" />
												<option value="fa fa-terminal" label="&#xf120" />
												<option value="fa fa-code" label="&#xf121" />
												<option value="fa fa-reply-all" label="&#xf122" />
												<option value="fa fa-star-half-o" label="&#xf123" />
												<option value="fa fa-location-arrow" label="&#xf124" />
												<option value="fa fa-crop" label="&#xf125" />
												<option value="fa fa-code-fork" label="&#xf126" />
												<option value="fa fa-chain-broken" label="&#xf127" />
												<option value="fa fa-question" label="&#xf128" />
												<option value="fa fa-info" label="&#xf129" />
												<option value="fa fa-exclamation" label="&#xf12a" />
												<option value="fa fa-superscript" label="&#xf12b" />
												<option value="fa fa-subscript" label="&#xf12c" />
												<option value="fa fa-eraser" label="&#xf12d" />
												<option value="fa fa-puzzle-piece" label="&#xf12e" />
												<option value="fa fa-microphone" label="&#xf130" />
												<option value="fa fa-microphone-slash" label="&#xf131" />
												<option value="fa fa-shield" label="&#xf132" />
												<option value="fa fa-calendar-o" label="&#xf133" />
												<option value="fa fa-fire-extinguisher" label="&#xf134" />
												<option value="fa fa-rocket" label="&#xf135" />
												<option value="fa fa-maxcdn" label="&#xf136" />
												<option value="fa fa-chevron-circle-left" label="&#xf137" />
												<option value="fa fa-chevron-circle-right" label="&#xf138" />
												<option value="fa fa-chevron-circle-up" label="&#xf139" />
												<option value="fa fa-chevron-circle-down" label="&#xf13a" />
												<option value="fa fa-html5" label="&#xf13b" />
												<option value="fa fa-css3" label="&#xf13c" />
												<option value="fa fa-anchor" label="&#xf13d" />
												<option value="fa fa-unlock-alt" label="&#xf13e" />
												<option value="fa fa-bullseye" label="&#xf140" />
												<option value="fa fa-ellipsis-h" label="&#xf141" />
												<option value="fa fa-ellipsis-v" label="&#xf142" />
												<option value="fa fa-rss-square" label="&#xf143" />
												<option value="fa fa-play-circle" label="&#xf144" />
												<option value="fa fa-ticket" label="&#xf145" />
												<option value="fa fa-minus-square" label="&#xf146" />
												<option value="fa fa-minus-square-o" label="&#xf147" />
												<option value="fa fa-level-up" label="&#xf148" />
												<option value="fa fa-level-down" label="&#xf149" />
												<option value="fa fa-check-square" label="&#xf14a" />
												<option value="fa fa-pencil-square" label="&#xf14b" />
												<option value="fa fa-external-link-square" label="&#xf14c" />
												<option value="fa fa-share-square" label="&#xf14d" />
												<option value="fa fa-compass" label="&#xf14e" />
												<option value="fa fa-caret-square-o-down" label="&#xf150" />
												<option value="fa fa-caret-square-o-up" label="&#xf151" />
												<option value="fa fa-caret-square-o-right" label="&#xf152" />
												<option value="fa fa-eur" label="&#xf153" />
												<option value="fa fa-gbp" label="&#xf154" />
												<option value="fa fa-usd" label="&#xf155" />
												<option value="fa fa-inr" label="&#xf156" />
												<option value="fa fa-jpy" label="&#xf157" />
												<option value="fa fa-rub" label="&#xf158" />
												<option value="fa fa-krw" label="&#xf159" />
												<option value="fa fa-btc" label="&#xf15a" />
												<option value="fa fa-file" label="&#xf15b" />
												<option value="fa fa-file-text" label="&#xf15c" />
												<option value="fa fa-sort-alpha-asc" label="&#xf15d" />
												<option value="fa fa-sort-alpha-desc" label="&#xf15e" />
												<option value="fa fa-sort-amount-asc" label="&#xf160" />
												<option value="fa fa-sort-amount-desc" label="&#xf161" />
												<option value="fa fa-sort-numeric-asc" label="&#xf162" />
												<option value="fa fa-sort-numeric-desc" label="&#xf163" />
												<option value="fa fa-thumbs-up" label="&#xf164" />
												<option value="fa fa-thumbs-down" label="&#xf165" />
												<option value="fa fa-youtube-square" label="&#xf166" />
												<option value="fa fa-youtube" label="&#xf167" />
												<option value="fa fa-xing" label="&#xf168" />
												<option value="fa fa-xing-square" label="&#xf169" />
												<option value="fa fa-youtube-play" label="&#xf16a" />
												<option value="fa fa-dropbox" label="&#xf16b" />
												<option value="fa fa-stack-overflow" label="&#xf16c" />
												<option value="fa fa-instagram" label="&#xf16d" />
												<option value="fa fa-flickr" label="&#xf16e" />
												<option value="fa fa-adn" label="&#xf170" />
												<option value="fa fa-bitbucket" label="&#xf171" />
												<option value="fa fa-bitbucket-square" label="&#xf172" />
												<option value="fa fa-tumblr" label="&#xf173" />
												<option value="fa fa-tumblr-square" label="&#xf174" />
												<option value="fa fa-long-arrow-down" label="&#xf175" />
												<option value="fa fa-long-arrow-up" label="&#xf176" />
												<option value="fa fa-long-arrow-left" label="&#xf177" />
												<option value="fa fa-long-arrow-right" label="&#xf178" />
												<option value="fa fa-apple" label="&#xf179" />
												<option value="fa fa-windows" label="&#xf17a" />
												<option value="fa fa-android" label="&#xf17b" />
												<option value="fa fa-linux" label="&#xf17c" />
												<option value="fa fa-dribbble" label="&#xf17d" />
												<option value="fa fa-skype" label="&#xf17e" />
												<option value="fa fa-foursquare" label="&#xf180" />
												<option value="fa fa-trello" label="&#xf181" />
												<option value="fa fa-female" label="&#xf182" />
												<option value="fa fa-male" label="&#xf183" />
												<option value="fa fa-gratipay" label="&#xf184" />
												<option value="fa fa-sun-o" label="&#xf185" />
												<option value="fa fa-moon-o" label="&#xf186" />
												<option value="fa fa-archive" label="&#xf187" />
												<option value="fa fa-bug" label="&#xf188" />
												<option value="fa fa-vk" label="&#xf189" />
												<option value="fa fa-weibo" label="&#xf18a" />
												<option value="fa fa-renren" label="&#xf18b" />
												<option value="fa fa-pagelines" label="&#xf18c" />
												<option value="fa fa-stack-exchange" label="&#xf18d" />
												<option value="fa fa-arrow-circle-o-right" label="&#xf18e" />
												<option value="fa fa-arrow-circle-o-left" label="&#xf190" />
												<option value="fa fa-caret-square-o-left" label="&#xf191" />
												<option value="fa fa-dot-circle-o" label="&#xf192" />
												<option value="fa fa-wheelchair" label="&#xf193" />
												<option value="fa fa-vimeo-square" label="&#xf194" />
												<option value="fa fa-try" label="&#xf195" />
												<option value="fa fa-plus-square-o" label="&#xf196" />
												<option value="fa fa-space-shuttle" label="&#xf197" />
												<option value="fa fa-slack" label="&#xf198" />
												<option value="fa fa-envelope-square" label="&#xf199" />
												<option value="fa fa-wordpress" label="&#xf19a" />
												<option value="fa fa-openid" label="&#xf19b" />
												<option value="fa fa-university" label="&#xf19c" />
												<option value="fa fa-graduation-cap" label="&#xf19d" />
												<option value="fa fa-yahoo" label="&#xf19e" />
												<option value="fa fa-google" label="&#xf1a0" />
												<option value="fa fa-reddit" label="&#xf1a1" />
												<option value="fa fa-reddit-square" label="&#xf1a2" />
												<option value="fa fa-stumbleupon-circle" label="&#xf1a3" />
												<option value="fa fa-stumbleupon" label="&#xf1a4" />
												<option value="fa fa-delicious" label="&#xf1a5" />
												<option value="fa fa-digg" label="&#xf1a6" />
												<option value="fa fa-pied-piper" label="&#xf1a7" />
												<option value="fa fa-pied-piper-alt" label="&#xf1a8" />
												<option value="fa fa-drupal" label="&#xf1a9" />
												<option value="fa fa-joomla" label="&#xf1aa" />
												<option value="fa fa-language" label="&#xf1ab" />
												<option value="fa fa-fax" label="&#xf1ac" />
												<option value="fa fa-building" label="&#xf1ad" />
												<option value="fa fa-child" label="&#xf1ae" />
												<option value="fa fa-paw" label="&#xf1b0" />
												<option value="fa fa-spoon" label="&#xf1b1" />
												<option value="fa fa-cube" label="&#xf1b2" />
												<option value="fa fa-cubes" label="&#xf1b3" />
												<option value="fa fa-behance" label="&#xf1b4" />
												<option value="fa fa-behance-square" label="&#xf1b5" />
												<option value="fa fa-steam" label="&#xf1b6" />
												<option value="fa fa-steam-square" label="&#xf1b7" />
												<option value="fa fa-recycle" label="&#xf1b8" />
												<option value="fa fa-car" label="&#xf1b9" />
												<option value="fa fa-taxi" label="&#xf1ba" />
												<option value="fa fa-tree" label="&#xf1bb" />
												<option value="fa fa-spotify" label="&#xf1bc" />
												<option value="fa fa-deviantart" label="&#xf1bd" />
												<option value="fa fa-soundcloud" label="&#xf1be" />
												<option value="fa fa-database" label="&#xf1c0" />
												<option value="fa fa-file-pdf-o" label="&#xf1c1" />
												<option value="fa fa-file-word-o" label="&#xf1c2" />
												<option value="fa fa-file-excel-o" label="&#xf1c3" />
												<option value="fa fa-file-powerpoint-o" label="&#xf1c4" />
												<option value="fa fa-file-image-o" label="&#xf1c5" />
												<option value="fa fa-file-archive-o" label="&#xf1c6" />
												<option value="fa fa-file-audio-o" label="&#xf1c7" />
												<option value="fa fa-file-video-o" label="&#xf1c8" />
												<option value="fa fa-file-code-o" label="&#xf1c9" />
												<option value="fa fa-vine" label="&#xf1ca" />
												<option value="fa fa-codepen" label="&#xf1cb" />
												<option value="fa fa-jsfiddle" label="&#xf1cc" />
												<option value="fa fa-life-ring" label="&#xf1cd" />
												<option value="fa fa-circle-o-notch" label="&#xf1ce" />
												<option value="fa fa-rebel" label="&#xf1d0" />
												<option value="fa fa-empire" label="&#xf1d1" />
												<option value="fa fa-git-square" label="&#xf1d2" />
												<option value="fa fa-git" label="&#xf1d3" />
												<option value="fa fa-hacker-news" label="&#xf1d4" />
												<option value="fa fa-tencent-weibo" label="&#xf1d5" />
												<option value="fa fa-qq" label="&#xf1d6" />
												<option value="fa fa-weixin" label="&#xf1d7" />
												<option value="fa fa-paper-plane" label="&#xf1d8" />
												<option value="fa fa-paper-plane-o" label="&#xf1d9" />
												<option value="fa fa-history" label="&#xf1da" />
												<option value="fa fa-circle-thin" label="&#xf1db" />
												<option value="fa fa-header" label="&#xf1dc" />
												<option value="fa fa-paragraph" label="&#xf1dd" />
												<option value="fa fa-sliders" label="&#xf1de" />
												<option value="fa fa-share-alt" label="&#xf1e0" />
												<option value="fa fa-share-alt-square" label="&#xf1e1" />
												<option value="fa fa-bomb" label="&#xf1e2" />
												<option value="fa fa-futbol-o" label="&#xf1e3" />
												<option value="fa fa-tty" label="&#xf1e4" />
												<option value="fa fa-binoculars" label="&#xf1e5" />
												<option value="fa fa-plug" label="&#xf1e6" />
												<option value="fa fa-slideshare" label="&#xf1e7" />
												<option value="fa fa-twitch" label="&#xf1e8" />
												<option value="fa fa-yelp" label="&#xf1e9" />
												<option value="fa fa-newspaper-o" label="&#xf1ea" />
												<option value="fa fa-wifi" label="&#xf1eb" />
												<option value="fa fa-calculator" label="&#xf1ec" />
												<option value="fa fa-paypal" label="&#xf1ed" />
												<option value="fa fa-google-wallet" label="&#xf1ee" />
												<option value="fa fa-cc-visa" label="&#xf1f0" />
												<option value="fa fa-cc-mastercard" label="&#xf1f1" />
												<option value="fa fa-cc-discover" label="&#xf1f2" />
												<option value="fa fa-cc-amex" label="&#xf1f3" />
												<option value="fa fa-cc-paypal" label="&#xf1f4" />
												<option value="fa fa-cc-stripe" label="&#xf1f5" />
												<option value="fa fa-bell-slash" label="&#xf1f6" />
												<option value="fa fa-bell-slash-o" label="&#xf1f7" />
												<option value="fa fa-trash" label="&#xf1f8" />
												<option value="fa fa-copyright" label="&#xf1f9" />
												<option value="fa fa-at" label="&#xf1fa" />
												<option value="fa fa-eyedropper" label="&#xf1fb" />
												<option value="fa fa-paint-brush" label="&#xf1fc" />
												<option value="fa fa-birthday-cake" label="&#xf1fd" />
												<option value="fa fa-area-chart" label="&#xf1fe" />
												<option value="fa fa-pie-chart" label="&#xf200" />
												<option value="fa fa-line-chart" label="&#xf201" />
												<option value="fa fa-lastfm" label="&#xf202" />
												<option value="fa fa-lastfm-square" label="&#xf203" />
												<option value="fa fa-toggle-off" label="&#xf204" />
												<option value="fa fa-toggle-on" label="&#xf205" />
												<option value="fa fa-bicycle" label="&#xf206" />
												<option value="fa fa-bus" label="&#xf207" />
												<option value="fa fa-ioxhost" label="&#xf208" />
												<option value="fa fa-angellist" label="&#xf209" />
												<option value="fa fa-cc" label="&#xf20a" />
												<option value="fa fa-ils" label="&#xf20b" />
												<option value="fa fa-meanpath" label="&#xf20c" />
												<option value="fa fa-buysellads" label="&#xf20d" />
												<option value="fa fa-connectdevelop" label="&#xf20e" />
												<option value="fa fa-dashcube" label="&#xf210" />
												<option value="fa fa-forumbee" label="&#xf211" />
												<option value="fa fa-leanpub" label="&#xf212" />
												<option value="fa fa-sellsy" label="&#xf213" />
												<option value="fa fa-shirtsinbulk" label="&#xf214" />
												<option value="fa fa-simplybuilt" label="&#xf215" />
												<option value="fa fa-skyatlas" label="&#xf216" />
												<option value="fa fa-cart-plus" label="&#xf217" />
												<option value="fa fa-cart-arrow-down" label="&#xf218" />
												<option value="fa fa-diamond" label="&#xf219" />
												<option value="fa fa-ship" label="&#xf21a" />
												<option value="fa fa-user-secret" label="&#xf21b" />
												<option value="fa fa-motorcycle" label="&#xf21c" />
												<option value="fa fa-street-view" label="&#xf21d" />
												<option value="fa fa-heartbeat" label="&#xf21e" />
												<option value="fa fa-venus" label="&#xf221" />
												<option value="fa fa-mars" label="&#xf222" />
												<option value="fa fa-mercury" label="&#xf223" />
												<option value="fa fa-transgender" label="&#xf224" />
												<option value="fa fa-transgender-alt" label="&#xf225" />
												<option value="fa fa-venus-double" label="&#xf226" />
												<option value="fa fa-mars-double" label="&#xf227" />
												<option value="fa fa-venus-mars" label="&#xf228" />
												<option value="fa fa-mars-stroke" label="&#xf229" />
												<option value="fa fa-mars-stroke-v" label="&#xf22a" />
												<option value="fa fa-mars-stroke-h" label="&#xf22b" />
												<option value="fa fa-neuter" label="&#xf22c" />
												<option value="fa fa-facebook-official" label="&#xf230" />
												<option value="fa fa-pinterest-p" label="&#xf231" />
												<option value="fa fa-whatsapp" label="&#xf232" />
												<option value="fa fa-server" label="&#xf233" />
												<option value="fa fa-user-plus" label="&#xf234" />
												<option value="fa fa-user-times" label="&#xf235" />
												<option value="fa fa-bed" label="&#xf236" />
												<option value="fa fa-viacoin" label="&#xf237" />
												<option value="fa fa-train" label="&#xf238" />
												<option value="fa fa-subway" label="&#xf239" />
												<option value="fa fa-medium" label="&#xf23a" />
											</select>

										</div>
									</div>
									<div class="form-group">

										<label for="inputEmail3" class="col-md-3 control-label">h1-label-8</label>
										<div class="col-md-9">
											<input id="h1Label8" name="h1Label8" type="text"
												value="${basics.h1Label15}" placeholder="Label"
												class="form-control">
										</div>
									</div>
									<div class="form-group">

										<label for="inputEmail3" class="col-md-3 control-label">h1-label-8-description</label>
										<div class="col-md-9">
											<input id="h1Description8" name="h1Description8" type="text"
												value="${basics.h1Label16}" placeholder="Description"
												class="form-control">
										</div>
									</div>

									<div class="form-group">

										<label for="inputEmail3" class="col-md-3 control-label">heading-2</label>
										<div class="col-md-9">
											<input id="heading2" name="heading2" type="text"
												value="${basics.heading2}" placeholder="heading2"
												class="form-control">
										</div>
									</div>
									<div class="form-group">

										<label for="inputEmail3" class="col-md-3 control-label">h2-description</label>
										<div class="col-md-9">
											<textarea id="h2Description" name="h2Description"
												maxlength="500" rows="4" cols="100">${basics.h2Label1}</textarea>
										</div>
									</div>

									<div class="form-group">

										<label for="inputEmail3" class="col-md-3 control-label">heading-3</label>
										<div class="col-md-9">
											<input id="heading3" name="heading3" type="text"
												value="${basics.heading3}" placeholder="heading3"
												class="form-control">
										</div>
									</div>
									<div class="form-group">

										<label for="inputEmail3" class="col-md-3 control-label">h3-description</label>
										<div class="col-md-9">
											<textarea id="h3Description" name="h3Description"
												maxlength="500" rows="4" cols="100">${basics.h3Label1}</textarea>
										</div>
									</div>




									<div class="form-group">
										<div class="col-md-offset-3 col-md-9">
											<button type="submit" class="btn btn-default">Update/Save</button>
										</div>
									</div>
								</form>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

</t:template>
