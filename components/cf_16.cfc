<cfcomponent output="false"> 
    <cffunction name="matrixArray" access="public">
        <cfset variables.matrixArray= [[1, 4, 7], [2, 5, 8], [3, 6, 9]]/>
        <cfscript>
            var initialArray=[1,4,7,2,5,8,3,6,9];
            var row=[];
            var myMatrix2DArray=[];
            initialArray.reduce( 
                ( acc, element ) => {
                        if( acc mod 3 == 0 ){
                            row.append( element );
                            myMatrix2DArray.append( row );
                            row=[];
                            return 1;
                        }else{
                            row.append( element );
                            return acc+1;
                        }
                }, 1 );
        </cfscript>
        <cfreturn myMatrix2DArray>
    </cffunction>
</cfcomponent>
