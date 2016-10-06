<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Aviation Filter</title>
<link rel="stylesheet" href="css/bootstrap.min.css">

<link href="css/dashboard.css" rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/sidebar.css">
<link rel="stylesheet" href="css/unit-sidebar-wrapper.css">

<script src="js/jquery-1.11.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/menu.js"></script>
<link href="css/dashboard.css" rel="stylesheet">

<link rel="stylesheet" href="css/index.css">
<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<style>
.navbar {
	margin-bottom: 0;
	background-color: #01579B;
	border: 0;
	font-size: 11px !important;
	letter-spacing: 4px;
	font-weight: 600;
	 position: static;
}


</style>

</head>
<body>

	<!-- Top Logo Header -->
	<nav id="home"  class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.jsp">Aviation</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="index.jsp">HOME</a></li>
				<li><a href="#foot">ABOUT ME</a></li>
				<li><a href="#contact">CONTACT US</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<!-- End of Top Logo Header -->

<div class="main_content">
	<div class="main_left">
		
		<div class="left_p1">
					<div class="form-group filter_left_p1">
			<label for="filterName">Filter Name:</label> <input type="text"
				class="form-control" id="filterName" placeholder="Enter filter name">
		</div>
		<hr id="date_line">	
		<div class="form-group date-range ">
			<center><label for="dateRange" class="label_date" style="color: brown;">Date Range</label></center>
			<div class="date_range_select ">
			<label for="fromDate" class="label_date" >From:</label> 
			<input type="date"	class="form-control" style="margin-bottom: 4px;" id="fromDate" >
			 <label for="toDate" class="label_date">To:</label>
				<input type="date" class="form-control " style="margin-bottom: 4px;"  id="toDate">
			</div>
			
		</div>
		
		</div>
	
		<div class="left_p2">
					
		<div class="form-group filter_left_p2">
			<label for="sortBy" class="sort_color">Sort by:</label> <select class="form-control"
				id="sortBy" name="sortBy" onchange="displaySn()">
				<option>--Select--</option>
				<option value="1">Fleet</option>
				<option value="2">Sub Fleet</option>
				<option value="3">ATA System Number</option>
				<option value="4">Tail Number</option>
				<option value="5">Company Part Number</option>
				<option value="6">MFG Number</option>
			</select>
		</div>
		
		<hr id="date_line">	
		
				<div class="checkbox filter-checkbox form-group filter_left2_p2">
				<center><label id="tab-caption">Filter By:</label></center>
			<table class="tab_change">
				
				<tr>
					<td><label><input type="checkbox"
							name="installed Unit">Installed Unit</label></td>
				</tr>

				<tr>
				<td><label><input type="checkbox" name="newUnit">New Unit</label></td>
				</tr>
				<tr>
				<td><label><input type="checkbox" name="nonActiveUnit">Non-Active Unit</label></td>
			   </tr>
				
				
				<tr>
				<td><label><input type="checkbox" name="problemUnit">Problem Unit</label></td>
			   </tr>
				<tr>
				<td><label><input type="checkbox" name="overhauledUnit">Overhauled Unit</label>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				</tr>
				</table>
			</div>
		
		
		</div>
			<div class="left_p3">
			<button type="button" class="btn btn-primary style_btn" style="border-radius: 15px;">Display Component</button>
		
		</div>

	
	</div>

	<div class="main_right">
		<div class="right_header">
		<center><label class="right_label">Unit Based Filter Editor</label></center>
		</div>
		
		<div class="main_content_1">
			<div class="row " id="row_all">
				<div class="col-sm-3">
					<label for="fleet" class="list-label">Fleet</label>
					<form action="form_action.asp">
						<select name="fleet" class="sort_option" style="height: 150px;"
							multiple>
							<option value="volvo">item1</option>
							<option value="volvo">item2</option>
							<option value="volvo">item3</option>
							<option value="volvo">item4</option>
						</select> <br> <input type="reset" value="Clear" class="list-clear-btn">
						<input type="reset" value="Submit" class="list-clear-btn">
					</form>
				</div>
				<div class="col-sm-3">
					<label for="subFleet" class="list-label">Sub-Fleet</label>
					<form action="form_action.asp">
						<select name="subFleet" class="sort_option" style="height: 150px;"
							multiple>
							<option value="volvo">sub-fleet-1</option>
							<option value="volvo">sub-fleet-2</option>
							<option value="volvo">sub-fleet-3</option>
							<option value="volvo">sub-fleet-4</option>
						</select> <br>
						 <input type="reset" value="Clear" class="list-clear-btn">
						 <input type="reset" value="Submit" class="list-clear-btn">
					</form>
				</div>
				<div class="col-sm-3">
					<label for="tailNumber" class="list-label">Tail Numbers</label>
					<form action="form_action.asp">
						<select name="cars" class="sort_option" style="height: 150px;"
							multiple>
							<option value="volvo">tail number -1</option>
							<option value="volvo">tail number -2</option>
						</select> <br><input type="reset" value="Clear" class="list-clear-btn">
						<input type="reset" value="Submit" class="list-clear-btn">
					</form>
				</div>
				<div class="col-sm-3">
					<label for="companyPartNumber" class="list-label">Company
						Part Numbers</label>
					<form action="form_action.asp">
						<select name="companyPartNumber" class="sort_option"
							style="height: 150px;" multiple>
							<option value="volvo">company part-1</option>
							<option value="volvo">company part-2</option>
							<option value="volvo">company part-3</option>
						</select> <br> <input type="reset" value="Clear" class="list-clear-btn">
						<input type="reset" value="Submit" class="list-clear-btn">
					</form>
				</div>
				</div>
	
				<div class="row row_2 " id="row_all" >
					<div class="col-sm-3">
						<label for="mfgPartNumber" class="list-label">MFG Part
							Numbers</label>
						<form action="form_action.asp">
							<select name="mfgPartNumber" class="sort_option"
								style="height: 150px;" multiple>
								<option value="volvo">Volvo</option>
							</select> <br> <input type="reset" value="Clear" class="list-clear-btn">
							<input type="reset" value="Submit" class="list-clear-btn">
						</form>
					</div>
					<div class="col-sm-3">
						<label for="ataSystemNumber" class="list-label">ATA System
							Numbers</label>
						<form action="form_action.asp">
							<select name="ataSystemNumber" class="sort_option"
								style="height: 150px;" multiple>
								<option value="volvo">number-1</option>
								<option value="volvo">number-2</option>
							</select> <br><input type="reset" value="Clear" class="list-clear-btn">
							<input type="reset" value="Submit" class="list-clear-btn">
						</form>
					</div>
					<div class="col-sm-3">
						<label for="serialNumber" class="list-label">Serial
							Numbers</label>
						<form action="form_action.asp">
							<select name="serialNuber" class="sort_option"
								style="height: 150px;" multiple>
								<option value="volvo">serial-1</option>
								<option value="volvo">serial-2</option>
							</select> <br><input type="reset" value="Clear" class="list-clear-btn">
							<input type="reset" value="Submit" class="list-clear-btn">
						</form>
					</div>
				</div>
			</div>
		
		
		
		<div class="bottom_btn">
					<div class="button_top">
				<div class="row text-center header_btn">
					<div class="col-sm-4">
						<button type="button" class="btn btn-primary_1">
							Recent <br>Filter
						</button>
					</div>
					<div class="col-sm-4">
						<button type="button" class="btn btn-primary_1">
							Load Saved <br>Filter
						</button>
					</div>
					<div class="col-sm-4">

						<button type="button" class="btn btn-primary_1">
							Default <br>Filter
						</button>
					</div>
				</div>
			</div>
			
			
			
			<div>
				<div class="row text-center" style="padding: 5px;">
					<div class="col-sm-4">
						<button type="button" class="btn btn-primary_1">Save Filter</button>
					</div>
					<div class="col-sm-4">
						<button type="button" class="btn btn-primary_1">Save As
							Default</button>
					</div>
					<div class="col-sm-4">
						<button type="button" class="btn btn-primary_1">Clear All</button>
					</div>
				</div>
			</div>
			
		</div>
		

	
	
	
	
	</div>

	



</body>
</html>