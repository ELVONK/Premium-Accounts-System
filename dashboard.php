<?php //include 'layout/prof.php';?>
<?php 
session_start();
include('includes/config.php');
include 'layout/header.php';

include 'layout/leftbar.php';
 ?>


<div class="wrapper">
  	<div class="content-wrapper">
	    <section class="content-header">
	      <h1>
	        DAILY STATISTICS       
	      </h1>
	      <ol class="breadcrumb">
	        <li><a href="dashboard.php"><i class="fa fa-dashboard"></i>WELCOME TO</a></li>
	        <li class="active">Premium Shuttle Limited</li>
	      </ol>
	    </section>
	    <!-- Main content -->
	    <section class="content">
	        <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12">
                  <div class="info-box">
                    <span class="info-box-icon bg-aqua"><i class="fa fa-bus"></i></span>
        
                    <div class="info-box-content">
                      <span class="info-box-text">TRIPS</span>
					  
					  <?php 
$sql ="SELECT indextrip from trip";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$bg=$query->rowCount();
?>
					  
                      <span class="info-box-number"><?php echo htmlentities($bg);?></span>
                    </div>
                    <!-- /.info-box-content -->
                  </div>
                  <!-- /.info-box -->
                </div>
                <!-- /.col -->
                <div class="col-md-3 col-sm-6 col-xs-12">
                  <div class="info-box">
                    <span class="info-box-icon bg-red"><i class="fa fa-map"></i></span>
        
                    <div class="info-box-content">
                      <span class="info-box-text">COMMISSION</span>
					  					  <?php 
										  include('depend/connectfile.php');

$sums = mysqli_query($conn, "SELECT SUM(commission) as totalcomm FROM trip");
            		                while ($totals = mysqli_fetch_assoc($sums)) {
?>
					  
                      <span class="info-box-number"><?php echo $totals['totalcomm']; ?></span>
					   <?php  } ?>
                    </div>
                    <!-- /.info-box-content -->
                  </div>
                  <!-- /.info-box -->
                </div>
                <!-- /.col -->
        
                <!-- fix for small devices only -->
                <div class="clearfix visible-sm-block"></div>
        
                <div class="col-md-3 col-sm-6 col-xs-12">
                  <div class="info-box">
                    <span class="info-box-icon bg-green"><i class="fa fa-bank"></i></span>
        
                    <div class="info-box-content">
                      <span class="info-box-text">INCOME</span>
  					  <?php 
					   include('depend/connectfile.php');
$sums = mysqli_query($conn, "SELECT SUM(banked) as totalincome FROM accounts");
            		                while ($totals = mysqli_fetch_assoc($sums)) {
?>
                    <span class="info-box-number"><?php echo $totals['totalincome']; ?></span>
					<?php  } ?>
                    </div>
                    <!-- /.info-box-content -->
                  </div>
                  <!-- /.info-box -->
                </div>
                <!-- /.col -->
                <div class="col-md-3 col-sm-6 col-xs-12">
                  <div class="info-box">
                    <span class="info-box-icon bg-yellow"><i class="fa fa-money"></i></span>
        
                    <div class="info-box-content">
                      <span class="info-box-text">EXPENSES</span>
 <?php 
					   include('depend/connectfile.php');
$sums = mysqli_query($conn, "SELECT SUM(total_expense) as totalexpense FROM psvexpense");
            		                while ($totals = mysqli_fetch_assoc($sums)) {
?>
                    <span class="info-box-number"><?php echo $totals['totalexpense']; ?></span>
					<?php  } ?>
                    </div>
                    <!-- /.info-box-content -->
                  </div>
                  <!-- /.info-box -->
                </div>
                <!-- /.col -->
              </div>
	    	
	    </section>
	</div>
</div>
<?php 
include 'layout/scripts.php';
include 'layout/footer.php';
 ?>