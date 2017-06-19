<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="sidebar" class="">
	<div class="scrollbar">
		<div class="track">
			<div class="thumb">
				<div class="end"></div>
			</div>
		</div>
	</div>

	<div class="viewport ">
		<div class="overview collapse">

			<c:choose>
				<c:when
					test="${(role1=='Admin') || (role2=='Admin') || (role3=='Admin')}">
					<ul id="sidebar_menu" class="navbar nav nav-list container full">
						<li class="accordion-group active color_4"><a
							class="dashboard " href="Home.bnu"><img
								src="img/menu_icons/dashboard.png"><span>Home</span></a></li>
						<li class="accordion-group color_7"><a
							class="accordion-toggle widgets collapsed "
							data-toggle="collapse" data-parent="#sidebar_menu"
							href="index.htm#collapse1"> <img
								src="img/menu_icons/forms.png"><span>Manage Expense</span></a>
							<ul id="collapse1" class="accordion-body collapse">
								<li><a href="ExpenseType.bnu">Expense Type</a></li>
								<li><a href="ExpenseSubType.bnu">Expense Sub Type</a></li>

							</ul></li>
						<li class="accordion-group color_3"><a
							class="accordion-toggle widgets collapsed" data-toggle="collapse"
							data-parent="#sidebar_menu" href="index.htm#collapse2"> <img
								src="img/menu_icons/widgets.png"><span>Manage Crop
									Info</span></a>
							<ul id="collapse2" class="accordion-body collapse">
								<li><a href="CropInfo.bnu">Crop Info</a></li>
							</ul></li>
						<li class="color_13"><a class="widgets" href="ManageUser.bnu">
								<img src="img/menu_icons/calendar.png"><span>Manage
									Users</span>
						</a></li>
						<li class="color_10"><a class="widgets"
							data-parent="#sidebar_menu" href="AdminReports.bnu"> <img
								src="img/menu_icons/maps.png"><span>Reports</span></a></li>
					</ul>
				</c:when>


			</c:choose>
			<c:choose>
				<c:when
					test="${(role1=='Broker') || (role2=='Broker') || (role3=='Broker')}">
					<ul id="sidebar_menu" class="navbar nav nav-list container full">
						<li class="accordion-group active color_4"><a
							class="dashboard " href="Home.bnu"><img
								src="img/menu_icons/dashboard.png"><span>Home</span></a></li>
						<li class="accordion-group color_25"><a
							class="accordion-toggle widgets collapsed" data-toggle="collapse"
							data-parent="#sidebar_menu" href="index.htm#collapse5"> <img
								src="img/menu_icons/others.png"><span>Manage
									Transaction</span></a>
							<ul id="collapse5" class="accordion-body collapse">
								<li><a href="ManageTransaction.bnu?userId=${userId}">Transaction</a></li>
								<li><a href="ViewTransaction.bnu?userId=${userId}">View
										Transactions</a></li>

							</ul></li>
						<li class="accordion-group color_3"><a
							class="accordion-toggle widgets collapsed" data-toggle="collapse"
							data-parent="#sidebar_menu" href="index.htm#collapse2"> <img
								src="img/menu_icons/widgets.png"><span>Manage
									Accounts</span></a>
							<ul id="collapse2" class="accordion-body collapse">
								<li><a href="ManageAccounts.bnu?userId=${userId}">Accounts</a></li>
								<li><a href="BlockedAccounts.bnu?userId=${userId}">Blocked
										Accounts</a></li>
								<li><a href="ViewAccountLedger.bnu?userId=${userId}">Account
										Ledger</a></li>
							</ul></li>
						<li class="accordion-group color_19"><a
							class="accordion-toggle widgets collapsed" data-toggle="collapse"
							data-parent="#sidebar_menu" href="index.htm#collapse4"> <img
								src="img/menu_icons/statistics.png"><span>Manage
									Manage Sale Records</span></a>
							<ul id="collapse4" class="accordion-body collapse">
								<li><a href="CropSales.bnu?userId=${userId}">Add Sale</a></li>
								<li><a href="PreviousCropProfiles.bnu?userId=${userId}">View
										Sales</a></li>

							</ul></li>
						<li class="color_24"><a class="widgets"
							data-parent="#sidebar_menu"
							href="ViewARAndAP.bnu?userId=${userId}"> <img
								src="img/menu_icons/grid.png"><span>Account
									Recievable & Payable</span></a></li>

						<li class="color_10"><a class="widgets"
							data-parent="#sidebar_menu" href="AdminReports.bnu"> <img
								src="img/menu_icons/maps.png"><span>Reports</span></a></li>
					</ul>
				</c:when>
			</c:choose>

			<c:choose>
				<c:when
					test="${(role1=='LandLord') || (role2=='LandLord') || (role3=='LandLord')}">
					<ul id="sidebar_menu" class="navbar nav nav-list container full">
						<li class="accordion-group active color_4"><a
							class="dashboard " href="Home.bnu"><img
								src="img/menu_icons/dashboard.png"><span>Home</span></a></li>
						<li class="accordion-group color_25"><a
							class="accordion-toggle widgets collapsed" data-toggle="collapse"
							data-parent="#sidebar_menu" href="index.htm#collapse5"> <img
								src="img/menu_icons/others.png"><span>Manage
									Transaction</span></a>
							<ul id="collapse5" class="accordion-body collapse">
								<li><a href="ManageLTransaction.bnu?userId=${userId}">Record Crop Expense</a></li>
								<li><a href="ManageTransaction.bnu?userId=${userId}">Transaction</a></li>
								<li><a href="ViewLTransaction.bnu?userId=${userId}">View
										Transactions</a></li>

							</ul></li>
						<li class="accordion-group color_3"><a
							class="accordion-toggle widgets collapsed" data-toggle="collapse"
							data-parent="#sidebar_menu" href="index.htm#collapse2"> <img
								src="img/menu_icons/widgets.png"><span>Manage
									Accounts</span></a>
							<ul id="collapse2" class="accordion-body collapse">
								<li><a href="ManageAccounts.bnu?userId=${userId}">Accounts</a></li>
								<li><a href="BlockedAccounts.bnu?userId=${userId}">Blocked
										Accounts</a></li>
								<li><a href="ViewAccountLedger.bnu?userId=${userId}">Account
										Ledger</a></li>
							</ul></li>
						<li class="accordion-group color_19"><a
							class="accordion-toggle widgets collapsed" data-toggle="collapse"
							data-parent="#sidebar_menu" href="index.htm#collapse4"> <img
								src="img/menu_icons/statistics.png"><span>Manage
									Crop Profile</span></a>
							<ul id="collapse4" class="accordion-body collapse">
								<li><a href="CropProfile.bnu?userId=${userId}">Crop
										Profile</a></li>
								<li><a href="PreviousCropProfiles.bnu?userId=${userId}">Finished
										profiles</a></li>
								<li><a href="DeletedCropProfiles.bnu?userId=${userId}">Deleted
										profiles</a></li>
							</ul></li>
						<li class="accordion-group color_7"><a
							class="accordion-toggle widgets collapsed "
							data-toggle="collapse" data-parent="#sidebar_menu"
							href="index.htm#collapse1"> <img
								src="img/menu_icons/forms.png"><span>Manage
									Inventory</span></a>
							<ul id="collapse1" class="accordion-body collapse">
								<li><a href="ManageInventory.bnu?userId=${userId}">Inventory</a></li>
								<li><a href="BlockedInventory.bnu?userId=${userId}">Deleted
										Items</a></li>

							</ul></li>
						<li class="color_24"><a class="widgets"
							data-parent="#sidebar_menu"
							href="ViewARAndAP.bnu?userId=${userId}"> <img
								src="img/menu_icons/grid.png"><span>Account
									Recievable & Payable</span></a></li>
						<li class="color_10"><a class="widgets"
							data-parent="#sidebar_menu" href="AdminReports.bnu"> <img
								src="img/menu_icons/maps.png"><span>Reports</span></a></li>
						<li class="color_8"><a class="widgets"
							data-parent="#sidebar_menu"
							href="TallyLogin.bnu?userId=${userId}"> <img
								src="img/menu_icons/gallery.png"><span>Tally
									Records</span>
						</a></li>
					</ul>

				</c:when>
			</c:choose>
			<div class="menu_states row-fluid container ">
				<h2 class="pull-left">Menu Settings</h2>
				<div class="options pull-right">
					<button id="menu_state_1" class="color_4" rel="tooltip"
						data-state="sidebar_icons" data-placement="top"
						data-original-title="Icon Menu">1</button>
					<button id="menu_state_2" class="color_4 active" rel="tooltip"
						data-state="sidebar_default" data-placement="top"
						data-original-title="Fixed Menu">2</button>
					<button id="menu_state_3" class="color_4" rel="tooltip"
						data-placement="top" data-state="sidebar_hover"
						data-original-title="Floating on Hover Menu">3</button>
				</div>
			</div>

			<!-- End sidebar_box -->
		</div>
	</div>