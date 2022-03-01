<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Task 4</title>
</head>
<body>
    <div class="container mt-3">
        <h2>Task 4</h2>
        <cfscript>
        todayDate = DateFormat(now(),'yyyy-mm-dd') 
        curdatetime = Now();
        todayMonth = month(curdatetime); 
        monthInfull= DateFormat(curdatetime,"mmmm") 
        </cfscript>
        <cfoutput>
          <b>  Today's Date :</b> #todayDate# <br>
          <b>  Today's Month(Numeric) </b>: #todayMonth#<br>
          <b>  Today's Month(Full) </b>: #monthInfull#<br>
        </cfoutput>
        <cfset dtThisMonth = CreateDate(
            Year( Now() ),
            Month( Now() ),
            1
            )/>
        <cfset dtLastDay = (
            DateAdd( "m", 1, dtThisMonth ) -
            1
            )/>
        <cfset dtMonday = (
            dtLastDay -
            DayOfWeek( dtLastDay ) +
            6
            )/>
        <cfif (Month( dtMonday ) NEQ Month( dtThisMonth ))>
            <cfset dtMonday = (dtMonday - 7) />
        </cfif>
        <cfoutput>
            <b> Last Friday Of Month:</b> #DateFormat( dtMonday, "full" )# <br>
            <b>  Last Day Of Month: </b> #DateFormat(dtLastDay, "full" )# <br>
        </cfoutput>
        <cfset Variables.monthEnd = DateFormat(DateAdd("m",1, Now()), "mm/d/yyyy")>
        <cfset Variables.monthEnd = ListSetAt(Variables.monthEnd,2,"1","/")>
        <cfset Variables.monthEnd = DateFormat(DateAdd("d",-1, Variables.monthEnd), "d-mmm-yyyy")>
        <cfset Variables.monthEnd2 = DateFormat(DateAdd("d",-1, Variables.monthEnd), "d-mmm-yyyy")>
        <cfset Variables.monthEnd3 = DateFormat(DateAdd("d",-2, Variables.monthEnd), "d-mmm-yyyy")>
        <cfset Variables.monthEnd4 = DateFormat(DateAdd("d",-3, Variables.monthEnd), "d-mmm-yyyy")>
        <cfset Variables.monthEnd5 = DateFormat(DateAdd("d",-4, Variables.monthEnd), "d-mmm-yyyy")>
        <cfoutput><b>Last 5 days : <p style="color:black;">#Variables.monthEnd# -  #DateFormat(Variables.monthEnd,"dddd")#</p> </b>
            <p style="color:yellow;">#Variables.monthEnd2# -  #DateFormat(Variables.monthEnd2,"dddd")#</p>
            <p style="color:orange;"> #Variables.monthEnd3# -  #DateFormat(Variables.monthEnd3,"dddd")#</p>
            <p style="color:green;"> #Variables.monthEnd4# -  #DateFormat(Variables.monthEnd4,"dddd")#</p>
            <p style="color:red;"> #Variables.monthEnd5# -  #DateFormat(Variables.monthEnd5,"dddd")#</p><br>
         </cfoutput>
    </div>
   
</body>
</html>
