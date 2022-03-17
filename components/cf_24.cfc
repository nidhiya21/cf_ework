<cfcomponent>
    <cffunction name="searchUser" access="remote" returnFormat="JSON">
        <cfargument name="useremail" type="any" required="true">
        <cfquery name="local.searchUserMail">
                SELECT username
                        FROM subscribers 
                WHERE useremail = <cfqueryparam cfsqltype="cf_sql_varchar"  value="#arguments.useremail#">             
        </cfquery> 
        <cfset variables.cfcResults = searchUserMail.recordcount>
        <cfif  variables.cfcResults NEQ 0>
    <!---       <cfset cfcResults1.status = "400"> --->
            <cfset  variables.cfcResults1 = "Error">    
        <cfelse>
    <!---       <cfset cfcResults1.status = "200"> --->
            <cfset  variables.cfcResults1 = "Success">             
        </cfif>
        <cfif #cfcResults1# == "Error">
            <cfreturn false>
        <cfelse>
            <cfreturn  true>
        </cfif>
    </cffunction>
    <cffunction name="savesubscribers" access="public">
        <cfargument name="username" type="string" required="yes" >
        <cfargument name="useremail" type="string" required="yes" >
        <cfif (isDefined("form.inputSubmit"))>       
            <cfquery name="local.AddUser" result="subscriberResult"> 
                INSERT INTO subscribers
                (
                    username,useremail
                ) 
                VALUES 
                (
                    <cfqueryparam cfsqltype="cf_sql_varchar"   value="#form.username#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar"   value="#form.useremail#">
                ) 
            </cfquery>          
        </cfif>
        <cfset  variables.getNumberOfRecords = listLen(#subscriberResult.generated_key#)> 
        <cfreturn  variables.getNumberOfRecords>
    </cffunction>
</cfcomponent>