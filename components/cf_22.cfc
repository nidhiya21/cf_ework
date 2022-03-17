<cfcomponent output="false"> 
    <cffunction name="matrixPrint" access="public">
        <cfset variables.matrixjson = '[{"Name":"saravanan","Age":27,"LOCATION":"dubai"},{"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}]' />
        <cfset variables.matrixdata=DeserializeJSON(matrixjson)>
        <cfreturn variables.matrixdata>
    </cffunction>
</cfcomponent>          