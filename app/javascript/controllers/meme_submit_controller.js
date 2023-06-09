import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "baseurlphoto" ]
  connect() {
  }

  getImageUrl(event) {
    event.preventDefault();
    let baseurl = canvas.toDataURL('image/png');
    this.baseurlphotoTarget.value = baseurl;
  };
};
