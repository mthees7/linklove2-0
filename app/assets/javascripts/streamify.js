$(document).ready(function () {
  var $scrape_url = $("#scrape_url");
  if ($scrape_url.val()) {
    $scrape_url.trigger("paste");
  }

  // Hide navigation when in iframe.
  if (window != window.top) {
    $('body').addClass('chrome-extension');
  }
});