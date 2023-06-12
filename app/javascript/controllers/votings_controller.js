import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="voting"
export default class extends Controller {
  static targets = ["upvotes", "upvoteBtn", "downvoteBtn" ]

  connect() {
    // console.log("Hello, Stimulus!")
  }

  addVoteClass(event) {
    if (event.currentTarget === this.upvoteBtnTarget && this.downvoteBtnTarget.classList.contains('clicked-vote')) {
      this.downvoteBtnTarget.classList.remove('clicked-vote');

    } else if (event.currentTarget === this.downvoteBtnTarget && this.upvoteBtnTarget.classList.contains('clicked-vote')) {
      this.upvoteBtnTarget.classList.remove('clicked-vote');
    }

    if (event.currentTarget.classList.contains('clicked-vote')) {
      event.currentTarget.classList.remove('clicked-vote');
      this.upvotesTarget.innerText = parseInt(this.upvotesTarget.innerText) - 1
    } else {
      event.currentTarget.classList.add('clicked-vote');
      this.upvotesTarget.innerText = parseInt(this.upvotesTarget.innerText) + 1
    }
  }

  addVoteClassDown(event) {
    // if (event.currentTarget.classList.contains('clicked-vote')) {
    //   event.currentTarget.classList.remove('clicked-vote');
    //   this.upvotesTarget.innerText = parseInt(this.upvotesTarget.innerText) + 1
    // } else {
    //   event.currentTarget.classList.add('clicked-vote');
    //   this.upvotesTarget.innerText = parseInt(this.upvotesTarget.innerText) - 1
    // }
    if (event.currentTarget === this.downvoteBtnTarget && this.upvoteBtnTarget.classList.contains('clicked-vote')) {
      this.upvoteBtnTarget.classList.remove('clicked-vote');

    } else if (event.currentTarget === this.upvoteBtnTarget && this.downvoteBtnTarget.classList.contains('clicked-vote')) {
      this.upvoteBtnTarget.classList.remove('clicked-vote');
    }

    if (event.currentTarget.classList.contains('clicked-vote')) {
      event.currentTarget.classList.remove('clicked-vote');
      this.upvotesTarget.innerText = parseInt(this.upvotesTarget.innerText) + 1
    } else {
      event.currentTarget.classList.add('clicked-vote');
      this.upvotesTarget.innerText = parseInt(this.upvotesTarget.innerText) - 1
    }
  }

  upvote(event) {
    event.preventDefault();
    console.log("upvote")
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
