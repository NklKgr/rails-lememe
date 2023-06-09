import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "baseurlphoto" ]
  connect() {
  }

  getImageUrl(event) {
    event.preventDefault();
    console.log('hello from get image url')
    let canvas = document.querySelector('canvas');
    console.log(canvas)
    let baseurl = canvas.toDataURL('image/png');
    console.log(baseurl)
    this.baseurlphotoTarget.value = baseurl;
  };
};
