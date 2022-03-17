<cfcomponent output="false"> 
    <cffunction name="greetingMailsent" access="public">
        <cfset thisDir = expandPath(".")>
        <cffile action="upload" fileField="attachment" destination="#thisDir#" result="fileUpload" nameconflict="overwrite">
        <cfif fileUpload.fileWasSaved>
            <cfif IsImageFile("#fileUpload.serverfile#")>
                <cfmail to="#form.MailTo#"
                    from="rincekthomas@gmail.com"
                    subject="Birthday Wishes"
                    type="text" mimeattach="#fileUpload.serverDirectory#/#fileUpload.serverFile#">
                    #form.body#
                </cfmail>
                <cfset variables.status ="success">
            <cfelse>
                <cfset variables.status ="failure">
            </cfif>
        </cfif>
        <cfreturn variables.status>
    </cffunction>
</cfcomponent>          