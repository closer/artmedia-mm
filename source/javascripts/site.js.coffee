$ ->
  # $('.frontcover').delay(3000).animate({opacity: 0}, 1500, function(){ $(this).remove() });

  background = $('.background')
  images = $('.background .image')
  current = 1

  change = (current)->
    console.log current
    current_image = $(images.get(current))
    background.append(current_image.css('opacity', 0).animate({opacity: 1}, 500))

  previous = ()->
    current =
      if 0 > current - 1
        images.length - 1
      else
        current - 1
    change(current)

  next = ()->
    current =
      if images.length <= current + 1
        0
      else
        current + 1
    change(current)

  $('.previous').click(previous)
  $('.next').click(next)

  # setInterval(function() {
  #   next()
  # }, 1000)
