<cfcomponent output="false"> 
    <cffunction name="GetSpecificUserVal" access="public">
        <cfargument name="inputNum" type="numeric" required="yes" >
            <cfquery name = "local.GetSpecificUser"  >         
                SELECT  firstName
                FROM usersdetail
            </cfquery>
            <cfset variables.yourRow =  GetSpecificUser.firstName[#inputNum#]/>               
       <cfreturn variables.yourRow> 
    </cffunction> 
    <cffunction name="GetAllUser" access="public" >       
            <cfquery name = "local.GetUser"   result="res2" >         
                SELECT *
                FROM usersdetail
            </cfquery>
            <cfreturn GetUser>             
    </cffunction>  
</cfcomponent>