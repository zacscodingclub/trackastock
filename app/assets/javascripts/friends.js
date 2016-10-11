var init_friend_lookup;

init_friend_lookup = function() {
    $('#friend-lookup-form').on('ajax:before', function() {
        showSpinner();
    });

    $('#friend-lookup-form').on('ajax:success', function(event, data, status) {
        hideSpinner();
        console.log(data);
        $('#friends-lookup').replaceWith(data);

        init_friend_lookup();
    });

    $('#friend-lookup-form').on('ajax:error', function(event, xhr, status, error) {
        hideSpinner();
        $('#friend-lookup-results').replaceWith('');
        $('#friend-lookup-errors').replaceWith('Friend not found');

        init_friend_lookup();
    });
}

$(document).ready(function() {
    init_friend_lookup();
});
