import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "baseurlphoto" ]
  connect() {
  }

  getImageUrl(event) {
    event.preventDefault();
    console.log('getImageUrl echo');
    let canvas = document.querySelector('canvas');
    let baseurl = canvas.toDataURL('image/png');
    // blobCanvas = canvas.toBlob()
    this.baseurlphotoTarget.value = baseurl;
    // console.log(baseurl);
    // console.log(this.baseurlphotoTarget);
    // console.log(this.baseurlphotoTarget.value);
  };
};
