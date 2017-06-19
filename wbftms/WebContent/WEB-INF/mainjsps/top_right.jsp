<div class="container">
	<div class="header row-fluid">
		<div class="logo">
			<a href="${pageContext.request.contextPath}/"><span>Start</span><span class="icon"></span></a>
		</div>
		<div class="top_right">
			<ul class="nav nav_menu">
				<li class="dropdown"><a class="dropdown-toggle administrator"
					id="dLabel" role="button" data-toggle="dropdown" data-target="#"
					href="../../page.html">
						<div class="title">
						
							<span class="name">${userFirstName} </span><span class="subtitle">${userLastName}</span>
							<span class="name" >${userName}</span>
						</div> <span class="icon"><img src="img/SystemLogo.png"></span>
				</a>
					<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
						<li><a href="${pageContext.request.contextPath}/Profile.bnu?userId=${userId}"><i class=" icon-user"></i> My
								Profile</a></li>
						<li><a href="${pageContext.request.contextPath}/Logout.bnu"><i class=" icon-unlock"></i>Log
								Out</a></li>
					</ul>
		</div>
		<!-- End top-right -->
	</div>