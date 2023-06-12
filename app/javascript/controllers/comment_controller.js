import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="comment"
export default class extends Controller {
  static targets = ["form", "commentsContainer"]

  // connect() {
  //   console.log("Hello from connect");
  // }
  // submit(e) {
  //   e.preventDefault();
  //   console.log("Hello from submit");
  //   let form = e.target.closest("form");
  //   form.submit();

  // }

  submit(event) {
    event.preventDefault();
    fetch(this.formTarget.action, {
      method: "POST", // Could be dynamic with Stimulus values
      headers: { "Accept": "application/json" },
      body: new FormData(this.formTarget)
    })
      .then(response => response.json())
      .then((data) => {
        console.log(data)
        if (data.inserted_item) {
          this.commentsContainerTarget.insertAdjacentHTML("beforeend", data.inserted_item)
        }
        this.formTarget.outerHTML = data.form
      })
  }


}
