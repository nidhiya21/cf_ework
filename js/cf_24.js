
$(document).ready(function() {
    $(':input[type="submit"]').prop('disabled', true);
});

function checkUserExists(){      
    var useremail = $('#useremail').val();
    $.ajax({
    url: 'components/cf_24.cfc', 
    async: false,
    dataType: "json",
    data: 
        { 
            method: "searchUser",
            useremail:useremail},
            success: function(objResponse ) {
                if (objResponse.SUCCESS){
                    alert('This Email id alredy existing in our system');           
                } 
                else {
                   
                    alert('This Email id not existing in our system you can submit');
                    $(':input[type="submit"]').prop('disabled', false); 
                }                    
        }
    }); 
}
function checkUser(){      
    var textKey = $('#textKey').val();
    var textVal = $('#textVal').val();
    $.ajax({
    url: 'components/cf_7.cfc', 
    async: false,
    dataType: "json",
    data: 
        { 
            method: "getList",
            textVal:textVal,textKey:textKey},
            success: function(objResponse ) {
                if (objResponse.SUCCESS){
                         
                } 
                                  
        }
    }); 
}
