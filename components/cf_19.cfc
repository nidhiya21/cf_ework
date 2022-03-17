<cfcomponent output="false"> 
    <cffunction name="cookieCnt" access="public">
        <cfif IsDefined("Cookie.VisitsCounter") is False>
           <cfcookie name="VisitsCounter" value=1 />
        <cfelse> 
            <cfset variables.counter = #cookie.VisitsCounter# />
            <cfset variables.increment = counter + 1/>
            <cfcookie name="VisitsCounter" value=#increment# />
        </cfif>    
        <cfreturn Cookie.VisitsCounter>
    </cffunction>
</cfcomponent>
