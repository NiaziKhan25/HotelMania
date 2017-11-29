$(document).ready(function () {
    // the "href" attribute of the modal trigger must specify the modal ID that wants to be triggered
    $('.datepicker').pickadate();
    $('#input_starttime').pickatime({
        twelvehour: true
    });
    $('#input_endtime   ').pickatime({
        twelvehour: true
    });

});
