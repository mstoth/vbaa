import { Controller } from "@hotwired/stimulus"
import flatpickr from 'flatpickr'
// application.register('flatpickr', Flatpickr)

// Connects to data-controller="concerts"
export default class extends Controller {
  connect() {
    flatpickr(".start_time",{
      enableTime: true,
      dateFormat: "Y-m-d H:i",
    })
    flatpickr(".end_time",{
      enableTime: true,
      dateFormat: "Y-m-d H:i",
    })
  }
}
