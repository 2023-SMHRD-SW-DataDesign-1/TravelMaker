document.querySelector('.img__btn').addEventListener('click', function() {
    document.querySelector('.cont').classList.toggle('s--signup');
  });
  
//   const gosu_user = document.getElementById("gosu_user");
//   const nomal_user = document.getElementById("nomal_user");
//   const multi_select_box = document.getElementsByClassName("multi_select_box");
//   const sub_cont = document.getElementsByClassName("sub-cont");

  $("#gosu_user").on("click", function(){
    $(".sub-cont").attr('id', 'scrollActive');
    /*$(".multi_select_box").attr('id', 'active');*/
    $(".multi_select_box").css('display','block');
  })
  $("#nomal_user").on("click", function(){
    $(".sub-cont").scrollTop(0);
    $(".sub-cont").removeAttr('id', 'scrollActive');
    /*$(".multi_select_box").removeAttr('id', 'active');*/
    $(".multi_select_box").css('display','none');
    
  })