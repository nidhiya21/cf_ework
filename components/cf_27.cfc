 <cfcomponent>
   <cffunction name="getUsers" access="public" output="false" returntype="query">		     
        <cfquery name="local.getUsersDet">
            SELECT *
            FROM users
            WHERE username = '#FORM.username#'
            AND password = '#FORM.password#'
        </cfquery>
        <cfreturn local.getUsersDet />
    </cffunction>
</cfcomponent>