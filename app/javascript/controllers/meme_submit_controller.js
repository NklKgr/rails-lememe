import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="meme-submit"
export default class extends Controller {
  connect() {

    // console.log("Hello, Stimulus");
    // var canvas = document.querySelector('#canvas');
    // var image = canvas.captureImage();
    // console.log(image);
  }

  blob(event) {
    event.preventDefault();
    console.log('hello from blob');
    let canvas = document.querySelector('canvas');
    canvas.toBlob(function(blob) {
      console.log(URL.createObjectURL(blob));
  });
  };
  // blob() {
  //   // event.preventDefault();
  //   console.log('hellol from blob');
  //   let canvas = document.querySelector('canvas');
  //   var dataURL = canvas.toDataURL("image/png");
  //   // Convert data URL to Blob
  //   var blob = dataURItoBlob(dataURL);
  //   // Function to convert data URL to Blob
  //   function dataURItoBlob(dataURI) {
  //     var byteString = atob(dataURI.split(',')[1]);
  //     var mimeString = dataURI.split(',')[0].split(':')[1].split(';')[0];
  //     var ab = new ArrayBuffer(byteString.length);
  //     var ia = new Uint8Array(ab);
  //     for (var i = 0; i < byteString.length; i++) {
  //       ia[i] = byteString.charCodeAt(i);
  //     }
  //     return new Blob([ab], { type: mimeString });
  //   }
  //   // Use the Blob object
  //   console.log("Blob obtained:", blob);
  // }
};
