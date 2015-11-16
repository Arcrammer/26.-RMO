# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

(($) ->
  $ ->
    # The DOM has loaded and jQuery is ready
    $('video').mediaelementplayer()

    $('.panel:first-of-type a').click (event) ->
      # One of the list links was clicked
      linkClicked = event.target
      desiredFormat = event.target.id
      downloadListButton = $('#download-link')[0]
      downloadListButton.href = downloadLinks[desiredFormat]
      console.log downloadListButton.href

    $('.panel a').click (event) ->
      # Remove the background colour for
      # the sibling 'a' elements
      $(event.target)
        .closest('ul')
        .children('li') # Why do I have to step into these first?
        .children('a')
        .removeClass('chosen')
      $(event.target).addClass 'chosen'

    null
) jQuery
