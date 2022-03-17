<cfcomponent>
    <cffunction name="makeRandomString" returnType="string" output="false">
        <cfset variables.chars = "23456789ABCDEFGHJKMNPQRS">
        <cfset variables.length = randRange(4,7)>
        <cfset variables.result = "">
        <cfset variables.i = "">
        <cfset variables.char = "">       
        <cfloop index="i" from="1" to="#length#" >
            <cfset variables.char = mid(variables.chars, randRange(1, len(variables.chars)),1)>
            <cfset variables.result&=variables.char>
        </cfloop>	
        <cfreturn variables.result>
    </cffunction>
</cfcomponent> 
