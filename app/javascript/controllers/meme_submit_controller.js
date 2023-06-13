import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "baseurlphoto" ]
  connect() {
  }

  getImageUrl(event) {
    event.preventDefault();
    let canvas = document.querySelector('canvas');
    if (canvas) {
      let baseurl = canvas.toDataURL('image/png');
      this.baseurlphotoTarget.value = baseurl;
    }
  };
};
