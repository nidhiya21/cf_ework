<cfcomponent output="false"> 
    <cffunction name="imageUpload" access="public">
        <cfif len(trim(form.fileUpload))>
                <cfset lmt = 1000000 />
                <cfif cgi.content_length LTE lmt>
                    <cffile action="upload"
                        fileField="fileUpload"
                        accept="image/png,image/gif,image/jpeg,image/jpg,.png,.gif,.jpeg,.jpg" 
                        allowedextensions=".png,.gif,.jpeg,.jpg" 
                        destination=#expandpath("./images")# nameconflict="makeunique">
                    <cffile  action="rename" 
                        source="#expandpath("./images/")##cffile.serverFileName#.#cffile.serverFileExt#" 
                        destination="#expandpath("./images/")##form.imageName#.#cffile.serverFileExt#"/>
                    <cfimage action="resize" source="#expandpath("./images/")##form.imageName#.#cffile.serverFileExt#"
                        destination="#expandpath("./images/thumb/")##form.imageName#.#cffile.serverFileExt#" height="20" width="20" overwrite="yes"/> 
                        <cfset variables.destinationImage=#form.imageName#&"."&#cffile.serverFileExt#>  
                        <cfset variables.status ="success">
                        <cfset variables.serverFileExt =#cffile.serverFileExt#>
                <cfelse>
                        <center>
                            Your file size  is too big!
                            <br>
                            The maximum size allowed is exceeded.
                        </center>
                         <cfset variables.status ="failure">
                       
                </cfif>
                <cfset variables.result = {
                    "status" = variables.status,
                    "destinationImage" = variables.destinationImage,
                    "serverFileExt" = variables.serverFileExt
                    
                }>
        </cfif> 
        <cfreturn variables.result>
    </cffunction>
</cfcomponent>
