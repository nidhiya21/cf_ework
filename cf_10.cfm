<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/> 
<title>Task 10</title>
</head>
<body>
	<div class="container mt-3">
		<h3>Task 10</h3>
		<div class="row ">
			<cfparam name="form.textKey" default="">
			<cfparam name="form.textVal" default="">
			<form  name="form" action="" method="post">
				<div class="form-group col-md-4">
					<label>Enter Key:</label>
					<input type="text" class="form-control"   name="textKey" id="textKey"/>
				</div>
				<div class="form-group col-md-4">
					<label>Enter Value:</label>
					<input type="textVal" class="form-control" name="textVal" id="textVal"/>
				</div>
				<div class="form-group col-md-4">
					<input type="submit" class="btn btn-primary"  name="formSubmit" value="Update"/>
				</div>
			</form>
		</div>
	</div>
	<cfif structKeyExists(form,"formSubmit")>
		<cfinvoke component="components.cf_7" method="checkStructuresExist" returnvariable="mystruct">
        </cfinvoke> 
		<cfdump var="#Session.mystruct#" > 
	</cfif>
</body>
</html>