<cfcomponent output="false"> 
    <cffunction name="listStructures" access="public">
        <cfif NOT StructKeyExists(Session, "mystruct")>
            <cflock timeout=20 scope="Session" type="Exclusive">
                <cfset Session.mystruct = structNew()>
            </cflock>
		</cfif>
		<cfif StructKeyExists(Session, "mystruct")>
				<cfset Session.mystruct[Form.textKey] = form.textVal> 
		</cfif>
         <cfreturn Session.mystruct>
    </cffunction>
    <!----- update structure----->
    <cffunction name="updateStructures" access="public">
        <cfif NOT StructKeyExists(Session, "mystruct")>
			<cflock timeout=20 scope="Session" type="Exclusive">
				<cfset Session.mystruct = structNew()>
			</cflock>
		</cfif>
		<cfif StructKeyExists(Session, "mystruct")> 
			<cfif NOT StructKeyExists(Session.mystruct,form.textKey)> 
				<cfset Session.mystruct[Form.textKey] = form.textVal> 
			<cfelse>
				<cfscript>
					StructUpdate(Session.mystruct,Form.textKey,form.textVal);      
				</cfscript>
			</cfif>
		</cfif>
        <cfreturn Session.mystruct>
    </cffunction>
    <!-----structure in alphabetical order----->
    <cffunction name="checkStructuresExist" access="public">
        <cfif NOT StructKeyExists(Session, "mystruct")>
            <cflock timeout=20 scope="Session" type="Exclusive">
                <cfset Session.mystruct = structNew()>
            </cflock>
        </cfif>
        <cfif StructKeyExists(Session, "mystruct")> 
            <cfif NOT StructKeyExists(Session.mystruct,form.textKey)> 
                <cfset Session.mystruct[Form.textKey] = form.textVal> 
            <cfelse>
                <cfscript>
                    StructUpdate(Session.mystruct,Form.textKey,form.textVal); 
                </cfscript>
            </cfif> 
        </cfif>
        <cfscript>
            StructSort(Session.mystruct,"text","asc");
        </cfscript>
        <cfreturn Session.mystruct>
    </cffunction>
    <!-----check structure alredy existing----->
     <cffunction name="checkinStructures" access="public">
        <cfif NOT StructKeyExists(Session, "mystruct")>
			<cflock timeout=20 scope="Session" type="Exclusive">
				<cfset Session.mystruct = structNew()>
			</cflock>
		</cfif>
		<cfif StructKeyExists(Session, "mystruct")> 
			<cfif NOT StructKeyExists(Session.mystruct,form.textKey)> 
				<cfset Session.mystruct[Form.textKey] = form.textVal> 
                <cfset variables.status ="success">
			<cfelse>
                    <cfset variables.findVal = StructFind(Session.mystruct,form.textVal)>
                    <cfif>
                        <cfscript>
                        StructUpdate(Session.mystruct,Form.textKey,form.textVal); 
                        </cfscript>
                        <cfset variables.status ="success">
                    <cfelse>
                        <cfset variables.status ="failure">
                    </cfif>
			</cfif>
		</cfif>
        <cfset variables.result = {
                    "status" = variables.status,
                    "mystruct" = Session.mystruct
                    
        }>
        <cfreturn variables.result>
    </cffunction>
</cfcomponent>