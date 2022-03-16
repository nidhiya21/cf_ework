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
                        <cfset destinationImage=#form.imageName#&"."&#cffile.serverFileExt#>  
                        <cfset status ="success">
                        <cfset serverFileExt =#cffile.serverFileExt#>
                <cfelse>
                        <center>
                            Your file size of #cgi.content_length# is too big!
                            <br>
                            The maximum size allowed is #fileSizeLimit#.
                        </center>
                         <cfset status ="failure">
                       
                </cfif>
                <cfset result = {
                    "status" = status,
                    "destinationImage" = destinationImage,
                    "serverFileExt" = serverFileExt
                    
                }>
        </cfif> 
        <cfreturn result>
    </cffunction>
</cfcomponent>
