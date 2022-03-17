<cfcomponent output="false"> 
    <cffunction name="displayElement" access="public">
            <cfset variables.number = form.inputNumber/>
            <cfset variables.result = "" />
            <cfloop list = "#variables.number#" index = "item">
                     <cfif item mod 3 EQ 0>
                            <cfset variables.result=item/>
                     <cfelse>
                            <cfcontinue>
                     </cfif>
              </cfloop>
        <cfreturn variables.result>
    </cffunction>  
</cfcomponent>
