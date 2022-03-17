function validate() {
    if( document.form54.Field17.value == "" ) {
        alert( "Please select any position!" );
        document.form54.Field17.focus() ;
        return false;
    }
    if( document.form54.Field19.value == "" ) {
        alert( "Please select any relocate area!" );
        document.form54.Field19.focus() ;
        return false;
    }
    if( document.form54.Field20.value == "" ) {
        alert( "Please select start date!" );
        document.form54.Field20.focus() ;
        return false;
    }
    if( document.form54.Field22.value == "" ) { 
        alert( "Please enter first name!" );
        document.form54.Field22.focus() ;
        return false;
    }

    if( document.form54.Field23.value == "" ) {
        alert( "Please provide last name!" );
        return false;
    }
    if( document.form54.Field13.value == "" ) {
        alert( "Please provide email address!" );
        return false;
    }
    if( document.form54.Field25.value == "" ) {
        alert( "Please provide phone!" );
        return false;
    }
    return(true);
}