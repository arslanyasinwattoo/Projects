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
			<link rel="stylesheet"
				href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
			<script src="//code.jquery.com/jquery-1.10.2.js"></script>
			<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
			<link rel="stylesheet" href="/resources/demos/style.css">
			<style>
.custom-combobox {
	position: relative;
	display: inline-block;
}

.custom-combobox-toggle {
	position: absolute;
	top: 0;
	bottom: 0;
	margin-left: -1px;
	padding: 0;
}

.custom-combobox-input {
	margin: 0;
	padding: 5px 10px;
}
</style>
			<script>
				(function($) {
					$
							.widget(
									"custom.combobox",
									{
										_create : function() {
											this.wrapper = $("<span>")
													.addClass("custom-combobox")
													.insertAfter(this.element);

											this.element.hide();
											this._createAutocomplete();
											this._createShowAllButton();
										},

										_createAutocomplete : function() {
											var selected = this.element
													.children(":selected"), value = selected
													.val() ? selected.text()
													: "";

											this.input = $("<input>")
													.appendTo(this.wrapper)
													.val(value)
													.attr("title", "")
													.addClass(
															"custom-combobox-input ui-widget ui-widget-content ui-state-default ui-corner-left")
													.autocomplete(
															{
																delay : 0,
																minLength : 0,
																source : $
																		.proxy(
																				this,
																				"_source")
															})
													.tooltip(
															{
																tooltipClass : "ui-state-highlight"
															});

											this
													._on(
															this.input,
															{
																autocompleteselect : function(
																		event,
																		ui) {
																	ui.item.option.selected = true;
																	this
																			._trigger(
																					"select",
																					event,
																					{
																						item : ui.item.option
																					});
																},

																autocompletechange : "_removeIfInvalid"
															});
										},

										_createShowAllButton : function() {
											var input = this.input, wasOpen = false;

											$("<a>")
													.attr("tabIndex", -1)
													.attr("title",
															"Show All Items")
													.tooltip()
													.appendTo(this.wrapper)
													.button(
															{
																icons : {
																	primary : "ui-icon-triangle-1-s"
																},
																text : false
															})
													.removeClass(
															"ui-corner-all")
													.addClass(
															"custom-combobox-toggle ui-corner-right")
													.mousedown(
															function() {
																wasOpen = input
																		.autocomplete(
																				"widget")
																		.is(
																				":visible");
															})
													.click(
															function() {
																input.focus();

																// Close if already visible
																if (wasOpen) {
																	return;
																}

																// Pass empty string as value to search for, displaying all results
																input
																		.autocomplete(
																				"search",
																				"");
															});
										},

										_source : function(request, response) {
											var matcher = new RegExp(
													$.ui.autocomplete
															.escapeRegex(request.term),
													"i");
											response(this.element
													.children("option")
													.map(
															function() {
																var text = $(
																		this)
																		.text();
																if (this.value
																		&& (!request.term || matcher
																				.test(text)))
																	return {
																		label : text,
																		value : text,
																		option : this
																	};
															}));
										},

										_removeIfInvalid : function(event, ui) {

											// Selected an item, nothing to do
											if (ui.item) {
												return;
											}

											// Search for a match (case-insensitive)
											var value = this.input.val(), valueLowerCase = value
													.toLowerCase(), valid = false;
											this.element
													.children("option")
													.each(
															function() {
																if ($(this)
																		.text()
																		.toLowerCase() === valueLowerCase) {
																	this.selected = valid = true;
																	return false;
																}
															});

											// Found a match, nothing to do
											if (valid) {
												return;
											}

											// Remove invalid value
											this.input
													.val("")
													.attr(
															"title",
															value
																	+ " didn't match any item")
													.tooltip("open");
											this.element.val("");
											this._delay(function() {
												this.input.tooltip("close")
														.attr("title", "");
											}, 2500);
											this.input.autocomplete("instance").term = "";
										},

										_destroy : function() {
											this.wrapper.remove();
											this.element.show();
										}
									});
				})(jQuery);

				$(function() {
					$("#combobox").combobox();
					$("#toggle").click(function() {
						$("#combobox").toggle();
					});
				});
			</script>




			<div id="toast-container" class="toast-bottom-full-width"
				aria-live="polite" role="alert">
				<div class="toast toast-success">
					<div class="toast-message">Updated Successfully</div>
				</div>
			</div>
		</c:when>
	</c:choose>

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
				<span>Publish</span>Testimonials
			</h2>
			<ul class="l-box-options">
				<li><a href="#"><i class="fa fa-cogs"></i></a></li>
				<li><a href="#" data-ason-type="fullscreen"
					data-ason-target=".l-box" data-ason-content="true"
					class="ason-widget"></a></li>
				<li><a href="#" data-ason-type="refresh"
					data-ason-target=".l-box" data-ason-duration="1000"
					class="ason-widget"><i class="fa fa-rotate-right"></i></a></li>
				<li><a href="#" data-ason-type="toggle" data-ason-find=".l-box"
					data-ason-target=".l-box-body" data-ason-content="true"
					data-ason-duration="200" class="ason-widget"></a></li>
				<li><a href="#" data-ason-type="delete"
					data-ason-target=".l-box" data-ason-content="true"
					data-ason-animation="fadeOut" class="ason-widget"></a></li>
			</ul>
		</div>
		<div class="l-box-body l-spaced">
			<form
				action="${pageContext.request.contextPath}/admin/SaveTestimonials.io"
				method="Post" role="form" class="form-horizontal">
				<div class="form-group">

					<label for="inputEmail3" class="col-md-3 control-label">Testimonial
						Details</label>
					<div class="col-md-9">
						<input id="details" name="details" type="text"
							placeholder="News Subject" class="form-control">
					</div>
				</div>
				
				<div class="form-group">

					<label for="inputEmail3" class="col-md-3 control-label">Select
						UserName</label>
					<div class="col-md-9">
						<div class="ui-widget">
							<select id="combobox" name="users">
								<option value="">Select User</option>
								<c:forEach items="${list}" var="loc">
									<option value="${loc.id.usersId}">${loc.id.username}</option>
								</c:forEach>
							</select>
						</div>
					</div>
				</div>



				<div class="form-group">
					<div class="col-md-offset-3 col-md-9">
						<button type="submit" class="btn btn-default">Publish</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</t:template>