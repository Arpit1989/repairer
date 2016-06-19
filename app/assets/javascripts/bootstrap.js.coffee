jQuery ->
  $("a[rel~=popover], .has-popover").popover()
  $("a[rel~=tooltip], .has-tooltip").tooltip()
  $('.first').click ->
    $('#myModal').modal('show')
  $('.second').click ->
    $('#myModal').modal('show')