<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/> 
<link href="./css/welcome.css" rel="stylesheet" type="text/css"/> 
<title>Task 25-3</title>
</head>
<body>  
    <div class="container mt-3">
        <cfset GetWordsAll = application.tagcloud.GetWordsAll() />
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
            <cfoutput><p class="#stclass#">- #GetWordsAll.paragraph#(#GetWordsAll.count#)<p><br></cfoutput>
        </cfloop>  
    </div> 
</body>
</html>
