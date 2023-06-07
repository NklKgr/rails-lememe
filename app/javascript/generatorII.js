(function (window, document) {
  let canvas = document.getElementById('canvas');
  // image url must be interpolited here
  canvas.style.backgroundImage = "url('https://i.imgur.com/2yqZB9h.png')";
  let window_height = window.innerHeight;
  let window_width = window.innerWidth;

  let context = canvas.getContext('2d');
  canvas.height = window_height / 2;
  canvas.width = window_width / 2;

  

})(window, document);
