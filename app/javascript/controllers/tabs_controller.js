import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tabs"
export default class extends Controller {
  static targets = ["tab"]

  connect() {
    console.log("Hello, Stimulus!")
  }

  toggle(event) {
    console.log("toggle")
    event.preventDefault()
    this.tabTargets.forEach(tab => tab.classList.remove("active"))
    event.currentTarget.classList.toggle("active")
  }
}
