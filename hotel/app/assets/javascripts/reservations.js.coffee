jQuery ->
  $('#second_name').hide()
  $('#reservation_room_type').change ->
    room_type = $('#reservation_room_type :selected').text()
    if room_type == 'Einzelzimmer'
      $('#second_name').hide()
    else
      $('#second_name').show()