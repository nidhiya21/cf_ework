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
        <cfset matrixArray= [[1, 4, 7], [2, 5, 8], [3, 6, 9]]/>
      <cfscript>
   // using arrayReduce() member function
   initialArray=[1,4,7,2,5,8,3,6,9];
   row=[];
   myMatrix2DArray=[];
   initialArray.reduce( 
           ( acc, element ) => {
                   if( acc mod 3 == 0 ){
                       //append last element;
                       row.append( element );
                       myMatrix2DArray.append( row );
                       //reset row and return acc with 1;
                       row=[];
                       return 1;
                   }else{
                       row.append( element );
                       return acc+1;
                   }
           }, 1 );
          
</cfscript>



  


  <table>
  <tbody>


    for( row in myMatrix2DArray ){

        <tr>

        for( column in row ){

            <cfoutput><td>#column#</td></cfoutput>

        }

       </tr>
    }

  </tbody>
  </table>



    </div>
</cfoutput>
</body>
</html>