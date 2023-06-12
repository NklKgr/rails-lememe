(function (window, document) {
  let canvas = document.getElementById('canvas');
  let ctx = canvas.getContext('2d');
  let text = 'XXX'

  let windowWidth = window.innerWidth;
  let windowHeight = window.innerHeight;

  canvas.width = windowWidth;
  canvas.height = windowHeight;

  canvas.style.background = '#ff8';

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// img

// var image = document.createElement('img');


// image.onload = function (ev) {
//   // delete and recreate canvas do untaint it
//   canvas.outerHTML = '';
//   draw();
// };

// document.getElementById('imgURL').oninput = function(ev) {
//   image.src = this.value;
// };

// document.getElementById('imgFile').onchange = function(ev) {
//   var reader = new FileReader();
//   reader.onload = function(ev) {
//     image.src = reader.result;
//   };
//   reader.readAsDataURL(this.files[0]);
// };

// ctx.drawImage(image, 0, 0, canvas.width, canvas.height);


  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // drag text

  // Set the initial position and text of the text field
  var textFieldX = 50;
  var textFieldY = 50;
  var textFieldText = 'Drag me!';
  var isDragging = false;
  var dragOffsetX, dragOffsetY;

  // Set the styles for the text field
  ctx.font = '20px Arial';
  ctx.fillStyle = 'black';

  // Function to draw the text field
  function drawTextField() {
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    ctx.fillText(textFieldText, textFieldX, textFieldY);
  }

  // Function to handle mouse down event
  function handleMouseDown(e) {
    var mouseX = e.clientX - canvas.offsetLeft;
    var mouseY = e.clientY - canvas.offsetTop;

    // Check if the mouse is inside the text field
    if (mouseX > textFieldX && mouseX < textFieldX + ctx.measureText(textFieldText).width && mouseY > textFieldY - 20 && mouseY < textFieldY) {
      isDragging = true;
      dragOffsetX = mouseX - textFieldX;
      dragOffsetY = mouseY - textFieldY;
    }
  }

  // Function to handle mouse move event
  function handleMouseMove(e) {
    if (isDragging) {
      textFieldX = e.clientX - canvas.offsetLeft - dragOffsetX;
      textFieldY = e.clientY - canvas.offsetTop - dragOffsetY;
      syncTextFieldInputPosition();
      drawTextField();
    }
  }

  // Function to handle mouse up event
  function handleMouseUp() {
    isDragging = false;
  }

  // Function to synchronize the input position with the text field
  function syncTextFieldInputPosition() {
    textFieldInput.style.left = canvas.offsetLeft + textFieldX + 'px';
    textFieldInput.style.top = canvas.offsetTop + textFieldY - 20 + 'px';
  }

  // Function to handle text input change
  function handleTextInputChange() {
    textFieldText = textFieldInput.value;
    drawTextField();
  }

  // Add event listeners
  canvas.addEventListener('mousedown', handleMouseDown);
  canvas.addEventListener('mousemove', handleMouseMove);
  canvas.addEventListener('mouseup', handleMouseUp);
  textFieldInput.addEventListener('input', handleTextInputChange);

  // Initial drawing
  drawTextField();
  syncTextFieldInputPosition();
  textFieldInput.style.display = 'block';


  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// drawing


//   var isDrawing = false;
//   var lastX = 0;
//   var lastY = 0;

//   canvas.addEventListener('mousedown', startDrawing);
//   canvas.addEventListener('mousemove', paint);
//   canvas.addEventListener('mouseup', stopDrawing);
//   canvas.addEventListener('mouseout', stopDrawing);

//   function startDrawing(e) {
//     isDrawing = true;
//     [lastX, lastY] = [e.offsetX, e.offsetY];
//   }

//   function paint(e) {
//     if (!isDrawing) return;
//     ctx.beginPath();
//     ctx.moveTo(lastX, lastY);
//     ctx.lineTo(e.offsetX, e.offsetY);
//     ctx.stroke();
//     [lastX, lastY] = [e.offsetX, e.offsetY];
//   }

//   function stopDrawing() {
//     isDrawing = false;
//   }

//   function erase() {
//     ctx.clearRect(0, 0, canvas.width, canvas.height);
//     ctx.drawImage(image, 0, 0, canvas.width, canvas.height);
//   }

//   var colorInput = document.getElementById('color');
//   var thicknessInput = document.getElementById('thickness');
//   var thicknessValue = document.getElementById('thicknessValue');

//   colorInput.addEventListener('input', setColor);
//   thicknessInput.addEventListener('input', setThickness);

//   function setColor() {
//     ctx.strokeStyle = colorInput.value;
//   }

//   function setThickness() {
//     var thickness = thicknessInput.value;
//     ctx.lineWidth = thickness;
//     thicknessValue.textContent = thickness;
//   }

//   image.src = '';
//   document.getElementById('textSizeTop').value = textSizeTop;
//   document.getElementById('textSizeBottom').value = textSizeBottom;
//   document.getElementById('textSizeTopOut').innerHTML = textSizeTop;
//   document.getElementById('textSizeBottomOut').innerHTML = textSizeBottom;

//   var saveButton = document.getElementById('saveButton');
// saveButton.addEventListener('click', saveCanvas);


  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}) (window, document);
