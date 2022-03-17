<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Task 19</title>
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/>    
</head>
<body>
       <h2>Task 19</h2>
        <div class="container">
            <form action="cf_19.cfm" name="form" method="post"> 
                 <input type="submit" value="Next Page" class="btn btn-success" name="nextpage">
            </form>  
               <cfif StructKeyExists(Form,'nextpage')>           
                         <cfinvoke component="components.cf_19" method="cookieCnt" returnvariable="result">  
                         </cfinvoke>
                         <cfoutput>You clicked <b>#result#</b> times</cfoutput> 
               </cfif> 
           
        </div> 
</body> 
</html>