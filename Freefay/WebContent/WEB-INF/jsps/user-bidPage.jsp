%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>

	<div class="l-spaced">
		<div class="l-box l-spaced-bottom">
			<div class="l-box-header">
				<h2 class="l-box-title">
					<span>Request</span> Bid
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
				</ul>
				<!-- Tab panes-->

				<div class="l-page-header">
					<h2 class="l-page-title"></h2>
					<!--BREADCRUMB-->
					<ul class="breadcrumb t-breadcrumb-page">
						<li></li>
						<li></li>
						<li class="active"></li>
					</ul>
				</div>
				<div class="l-box">
					<div class="l-box-header">
						<h2 class="l-box-title">
							<span>Place</span> Bid
						</h2>
						<h2 class="l-box-title">Once you place your bid and it is
							accepted, Only then will your work be started.</h2>
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
						<form action="${pageContext.request.contextPath}/user/placeBid.io"
							method="post" role="form" class="form-horizontal">
							<div class="form-group">
								<label for="inputEmail3" class="col-md-3 control-label">Request
									Id</label>
								<div class="col-md-9">
									<input id="id" name="id" type="number" readonly
										placeholder="Gig Id" class="form-control"
										value="${request.requestsId}">
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-md-3 control-label">Request
									Name</label>
								<div class="col-md-9">
									<input id="name" name="name" type="text" readonly
										placeholder=" Name" class="form-control"
										value="${request.requestName}">
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-md-3 control-label">Requestee</label>
								<div class="col-md-9">
									<input id="username" name="username" type="text" readonly
										placeholder="Name" class="form-control"
										value="${request.users.id.username}">
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-md-3 control-label">budget</label>
								<div class="col-md-9">
									<input id="budget" name="budget" type="number" readonly
										placeholder="budget" class="form-control"
										value="${request.budget}">
								</div>
							</div>

							<div class="form-group">
								<label for="inputEmail3" class="col-md-3 control-label">
									Bid</label>
								<div class="col-md-9">
									<input id="bid" name="bid" type="number" placeholder="Bid-$"
										class="form-control">
								</div>
							</div>

							<div class="form-group">
								<div class="col-md-offset-3 col-md-9">
									<button type="submit" class="btn btn-default">placeBid</button>
								</div>
							</div>
						</form>
					</div>
				</div>


			</div>

		</div>

	</div>



</t:template>
