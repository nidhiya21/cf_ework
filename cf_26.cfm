<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Task 26</title>
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/> 
<link href="./css/welcome.css" rel="stylesheet" type="text/css"/> 
</head>
<body>
    <div class="container">
        <div class="row">
            <h2>Tak 26</h2> 
            <form action="" name="form" method="post" enctype="multipart/form-data" > 
            <div class="form-group col-md-4">
                <label> Description</label>
                <input type = "file" name = "attachment">
            </div><br>
            <div class="form-group col-md-4"> 
                <label></label> 
                <input type="Submit" class="btn btn-success" value="Submit" name="formSubmit">
            </div> 
            </form> 
        </div>
        <cfif structKeyExists(form,'formSubmit')>
            <cfinvoke component="components.cf_26" method="readText" returnvariable="GetWordsAll">
            </cfinvoke>      
            <cfloop query="GetWordsAll">
                <cfif #GetWordsAll.count# GTE 4>
                    <cfset variables.stclass="style1" >
                <cfelseif #GetWordsAll.count# EQ 3>
                    <cfset variables.stclass="style2" >
                <cfelseif #GetWordsAll.count# EQ 2>
                    <cfset variables.stclass="style3" > 
                <cfelse>    
                    <cfset variables.stclass="style4" > 
                </cfif>  
                <cfoutput><p class="#stclass#">- #paragraph#(#count#)<p><br></cfoutput>
            </cfloop>   
        </cfif>                 
    </div>
</body> 
</html>