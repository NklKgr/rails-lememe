import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="voting"
export default class extends Controller {
  static targets = ["upvotes"]

  connect() {
    // console.log("Hello, Stimulus!")
  }

  addVoteClass(event) {
    // event.preventDefault();
    event.currentTarget.classList.add('clicked-vote');
  }

  upvote(event) {
    // console.log("upvote")
    event.preventDefault();
    const id = this.data.get("id")
    const url = `/memes/${id}/upvote`
    fetch(url, { method: "PATCH" })
      .then(response => response.json())
      .then((data) => {
        // this.upvotesTarget.innerHTML = data.votes
        console.log(data)
      }
    )
  }
}
