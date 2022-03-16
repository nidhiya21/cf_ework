<cfcomponent>
	<cffunction access="public" name="getDates">
		<cfset todayDate = DateFormat(now(),'yyyy-mm-dd')>
        <cfset curdatetime = Now()>
        <cfset todayMonth = month(curdatetime)>
        <cfset monthInfull= DateFormat(curdatetime,"mmmm")>
        <cfset dtThisMonth = CreateDate(Year( Now() ),Month( Now() ),1)/>
        <cfset dtLastDay = (DateAdd( "m", 1, dtThisMonth ) -1)/>
        <cfset dtMonday = (dtLastDay -DayOfWeek( dtLastDay ) +6)/>
        <cfif (Month( dtMonday ) NEQ Month( dtThisMonth ))>
            <cfset dtMonday = (dtMonday - 7) />
        </cfif>
        <cfset Variables.monthEnd = DateFormat(DateAdd("m",1, Now()), "mm/d/yyyy")>
        <cfset Variables.monthEnd = ListSetAt(Variables.monthEnd,2,"1","/")>
        <cfset Variables.monthEnd = DateFormat(DateAdd("d",-1, Variables.monthEnd), "d-mmm-yyyy")>
        <cfset Variables.monthEnd2 = DateFormat(DateAdd("d",-1, Variables.monthEnd), "d-mmm-yyyy")>
        <cfset Variables.monthEnd3 = DateFormat(DateAdd("d",-2, Variables.monthEnd), "d-mmm-yyyy")>
        <cfset Variables.monthEnd4 = DateFormat(DateAdd("d",-3, Variables.monthEnd), "d-mmm-yyyy")>
        <cfset Variables.monthEnd5 = DateFormat(DateAdd("d",-4, Variables.monthEnd), "d-mmm-yyyy")>   
        <cfset  style="color:yellow;">  
        <cfset  style1="color:black;">
        <cfset  style2="color:orange;">
        <cfset  style3="color:red;">
        <cfset  style4="color:green;">
        <cfset result = {
			"todayDate" = todayDate,
			"todayMonth" = todayMonth,
			"monthInfull" = monthInfull,
			"dtMonday" = dtMonday,
			"dtLastDay" = dtLastDay,
			"monthEnd" = Variables.monthEnd,
			"monthEnd2" = Variables.monthEnd2,
            "monthEnd3" = Variables.monthEnd3,
            "monthEnd4" = Variables.monthEnd4,
            "monthEnd5" = Variables.monthEnd5,
            "style" = style,
            "style1" = style1,
            "style2" = style2,
            "style3" = style3,
            "style4" =style4
		}>

		<cfreturn result />
	</cffunction>
</cfcomponent>	 