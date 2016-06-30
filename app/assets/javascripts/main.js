(function() {

  var attachDashboardListeners = function() {
    // Init perfect scrollbar
    $(".sidebar").perfectScrollbar({
      suppressScrollX: true
    });

    // Sidebar: Toggle user info
    $(".sidebar-user__info").click(function() {
      $(".sidebar-user__nav").slideToggle(300, function() {
        $(".sidebar").perfectScrollbar("update");
      });
      return false;
    });

    // Sidebar: Toggle sidebar dropdown
    $(".sidebar-nav__dropdown > a").click(function() {
      $(this).parent("li").toggleClass("open");
      $(this).parent("li").find(".sidebar-nav__submenu").slideToggle(300, function() {
        $(".sidebar").perfectScrollbar("update");
      });
      return false;
    });

    // Sidebar: Toggle sidebar
    $("#sidebar__toggle, .sidebar__close").click(function() {
      $(".wrapper").toggleClass("alt");
      return false;
    });
  };

  var countToListeners = function() {
    if ( $(".count-to").length ) {
      $(".count-to").countTo({
        refreshInterval: 20
      });
    }
  };

  var addEventListeners = function() {
    if ($('.application-body').length > 0) {
      attachDashboardListeners();
      countToListeners();
    }
  }

  $(document).on('turbolinks:load', addEventListeners);
})();
