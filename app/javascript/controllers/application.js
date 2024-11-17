import { Application } from "@hotwired/stimulus"

import HelloController from "controllers/hello_controller"
import ConcertsController from "controllers/concerts_controller"

window.Stimulus = Application.start()
Stimulus.register("hello", HelloController)
Stimulus.register("concerts", ConcertsController)

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

Stimulus.handleError = (error, message, detail) => {
    console.warn(message, detail)
    // ErrorTrackingSystem.captureException(error)
}

export { application }
