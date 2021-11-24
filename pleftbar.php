<div class="wrapper">
  <header class="main-header">
    <!-- Logo -->
    <a href="dashboard.php" class="logo">
      <span class="logo-mini"><b>P.</b><b>S.</b><b>V</b></span>
      <span class="logo-lg " ><b>Premium Shuttle</b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>

      <!--div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less--
          <li class="dropdown messages-menu">
           
          </li>
          

          <!-- User Account: style can be found in dropdown.less --
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
 <i class="fa fa-user"></i>&nbsp; <?php echo htmlentities($_SESSION['alogin']);?> <i class="fa fa-angle-down hidden-side"></i></a>
            </a>
            <ul class="dropdown-menu">
              <!-- User image --
		<ul class="ts-profile-nav">
			

				<ul>
			<ul><a href="profile.php"><i class="fa fa-user"></i> &nbsp;Profile</a>
			</ul>
			<ul><a href="feedback.php"><i class="fa fa-envelope"></i> &nbsp;Feedback</a>
			</ul>
			<ul><a href="notification.php"><i class="fa fa-bell"></i> &nbsp;Notification<sup style="color:red">*</sup></a>
			</ul>
			<ul><a href="messages.php"><i class="fa fa-envelope"></i> &nbsp;Messages</a>
			</ul>
			<ul><a href="change-password.php"><i class="fa fa-lock"></i>Change Password</a></li>
				</ul>
			<ul><a href="logout.php"><i class="fa fa-sign-out"></i>Logout</a></ul>
		</ul>
			 
            </ul>
          
          
        </ul>
      </div-->
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
   <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel --><a href="#">
             
      <ul class="sidebar-menu" data-widget="tree"> 
        
       
        <li class="treeview">
          <a href="#">
            <i class="fa fa-users"></i>
            <span>HR Office</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="users/shareholders.php"><i class="fa fa-user-plus"></i> Shareholders</a></li>
            <li><a href="users/drivers.php"><i class="fa fa-user-plus"></i> Drivers</a></li>
            <li ><a href="users/staff.php"><i class="fa fa-user-plus"></i> Staff</a></li>
            <li><a href="users/admins.php"><i class="fa fa-user-plus"></i> Admins</a></li>
            <li><a href="users/advancepay.php"><i class="fa fa-money"></i> Advance Payments</a></li>
             <li><a href="users/loans.php"><i class="fa fa-money"></i> Loans</a></li>
             <li><a href="users/staffpayroll.php"><i class="fa fa-money"></i> Staff Payroll</a></li>
             <li><a href="Reports/dpayroll.php"><i class="fa fa-money"></i>Drivers Payroll</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-bus"></i>
            <span>Front Office</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="inventory/vehicles.php"><i class="fa fa-bus"></i> Vehicles</a></li>
             <li><a href="inventory/trip.php"><i class="fa  fa-road"></i> Trip</a></li>
             <li><a href="inventory/parcels.php"><i class="fa fa-envelope"></i> Parcels</a></li>
            <li><a href="routes/route.php"><i class="fa  fa-road"></i> Routes</a></li>
            
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-money"></i>
            <span>Expenses</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="accounts/accounts.php"><i class="fa fa-bus"></i> PSV Banked Amnt</a></li>
             <li><a href="accounts/parcelcom.php"><i class="fa fa-bus"></i> Parcel-Comm Revenue</a></li>
              <li><a href="accounts/psvexpense.php"><i class="fa fa-bus"></i> PSV Expense</a></li>
             <li><a href="accounts/administrative.php"><i class="fa fa-bus"></i> Administrative Expenses</a></li>
              
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-bank"></i>
            <span>Accounts</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="accounts/accounts.php"><i class="fa fa-bus"></i> Chart of Accounts</a></li>
             <li><a href="suppliers/supplier.php"><i class="fa fa-bus"></i> Suppliers</a></li>
             <li><a href="suppliers/bills.php"><i class="fa fa-bus"></i> Bills</a></li>
              <li><a href="accounts/psvexpense.php"><i class="fa fa-bus"></i> Balance Sheet</a></li>
              
          </ul>
        </li>
    <li class="treeview">
          <a href="#">
            <i class="fa fa-bus"></i>
            <span> Reports</span> 
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
             <li><a href="Reports/expenses.php"><i class="fa fa-bus"></i> Expenses</a></li>
            <li><a href="Reports/balancesheet.php"><i class="fa fa-bus"></i> Balance Sheet</a></li>
            <li><a href="Reports/incomestat.php"><i class="fa fa-bus"></i> Income Statement</a></li>
          </ul>
          </a>          
        </li>
                
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>
