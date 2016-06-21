jQuery ->
  $("a[rel~=popover], .has-popover").popover()
  $("a[rel~=tooltip], .has-tooltip").tooltip()
  $('.first').click ->
    $('#sofa').modal('show')
  $('.second').click ->
    $('#ac').modal('show')
  $('.third').click ->
    $('#carpenter').modal('show')
  $('.fourth').click ->
    $('#carpet').modal('show')
  $('.fifth').click ->
    $('#painter').modal('show')
  $('.sixth').click ->
    $('#alumnium').modal('show')
  $('.seventh').click ->
    $('#plumber').modal('show')
  $('.eighth').click ->
    $('#steel_fabricator').modal('show')
  $('.ninth').click ->
    $('#myModal').modal('show')
  $('.tenth').click ->
    $('#myModal').modal('show')
  $('.eleventh').click ->
    $('#myModal').modal('show')
  $('.twelfth').click ->
    $('#myModal').modal('show')
