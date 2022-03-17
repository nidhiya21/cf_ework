<cfcomponent output="false"> 
    <cffunction name="empList" access="public">
           <cfset  variables.qryResult = queryExecute("SELECT * FROM employee")>
        <cfreturn variables.qryResult>
    </cffunction>
</cfcomponent>
