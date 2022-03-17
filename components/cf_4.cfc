<cfcomponent>
	<cffunction access="public" name="getDates">
		<cfset variables.todayDate = DateFormat(now(),'yyyy-mm-dd')>
        <cfset variables.curdatetime = Now()>
        <cfset variables.todayMonth = month(variables.curdatetime)>
        <cfset variables.monthInfull= DateFormat(variables.curdatetime,"mmmm")>
        <cfset variables.dtThisMonth = CreateDate(Year( Now() ),Month( Now() ),1)/>
        <cfset variables.dtLastDay = (DateAdd( "m", 1, variables.dtThisMonth ) -1)/>
        <cfset variables.dtMonday = (variables.dtLastDay -DayOfWeek( variables.dtLastDay ) +6)/>
        <cfif (Month( dtMonday ) NEQ Month( variables.dtThisMonth ))>
            <cfset dtMonday = (dtMonday - 7) />
        </cfif>
        <cfset Variables.monthEnd = DateFormat(DateAdd("m",1, Now()), "mm/d/yyyy")>
        <cfset Variables.monthEnd = ListSetAt(Variables.monthEnd,2,"1","/")>
        <cfset Variables.monthEnd = DateFormat(DateAdd("d",-1, Variables.monthEnd), "d-mmm-yyyy")>
        <cfset Variables.monthEnd2 = DateFormat(DateAdd("d",-1, Variables.monthEnd), "d-mmm-yyyy")>
        <cfset Variables.monthEnd3 = DateFormat(DateAdd("d",-2, Variables.monthEnd), "d-mmm-yyyy")>
        <cfset Variables.monthEnd4 = DateFormat(DateAdd("d",-3, Variables.monthEnd), "d-mmm-yyyy")>
        <cfset Variables.monthEnd5 = DateFormat(DateAdd("d",-4, Variables.monthEnd), "d-mmm-yyyy")>   
        <cfset  variables.style="color:yellow;">  
        <cfset  variables.style1="color:black;">
        <cfset  variables.style2="color:orange;">
        <cfset  variables.style3="color:red;">
        <cfset  variables.style4="color:green;">
        <cfset result = {
			"todayDate" = variables.todayDate,
			"todayMonth" = variables.todayMonth,
			"monthInfull" = variables.monthInfull,
			"dtMonday" = variables.dtMonday,
			"dtLastDay" = variables.dtLastDay,
			"monthEnd" = Variables.monthEnd,
			"monthEnd2" = Variables.monthEnd2,
            "monthEnd3" = Variables.monthEnd3,
            "monthEnd4" = Variables.monthEnd4,
            "monthEnd5" = Variables.monthEnd5,
            "style" = variables.style,
            "style1" = variables.style1,
            "style2" = variables.style2,
            "style3" = variables.style3,
            "style4" =variables.style4
		}>
		<cfreturn variables.result />
	</cffunction>
</cfcomponent>	 