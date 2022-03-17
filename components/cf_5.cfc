<cfcomponent output="false"> 
    <cffunction name="ageSinceDOB" access="public">
        <cfargument name="dob" type="string" required="yes" >
        <cfset variables.ageYR = DateDiff('yyyy', dob, NOW())>
        <cfset variables.ageMO = DateDiff('m', dob, NOW())>
        <cfset variables.ageWK = DateDiff('ww', dob, NOW())>
        <cfset variables.ageDY = DateDiff('d', dob, NOW())>
        <cfset variables.age = "">         
        <cfif (isDate(dob))>    
            <cfif (now() LT dob)>
                <cfset variables.age = "NA">
            <cfelse>
                <cfif (variables.ageYR LT 2) >
                    <cfset variables.age = variables.ageMO & "m">
                    <cfif (ageMO LT 1) >
                        <cfset variables.age = variables.ageWK & "w">
                    </cfif>
                    <cfif (variables.ageWK LT 1) >
                        <cfset variables.age = variables.ageDY & "d">
                    </cfif>
                <cfelse>
                    <cfset variables.age = variables.ageYR & "y">
                </cfif> 
            </cfif>
        <cfelse>   
            <cfset variables.age = "NA"/>
        </cfif> 
        <cfreturn variables.age> 
    </cffunction>
    <cffunction name="deliverage" access="public">
        <cfargument name="dob" type="string" required="yes" >
        <cfset variables.userAge = "11/21/1991">
        <cfset variables.ageYR = DateDiff('yyyy', dob, variables.userAge)/>
        <cfset variables.ageMO = DateDiff('m', dob, variables.userAge)>
        <cfset variables.ageWK = DateDiff('ww', dob, variables.userAge)>
        <cfset variables.ageDY = DateDiff('d', dob, variables.userAge)>
        <cfset variables.age = "">         
        <cfif (isDate(dob))>    
            <cfif (now() LT dob)>
                <cfset variables.age = "NA">
            <cfelse>
                <cfif (variables.ageYR LT 2) >
                    <cfset variables.age = variables.ageMO & "m">
                    <cfif (variables.ageMO LT 1) >
                        <cfset variables.age = variables.ageWK & "w">
                    </cfif>
                    <cfif (ageWK LT 1) >
                        <cfset variables.age = variables.ageDY & "d">
                    </cfif>
                <cfelse>
                    <cfset variables.age = variables.ageYR & "y">
                </cfif> 
            </cfif>
        <cfelse>   
            <cfset variables.age = "NA"/>
        </cfif> 
        <cfreturn variables.age>
    </cffunction>
</cfcomponent>