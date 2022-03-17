 <cfcomponent>
    <!---get user list--->
   <cffunction name="getUsers" access="public" output="false" returntype="query">		     
        <cfquery name="local.getUsersDet">
            SELECT *
            FROM userrole
            WHERE username = '#FORM.username#'
            AND password = '#FORM.password#'
        </cfquery>
        <cfreturn local.getUsersDet />
    </cffunction>
    <!---delete user --->
    <cffunction name="deleteuser" access="remote" output="false">		     
        <cfquery name="local.deleteuserDet">
            delete from contentpages  where pageid=<cfqueryparam cfsqltype="cf_sql_bigint" value="#url.did#">
        </cfquery>
        <cfoutput>Page deleted successfully</cfoutput>
        <cflocation url="cf_rework/cf28_welcome.cfm" addtoken="No">
    </cffunction>
    <!---get content pages --->
    <cffunction name="getPagesVal" access="public" output="false" >	 
        <cfquery name = "local.pageList"> 
            SELECT pageid, pagename, pagedesc
            FROM contentpages
            ORDER BY pageid 
        </cfquery>
        <cfreturn local.pageList/>  
    </cffunction>
    <!---get page detail --->
    <cffunction name="pageView" access="public" output="false" >
        <cfargument name="pageid" type="numeric" required="yes" >	 
        <cfquery name = "local.pageViewDet"> 
            select pagename,pagedesc from contentpages 
            where pageid=<cfqueryparam cfsqltype="cf_sql_bigint" value="#pageid#">
        </cfquery>
        <cfreturn local.pageViewDet/>  
    </cffunction> 
    <!---add new page --->
    <cffunction name="insertPage" access="public" output="false" >
        <cfargument name="pagename" type="string">
        <cfargument name="pagedesc" type="string">	 
        <cfquery name = "local.insertPage" result="pageResult"> 
            insert into contentpages(pagename,pagedesc)
            values(
             <cfqueryparam cfsqltype="cf_sql_varchar" value="#pagename#" />
            ,<cfqueryparam cfsqltype="cf_sql_varchar" value="#pagedesc#" />
            )
        </cfquery>
        <cfset variables.getNumberOfRecords = listLen(#pageResult.generated_key#)> 
        <cfreturn variables.getNumberOfRecords>
    </cffunction>
    <!---updte page --->
    <cffunction name="updatePage" access="public" output="false" >
        <cfargument name="pageid" type="numeric"  >	
        <cfargument name="pagename" type="string" >
        <cfargument name="pagedesc" type="string" > 
        <cfquery name = "local.updatePage" result="res"> 
            update contentpages
            set pagename=<cfqueryparam cfsqltype="cf_sql_varchar" value="#pagename#">,
            pagedesc=<cfqueryparam cfsqltype="cf_sql_varchar"  value="#pagedesc#">
            where pageid=<cfqueryparam cfsqltype="cf_sql_integer" value="#pageid#">
        </cfquery>
         <cfreturn res>
    </cffunction>      
</cfcomponent> 
