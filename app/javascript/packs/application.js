// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
// require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("form/employee_create")
require("form/worker_create")
require("form/chat_create")
require("form/task_create")
require("form/customer_create")
require("form/customer_meeting_create")
require("form/customer_meeting_edit")
require("form/customer_construction_create")
require("form/customer_construction_edit")
require("customer/status_color")
require("sidebar/search_form")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
