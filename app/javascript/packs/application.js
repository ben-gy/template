// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

require("@client-side-validations/client-side-validations")
require("@client-side-validations/simple-form")

// Ahoy tracking
import ahoy from "ahoy.js";
ahoy.configure({cookies: true}); // (GDPR: false)
ahoy.trackAll();
