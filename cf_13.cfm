<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/> 
<title>Task 13</title>
</head>
<body>
    <div class="container mt-3">
        <h2>Task 13</h2>
        <cfparam name="form.inputSearch" default="">
        <form  action="cf_13.cfm"  name="form"  method="post">
            <div class="mb-3 mt-3">
                <p> <b>Given text is :the quick brown fox jumps over the lazy dog</b></p>
                <label for="number">Enter the word to search:</label>
                <input name="inputSearch" type="text" >
            </div>
            <input name="inputSubmit" class="btn btn-primary" type="submit" validateAt="onSubmit" >
        </form>
    </div>
    <cfif structKeyExists(form,'inputSubmit')>
        <cfinvoke component="components.cf_13" method="getoccurrences" returnvariable="occurrences">  
        </cfinvoke>           
        <b> <cfdump var="#occurrences#"> times</b>     
    </cfif>
</body>
</html>
