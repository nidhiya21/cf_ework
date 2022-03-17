
$(document).ready(function() {
    $(':input[type="submit"]').prop('disabled', true);
});

function checkUserExists(){      
    var useremail = $('#useremail').val();
    $.ajax({
    url: 'components/cf_24.cfc', 
    async: false,
    data: 
        { 
            method: "searchUser",
            useremail:useremail},
            success: function(data) {
                if (data==true) { 
                    alert('This Email id not existing in our system you can submit');
                    $(':input[type="submit"]').prop('disabled', false);                    
                } 
                else {
                    alert('This Email id alredy existing in our system'); 
                }                    
        }
    }); 
}
