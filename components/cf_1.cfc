<cfcomponent output="false"> 
    <cffunction name="displayElement" access="public">
<<<<<<< HEAD
        <cfset variables.inputNumber= form.inputNumber>
=======
>>>>>>> 8694d961584c04d3e268c22d98f8432f71c7f976
        <cfif(form.inputNumber EQ 5)>
            <cfset displayText = "Very Good">
        <cfelseif (form.inputNumber EQ 4)> 
            <cfset displayText = "Good">
        <cfelseif (form.inputNumber EQ 3)> 
            <cfset displayText = "Fair">
        <cfelse> 
            <cfset displayText = "Ok">
        </cfif>
<<<<<<< HEAD
            <cfreturn displayText> 
=======
            <cfreturn displayText>
>>>>>>> 8694d961584c04d3e268c22d98f8432f71c7f976
    </cffunction>
</cfcomponent>
