<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/> 
<title>Task 21</title>
</head>
<body>  
    <div class="container mt-3">
        <h2>Task 21</h2>
        <h4>Birthday Wishes</h4>
        <cfif structKeyExists(form, 'formSubmit')>
            <cfif structKeyExists(form,"attachment") and len(trim(form.attachment))>
                 <cfinvoke component="components.cf_21" method="greetingMailsent" returnvariable="status">  
                 </cfinvoke>   
                 <cfif status eq "success">
                    <p>Thank you for sending message.</p>
                 <cfelse>  
                    <p>Error</p>
                 </cfif>
            </cfif>
        </cfif>
        <form action = "" method="POST"  enctype="multipart/form-data">
            <table>
                <tr>
                    <td>Birthday Baby Name</td>
                    <td><input type = "Text" class="form-control" name ="MailName"></td>
                </tr>
                <tr>
                    <td>His Email Id</td>
                    <td><input type = "Text" class="form-control" name ="MailTo"></td>
                </tr>
                <tr>
                    <td>Birthday Wishes</td>
                    <td><textarea name ="body" cols="40" rows="5" wrap="virtual" class="form-control"></textarea></td>
                </tr>
                <tr>
                    <td>Attachement</td>
                    <td><input type = "file" name = "attachment"></td>
                </tr>
            </table>
            <input type = "hidden" name = "MailTo_required" value = "You must enter a recipient">
            <p><input type = "Submit" name = "formSubmit"  class="btn btn-success"></p>
        </form>       
    </div> 
</body>
</html>
