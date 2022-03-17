<cfcomponent output="false"> 
    <cffunction name="displayElement" access="public">
        <cfset variables.inputNumber= form.inputNumber>
        <cfif(form.inputNumber EQ 5)>
            <cfset variables.displayText = "Very Good">
        <cfelseif (form.inputNumber EQ 4)> 
            <cfset variables.displayText = "Good">
        <cfelseif (form.inputNumber EQ 3)> 
            <cfset variables.displayText = "Fair">
        <cfelse> 
            <cfset variables.displayText = "Ok">
        </cfif>
            <cfreturn variables.displayText>
    </cffunction>
</cfcomponent>
