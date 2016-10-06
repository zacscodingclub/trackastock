'use strict'

let init_stock_lookup;

init_stock_lookup = function() {
    $('#stock-lookup-form').on('ajax:before', function() {
        showSpinner();
    });

    $('#stock-lookup-form').on('ajax:success', function(event, data, status) {
        hideSpinner();
        $('#stock-lookup').replaceWith(data);

        init_stock_lookup();
    });

    $('#stock-lookup-form').on('ajax:error', function(event, xhr, status, error) {
        hideSpinner();
        $('#stock-lookup-results').replaceWith('');
        $('#stock-lookup-errors').replaceWith('Stock was not found');

        init_stock_lookup();
    });
}

$(document).ready(function() {
    init_stock_lookup();
});
