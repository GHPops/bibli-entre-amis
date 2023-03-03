import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const French = require("flatpickr/dist/l10n/fr.js").default.fr;

export default class extends Controller {
  static targets = [ 'startDateInput', 'endDateInput' ]
  static values = { dates: Object}

  connect() {
    flatpickr(this.startDateInputTarget, {
      mode: 'range',
      "plugins": [new rangePlugin({input: this.endDateInputTarget})],
      "locale": French,
      "minDate": "today",
      disable: [...this.#parsedBookedDates().disable]
}) }

  #parsedBookedDates() {
    return this.datesValue
  }

}
