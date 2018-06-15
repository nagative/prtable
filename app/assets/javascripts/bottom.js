$(function(){
  $('.slick').slick({
    infinite: true,
    slidesToShow: 3,
    slidesToScroll: 3,
  });
});

$(function(){
  $('#hovers').on('mouseover', function(){
    $(this).css({ opacity: 0.2 });
  })
  $('#hovers').on('mouseout', function(){
    $(this).css({ opacity: 0 });
  });
});
