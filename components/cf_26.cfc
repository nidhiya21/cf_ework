<cfcomponent output="false"> 
    <cffunction name="readText" access="public">
        <cfset myfile = FileRead("C:\ColdFusion2021\cfusion\wwwroot\cf_workout\c26.txt")/>               
        <cfset stringInfo = application.tagCloud.getString(myfile) />
        <cfset sorted = structSort(stringInfo)>
        <cfloop index="word" array="#sorted#"> 
            <cfquery  name="local.addPage">
                INSERT INTO tags(paragraph, count)
                VALUES ('#word#',#stringInfo[word]#)
            </cfquery>  
        </cfloop> 
        <cfquery name="local.GetWords" result="result"> 
            SELECT paragraph,count
            FROM tags   ORDER BY count DESC,paragraph ASC
        </cfquery>
        <cfreturn local.GetWords> 
    </cffunction>
</cfcomponent>