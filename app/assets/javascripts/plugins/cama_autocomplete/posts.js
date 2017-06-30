// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var app = window.app = {};

app.Posts = function() {
    this._input = $('#posts-search-txt');
    this._initAutocomplete();
};

app.Posts.prototype = {
    _initAutocomplete: function() {
        this._input
            .autocomplete({
                source: '/plugins/cama_autocomplete/posts/search?type=' + $('#posts-search-type').attr('value'),
                appendTo: '#posts-search-results',
                select: $.proxy(this._select, this)
            })
            .autocomplete('instance')._renderItem = $.proxy(this._render, this);
    },

    _render: function(ul, item) {
        var markup = [
            '<a href="' + item.the_url + '">' + '<img src="' + item.the_thumb_url + '" />' + '</a>',
            '<a href="' + item.the_url + '">' + item.the_title + '</a>'
        ];
        return $('<li>')
            .append(markup.join(''))
            .appendTo(ul);
    },

    _select: function(e, ui) {
        this._input.val(ui.item.the_title);
        return false;
    }
};
