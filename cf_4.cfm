<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/> 
<title>Task 4</title>
</head>
<body>
    <div class="container mt-3">
        <cfoutput>
            <h2>Task 4</h2>
                <cfinvoke component="components.cf_4" method="getDates" returnvariable="result"> 
                </cfinvoke>  
                <b>  Today's Date :</b> #result.todayDate# <br>
                <b>  Today's Month(Numeric) </b>: #result.todayMonth#<br>
                <b>  Today's Month(Full) </b>: #result.monthInfull#<br>
                <b>  Last Friday Of Month:</b> #DateFormat( result.dtMonday, "full" )# <br>
                <b>  Last Day Of Month: </b> #DateFormat(result.dtLastDay, "full" )# <br>
                <b>  Last 5 days :    
                <p style="#result.style#">#result.monthEnd# -  #DateFormat(result.monthEnd,"dddd")#</p> </b>
                <p style="#result.style1#">#result.monthEnd2# - #DateFormat(result.monthEnd2,"dddd")#</p>
                <p style="#result.style2#">#result.monthEnd3# -  #DateFormat(result.monthEnd3,"dddd")#</p>
                <p style="#result.style3#">#result.monthEnd4# -  #DateFormat(result.monthEnd4,"dddd")#</p>
                <p style="#result.style4#">#result.monthEnd5# -  #DateFormat(result.monthEnd5,"dddd")#</p><br>
        </cfoutput>
    </div>  
</body>
</html>
