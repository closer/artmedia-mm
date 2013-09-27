$(function(){
  // $('.frontcover').delay(3000).animate({opacity: 0}, 1500, function(){ $(this).remove(); });

  var background = $('.background');
  var images = $('.background .image');
  var current = 1;

  function change(current) {
    var current_image = $(images.get(current));
    background.append(current_image.css('opacity', 0).animate({opacity: 1}, 500));
  }
  function previous() {
    current = 0 > current - 1 ? images.length - 1 : current - 1;
    change(current);
  }
  function next() {
    current = images.length <= current + 1 ? 0 : current + 1;
    change(current);
  }

  $('.previous').click(previous);
  $('.next').click(next);

  // setInterval(function() {
  //   next();
  // }, 1000);
});
