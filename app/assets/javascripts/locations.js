$(document).ready(function () {
    // will call refreshPartial every 3 seconds
    setInterval(refreshPartial, 3000)

});

function refreshPartial() {
    $.ajax({
        action: "locations#refresh_part"
})
}