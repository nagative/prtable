$(function(){
var topBtn=$('#pageTop');
topBtn.hide();
 $(document).scroll('turbolinks:load', function(){
  if($(this).scrollTop()>80){
   topBtn.fadeIn();
  }else{
    topBtn.fadeOut();
  } 
});

 topBtn.click('turbolinks:load', function(){
  $('body,html').animate({
  scrollTop: 0},500);
  return false;
});
});