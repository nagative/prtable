$(function(){
  // header
  $('.header_link').on('mouseover', function(){
    $(this).css({ color: 'rgba(41, 217, 194, 1)'});
  })
  $('.header_link').on('mouseout', function(){
    $(this).css({ color: ''});
  });

  $('.login-icon').on('mouseover', function(){
    $(this).css({ backgroundColor: 'rgba(41, 217, 194, 1)', color: '#FFF'});
  })
  $('.login-icon').on('mouseout', function(){
    $(this).css({ backgroundColor: '', color: ''});
  });

  $('.logout-icon').on('mouseover', function(){
    $(this).css({ backgroundColor: 'rgba(41, 217, 194, 1)', color: '#FFF'});
  })
  $('.logout-icon').on('mouseout', function(){
    $(this).css({ backgroundColor: '', color: ''});
  });


  $('.results-list').on('mouseover', function(){
    $(this).css({ backgroundColor: 'rgba(41, 217, 194, 1)', color: '#FFF'});
  })
  $('.results-list').on('mouseout', function(){
    $(this).css({ backgroundColor: '', color: ''});
  });

  $('.results-submit').on('mouseover', function(){
    $(this).css({ backgroundColor: 'rgba(41, 217, 194, 1)', color: '#FFF'});
  })
  $('.results-submit').on('mouseout', function(){
    $(this).css({ backgroundColor: '', color: ''});
  });

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
  $('.more-bottom').on('mouseover', function(){
    $(this).css({ backgroundColor: 'rgba(41, 217, 194, 1)', color: '#FFF'});
  })
  $('.more-bottom').on('mouseout', function(){
    $(this).css({ backgroundColor: '', color: ''});
  });
  $('.side-tags_list-link').on('mouseover', function(){
    $(this).css({ color: 'rgba(41, 217, 194, 1)'});
  })
  $('.side-tags_list-link').on('mouseout', function(){
    $(this).css({ color: ''});
  });


// footer
  $('.more-link').on('mouseover', function(){
    $(this).css({ backgroundColor: 'rgba(41, 217, 194, 1)', color: '#FFF'});
  })
  $('.more-link').on('mouseout', function(){
    $(this).css({ backgroundColor: '', color: ''});
  });

  $('.footer_list-link').on('mouseover', function(){
    $(this).css({ color: 'rgba(41, 217, 194, 1)'});
  })
  $('.footer_list-link').on('mouseout', function(){
    $(this).css({ color: ''});
  });

});
