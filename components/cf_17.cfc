<cfcomponent output="false"> 
    <cffunction name="numberList" access="public">
           <cfloop collection="#Arguments#" item="i"> 
                    <cfif Arguments[i] MOD 2 eq 0>
                        <cfset variables.status="even">
                        <cfset variables.idx=Arguments[i]>
                    <cfelse>
                        <cfset variables.status="odd">
                        <cfset variables.idx=Arguments[i]>
                    </cfif>   
            </cfloop>
             <cfset result = {
                    "status" = variables.status,
                    "idx" = variables.idx
                    
                }>
        <cfreturn variables.result>
    </cffunction>
</cfcomponent>
