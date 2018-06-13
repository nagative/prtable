$(function(){
  $('#login-button-icon')
    .on('mouseover', function(){
      ('#login-button-icon').animate({
        backgroundColor: '#2EFEC8',
        color: '#FFF'
      }, 500);
    })
    .on('mouseout', function(){
      ('#login-button-icon').animate({
        backgroundColor: '#FFF',
        color: '#666'
      }, 500);
    });
});
