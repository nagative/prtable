$(function(){
// top-contents
  $('.img').on('mouseover', function(){
    $(this).stop(true).animate({ opacity: 0.3 }, 200);
  })
  $('.img').on('mouseout', function(){
    $(this).stop(true).animate({ opacity: 1 }, 200);
  });

// left-contents
  $('.fig-content').on('mouseover', function(){
    $(this).stop(true).animate({ opacity: 0.3 }, 200);
  })
  $('.fig-content').on('mouseout', function(){
    $(this).stop(true).animate({ opacity: 1 }, 200);
  });
  $('.stories-link').on('mouseover', function(){
    $(this).stop(true).animate({ opacity: 0.3 }, 200);
  })
  $('.stories-link').on('mouseout', function(){
    $(this).stop(true).animate({ opacity: 1 }, 200);
  });

// right-contents
  $('.side-style').on('mouseover', function(){
    $(this).stop(true).animate({ opacity: 0.3 }, 200);
  })
  $('.side-style').on('mouseout', function(){
    $(this).stop(true).animate({ opacity: 1 }, 200);
  });

});

