
// req_est_calendar js 시작

// Builds two pikaDay calendars and uses the startRange and endRange functions
// Pikaday is a Lightweight and dependency free datepicker
// https://github.com/Pikaday/Pikaday

this.buildDatePicker = (startInput, endInput) => {
    const container = document.getElementById('calendar-container');
    const minDate = new Date();
    minDate.setHours(0, 0, 0, 0);
  
    this.startPicker = new Pikaday({
      bound: false,
      container: container,
      field: startInput,
      firstDay: 1,
      theme: 'calendar__start-wrapper',
      minDate: minDate,
      onSelect: () => {
        this.updateStartDate(this.startPicker.getDate());
      } });
  
  
    this.endPicker = new Pikaday({
      bound: false,
      container: container,
      field: endInput,
      firstDay: 1,
      theme: 'calendar__end-wrapper',
      minDate: minDate,
      onSelect: () => {
        this.updateEndDate(this.endPicker.getDate());
      } });
  
  
    this.endPicker.hide();
    this.bindReset(startInput, endInput);
    this.bindMouseMove(endInput, container);
  };
  
  this.updateStartDate = selectedDate => {
    this.startPicker.hide();
    this.endPicker.setMinDate(selectedDate);
    this.endPicker.setStartRange(selectedDate);
    this.endPicker.gotoDate(selectedDate);
    this.setEndRange(selectedDate);
    this.endPicker.show();
  };
  
  this.updateEndDate = selectedDate => {
    this.endDate = new Date(selectedDate);
    console.log('set end date');
    console.log(selectedDate);
    this.setEndRange(selectedDate);
  };
  
  this.setEndRange = endDate => {
    this.endPicker.setEndRange(endDate);
    this.endPicker.draw();
  };
  
  this.bindReset = (startInput, endInput) => {
    const reset = document.getElementById('calendar-clear');
    reset.addEventListener('click', event => {
      event.preventDefault();
  
      this.endPicker.setDate(null);
      this.updateEndDate(null);
      endInput.value = null;
  
      this.startPicker.setDate(null);
      this.updateStartDate(null);
      this.startPicker.gotoDate(new Date());
      startInput.value = null;
  
      this.endPicker.hide();
      this.startPicker.show();
    });
  };
  
  this.bindMouseMove = (endInput, container) => {
    this.target = false;
  
    document.querySelector('body').addEventListener('mousemove', btn => {
      if (!btn.target.classList.contains('pika-button')) {
        if (this.target === true) {
          this.target = false;
          this.setEndRange(this.endPicker.getDate());
        }
      } else
  
      {
        this.target = true;
        const pikaBtn = btn.target;
        const pikaDate = new Date(pikaBtn.getAttribute('data-pika-year'), pikaBtn.getAttribute('data-pika-month'), pikaBtn.getAttribute('data-pika-day'));
        this.setEndRange(pikaDate);
      }
    });
  };
  
  const start = document.getElementById('calendar-start');
  const end = document.getElementById('calendar-end');
  
  this.buildDatePicker(start, end);

  // req_est_calendar js 끝

  // chat_box js 시작
  var arr = [];
var count = 0;
for(var i = 48; i <= 122; i++) {
  var res = String.fromCharCode(i);
  arr[count] = res;
  count++;
}

$('textarea').on('keyup', function(event){
  if(event.keyCode == 13 && !event.shiftKey) {
    event.preventDefault;
    $('#send').click();
  }
  
});
$('button').each(function(i){
  $(this).on('click', function(){
    
    if($('.messages').height() > ($('.container').height())) {
  $('.messages').css('overflowY', 'scroll');
}
    
    
    if($('textarea').val().length > 1) {
      $('.messages').append('<div class="message-box"><p class="message"></p></div>');
      $('.message').eq(i-1).text($('textarea').val()).addClass('push');
      $('textarea').val('');
      $('textarea').focus();
      $('.messages').append('<div class="reply-box"><span class="glyphicon glyphicon-bell"></span><p class="reply"></p></div>');
      $('.reply').eq(i-1).html( arr[(Math.floor((Math.random())*(arr.length))).toString()]
        + arr[(Math.floor((Math.random())*(arr.length))).toString()]
        + arr[(Math.floor((Math.random())*(arr.length))).toString()]
        +arr[(Math.floor((Math.random())*(arr.length))).toString()]
        +arr[(Math.floor((Math.random())*(arr.length))).toString()]
        +arr[(Math.floor((Math.random())*(arr.length))).toString()]
        +arr[(Math.floor((Math.random())*(arr.length))).toString()]
        + arr[(Math.floor((Math.random())*(arr.length))).toString()]
        + arr[(Math.floor((Math.random())*(arr.length))).toString()]
        + arr[(Math.floor((Math.random())*(arr.length))).toString()]
        +arr[(Math.floor((Math.random())*(arr.length))).toString()]
        +arr[(Math.floor((Math.random())*(arr.length))).toString()]
        +arr[(Math.floor((Math.random())*(arr.length))).toString()]
        +arr[(Math.floor((Math.random())*(arr.length))).toString()]).addClass('push2');
      $('.reply-box span').addClass('push2');
      
    }
    else {
      $('textarea').val('');
      $('textarea').focus();
    }
    
    
    var box = document.getElementById('Box');
    box.scrollTop = box.scrollHeight;
    
  });
});

// chat_box js 끝
