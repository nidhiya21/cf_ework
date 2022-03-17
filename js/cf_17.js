function checkit() {
    var v = document.getElementById("text1").value;    
    if(!v.match(/^[0-9]+$/)) {
        alert('Please only enter numeric characters');
        return false;
    }
}