import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.textContent = "Hello World!"
  }
}

import flatpickr from "flatpickr"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

export default class extends Controller {
  static targets = [ 'startDateInput', 'endDateInput' ]
  connect() {
    flatpickr(this.startDateInputTarget, {
      mode: 'range',
      "plugins": [new rangePlugin({ input: this.endDateInputTarget})]
}) }
}
