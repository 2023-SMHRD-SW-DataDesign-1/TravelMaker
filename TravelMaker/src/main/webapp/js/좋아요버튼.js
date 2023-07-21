$('.like__btn2').on('click', function(){
  // Check if it's already been clicked
  if (!$(this).hasClass('like__btn2--disabled')) {
    // Update the number
    updated_likes = parseInt($('.like__btn2 span').html()) + 1;
    $('.like__btn2 span').html(updated_likes);
   }
  // Make btn disabled
  $(this).attr('disabled', true).addClass('tada');
});