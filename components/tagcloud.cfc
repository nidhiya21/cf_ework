<cfcomponent output="false">
    <cffunction name="getString" access="public" returntype="struct">
        <cfargument name="inputString" type="string" required="true" />
        <cfset variables.words = reMatch("[[:word:]]+", inputString)>
        <cfset variables.wordCount = structNew()>
            <cfloop index="word" array="#words#"> 
                <cfif structKeyExists(wordCount, word)> 
                    <cfset variables.wordCount[word]++> 
                <cfelse>
                    <cfset variables.wordCount[word] = 1>
                </cfif> 
            </cfloop>
        <cfreturn variables.wordCount> 
    </cffunction>
    <cffunction name="GetWords" access="public" output="false" >	 
         <cfquery name="local.GetWords"> 
            SELECT paragraph,count
            FROM tags where length(paragraph) > 3  ORDER BY count DESC,paragraph ASC
        </cfquery>
        <cfreturn local.GetWords/>  
    </cffunction>
    <cffunction name="GetWordsAll" access="public" output="false" >	 
         <cfquery name="local.GetWordsAll"> 
            SELECT paragraph,count
            FROM tags   ORDER BY count DESC,paragraph ASC
        </cfquery>
        <cfreturn local.GetWordsAll/>  
    </cffunction>

</cfcomponent>
