<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Task 22</title>
</head>
<body>
<cfoutput>
    <h2>Task 22</h2>
    <cfinvoke component="components.cf_22" method="matrixPrint" returnvariable="matrixdata">  
    </cfinvoke>
    <table width="50%" >
        <tr>
            <th align="left">Name</th>
            <th align="left">Age</th>
            <th align="left">Location</th>
        </tr>
        <cfloop index="i" from="1" to="#arrayLen(matrixdata)#">
            <tr>
              <td>#matrixdata[i].Name#</td>
              <td>#matrixdata[i].Age#</td>
              <td>#matrixdata[i].LOCATION#</td>
            </tr>                   
        </cfloop>
    </table>
</cfoutput>
</body>
</html>