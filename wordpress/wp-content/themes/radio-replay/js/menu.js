(function ($) {
  $(".menu-open").click(function () {
    $(".sidebar").css("left", "0");
    $("body").css("overflow", "hidden");
  });

  $(".menu-close").click(function () {
    $(".sidebar").css("left", "100vw");
    $("body").css("overflow", "scroll");
  });
})(jQuery);
