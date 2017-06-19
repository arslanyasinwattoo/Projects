<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>


	<div class="l-spaced">
		<div class="l-box l-spaced-bottom">
			<div class="l-box-header">
				<h2 class="l-box-title">
					<span>Service</span> Order
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
							<span>Place</span> Order
						</h2>
						<h2 class="l-box-title">Once you place your order and it is
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
						<form
							action="${pageContext.request.contextPath}/user/placeOrder.io"
							method="post" role="form" class="form-horizontal">
							<div class="form-group">
								<label for="inputEmail3" class="col-md-3 control-label">Gig
									Id</label>
								<div class="col-md-9">
									<input id="id" name="id" type="number" readonly
										placeholder="Gig Id" class="form-control"
										value="${service.servicesId}">
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-md-3 control-label">Gig
									Name</label>
								<div class="col-md-9">
									<input id="name" name="name" type="text" readonly
										placeholder=" Name" class="form-control"
										value="${service.serviceName}">
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-md-3 control-label">Gig
									Provider</label>
								<div class="col-md-9">
									<input id="username" name="username" type="text" readonly
										placeholder="Name" class="form-control"
										value="${service.users.id.username}">
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-md-3 control-label">Per
									Gig</label>
								<div class="col-md-9">
									<input id="budget" name="budget" type="number" readonly
										placeholder="budget" class="form-control"
										value="${service.budget}">
								</div>
							</div>

							<div class="form-group">
								<label for="inputEmail3" class="col-md-3 control-label">Time
									Per Gig</label>
								<div class="col-md-9">
									<input id="timeLimit" name="timeLimit" type="text" readonly
										placeholder="timeLimit" class="form-control"
										value="${service.timeLimit}">
								</div>
							</div>

							<div class="form-group">
								<label for="inputEmail3" class="col-md-3 control-label">Your
									Order</label>
								<div class="col-md-9">
									<select id="order" name="order">
										<option label="No of Gigs Required"></option>
										<option value="1">1-(${service.budget})</option>
										<option value="2">2-(${service.budget*2})</option>
										<option value="3">3-(${service.budget*3})</option>
										<option value="4">4-(${service.budget*4})</option>
										<option value="5">5-(${service.budget*5})</option>
										<option value="6">6-(${service.budget*6})</option>
										<option value="7">7-(${service.budget*7})</option>
										<option value="8">8-(${service.budget*8})</option>
										<option value="9">9-(${service.budget*9})</option>
										<option value="10">10-(${service.budget*10})</option>

									</select>
								</div>
							</div>


							<div class="form-group">
								<div class="col-md-offset-3 col-md-9">
									<button type="submit" class="btn btn-default">placeOrder</button>
								</div>
							</div>
						</form>
					</div>
				</div>


			</div>

		</div>

	</div>


</t:template>
