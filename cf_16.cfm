<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/>
<title>Task 16</title>
</head>
<body>  
<cfoutput>
    <div class="container mt-3">
        <h2>Tak 16</h2>
          <cfinvoke component="components.cf_16" method="matrixArray" returnvariable="myMatrix2DArray">  
          </cfinvoke> 
            <cfscript>
                writeOutput("<table><tbody>");
                for( row in myMatrix2DArray ){
                    writeOutput("<tr>");
                    for( column in row ){
                        writeOutput("<td>#column#</td>");
                    }
                    writeOutput("</tr>");
                }
                writeOutput("</tbody></table>");
            </cfscript>
    </div>
</cfoutput>
</body>
</html>