<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Task 17</title>
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="./css/welcome.css" rel="stylesheet" type="text/css"/>
<script src="./js/cf_17.js"></script>
</head>
<body>     
    <div class="container">
        <div class="row">
            <h2>Tak 17</h2>
            <cfparam name="form.text1" default="0"> 
            <form action="cf_17.cfm" name="form"  method="post" onsubmit="return checkit()"> 
                <div class="form-group col-md-4">
                    <label>Enter number</label>
                    <input type="text" name="text1" id="text1"  class="form-control"> 
                </div><br>
                <div class="form-group col-md-4"> 
                    <label></label> 
                    <input type="Submit" class="btn btn-success" value="Submit" name="formSubmit">
                </div> 
            </form> 
        </div>
        <cfif (isDefined("form.text1"))> 
            <cfloop from="1" to=#form.text1# index="idx" step = "1"> 
                <cfinvoke component="components.cf_17" method="numberList" returnvariable="result">  
                <cfinvokeargument name="num" value=#idx#/> 
                </cfinvoke> 
                <cfif result.status eq "even">
                    <cfset variables.stclass="styleGreen" >
                <cfelse>
                    <cfset variables.stclass="styleBlue" >
                </cfif>
                <cfoutput>
                <span class="#stclass#"> #result.idx#  </span><br>
                </cfoutput>
            </cfloop>
        </cfif>       
    </div>
</body> 
</html>