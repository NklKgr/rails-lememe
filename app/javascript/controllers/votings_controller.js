import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="voting"
export default class extends Controller {
  static targets = ["upvotes"]

  connect() {
    // console.log("Hello, Stimulus!")
  }

  upvote(event) {
    event.preventDefault();
    const id = this.data.get("id")
    const url = `/memes/${id}/upvote`
    fetch(url, { method: "POST" })
      .then(response => response.json())
      .then((data) => {
        this.upvotesTarget.innerHTML = data.votes
      }
    )
  }
}
