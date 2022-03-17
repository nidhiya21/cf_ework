<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/> 
<title>Task 7</title>
</head>
<body>
	<div class="container mt-3">
		<h3>Task 7</h3>
		<div class="row ">	
			<cfparam name="form.textKey" default="">
			<cfparam name="form.textVal" default="">
			<form  name="form" action="" method="post">
				<div class="form-group col-md-3">
					<label>Enter Key:</label>
					<input type="text" class="form-control"   name="textKey" id="textKey"/>
					<br/>
				</div>
					<div class="form-group col-md-3">
					<label>	Enter Value:</label>
					<input type="textVal" class="form-control"  name="textVal" id="textVal"/>
					<br/>
				</div>
				<div class="form-group col-md-3">
					<input type="submit" class="btn btn-primary"  name="formSubmit" value="Update"/>
				</div>
			</form>
		</div>
	</div>
	<cfif structKeyExists(form,"formSubmit")>
		
		        <cfset session.box_status = arrayNew(1) />
<cfset session.box_status[1] = structNew() />
<cfset session.box_status[1][textKey = 'ok' />
<cfset session.box_status[1].textVal = 'ok1' />
<cfloop from="1" to="#arrayLen(session.box_status)#" index="i">
  <cfset session.box_status[i].textKey = ArrayAppend(session.box_status,'god') />
  <cfset session.box_status[i].textVal = ArrayAppend(session.box_status,'god2') />

</cfloop>
				<cfdump var="#Session.box_status#" > 
	</cfif>
</body>
</html>