<cfcomponent>
    <cffunction name="multiply">
          <cfset variables.result = 1>
          <cfloop collection="#Arguments#" item="i">    
            <cfset variables.result =  result*Arguments[i]>
          </cfloop>
          <cfreturn variables.result>   
    </cffunction>
</cfcomponent>