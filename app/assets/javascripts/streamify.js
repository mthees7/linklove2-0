$(document).ready(function () {
  var $scrape_url = $("#scrape_url");
  if ($scrape_url.val()) {
    $scrape_url.trigger("paste");
  }
});