$(document).ready ->
  $('#amount').change ->
    convert()
  $('#source_currency').change ->
    convert()
  $('#target_currency').change ->
    convert()
  $('#exchange-currency').click ->
    source_currency = $('#source_currency').val()
    target_currency = $('#target_currency').val()
    $('#source_currency').val(target_currency)
    $('#target_currency').val(source_currency)
    convert()

convert = () ->
  if $('#amount').attr('value') >= 0
    $.ajax '/convert',
           type: 'GET'
           dataType: 'json'
           data: {
             source_currency: $("#source_currency").val(),
             target_currency: $("#target_currency").val(),
             amount: $("#amount").val()
           }
           error: (jqXHR, textStatus, errorThrown) ->
             alert textStatus
           success: (data, text, jqXHR) ->
             $('#result').val(data.value)
  return false;
