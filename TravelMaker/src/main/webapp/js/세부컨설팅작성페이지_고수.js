var msg = '';
var result = '';

for (i = 1; i<13; i++) {
  result = (i + ' x 123456 = ' + i*123456);
  msg += '<li>' + result + '</li>';
};

document.getElementById('timesTable').innerHTML = msg;