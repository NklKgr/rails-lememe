import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "baseurlphoto" ]
  connect() {
  }

  getImageUrl(event) {
    console.log("first")
    // event.preventDefault();
    let canvas = document.querySelector('canvas');
    if (canvas) {
      let baseurl = canvas.toDataURL('image/png');
      console.log(this.baseurlphotoTarget.value);
      this.baseurlphotoTarget.value = baseurl;
      // canvas.baseurlphotoTarget.value = baseurl;
    }
  };
};
