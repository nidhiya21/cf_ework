<cfcomponent output="false"> 
    <cffunction name="getoccurrences" access="public">
        <cfset variables.string = "the quick brown fox jumps over the lazy dog" />
        <cfset variables.substring = "#form.inputSearch#" />
        <cfset occurrences= ( Len(string) -Len(Replace(string,substring,'','all'))) / Len(substring) > 
        <cfreturn occurrences>
    </cffunction>
</cfcomponent>
