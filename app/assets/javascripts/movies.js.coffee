# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(window).load ->
  $('a[data-target]').click(e) ->
    e.preventDefault()
    $this = $(this)
    if $this.data('target') == 'Add to'
      url = $this.data('addurl')
      new_target = "Remove from"
    else
      url = $this.data('removeurl')
      new_target = "Add to"
    $.ajax url: url, type: 'put', success: (data) ->
      $('.cart-count').html(data)
      $this.find('span').html(new_target)
      $this.data('target', new_target)

$ ->
  $('.show-advanced-search').click ->
    $('.advanced-search').show() // which removes the hide class
    $(this).hide()

  $('.close-advanced-search').click ->
    $('.advanced-search').hide()
    $('.show-advanced-search').show()

$('form').on 'click', '.add_fields', (event) ->
  time = new Date().getTime()
  regexp = new RegExp($(this).data('id'), 'g')
  $(this).before($(this).data('fields').replace(regexp, time))
  event.preventDefault()

$('form').on 'click', '.remove_fields', (event) ->
  $(this).closest('.field').remove()
  event.preventDefault()