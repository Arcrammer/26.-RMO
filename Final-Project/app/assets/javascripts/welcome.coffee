# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

(($) ->
  $ ->
    # The DOM has loaded and jQuery is ready
    $('video').mediaelementplayer {
        'success': (mediaElement, originalNode) ->
          # The media player has been instantiated

          null
    }
    null
) jQuery
