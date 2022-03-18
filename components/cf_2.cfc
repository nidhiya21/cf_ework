<cfcomponent output="false"> 
    <cffunction name="displayElement" access="public">
            <cfset variables.inputNumber= form.inputNumber>
            <cfswitch expression="#form.inputNumber#"> 
                <cfcase value="5"><cfset variables.displayText = "Very Good"></cfcase>
                <cfcase value="4"> <cfset variables.displayText = "Good"></cfcase> 
                <cfcase value="3"><cfset variables.displayText = "Fair"></cfcase>
                <cfdefaultcase><cfset variables.displayText = "Ok"></cfdefaultcase> 
            </cfswitch>
        <cfreturn variables.displayText>
    </cffunction>
</cfcomponent>
