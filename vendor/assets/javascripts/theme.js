/**
 * Custom JS
 */

 // Sidebar

$(function() {

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

});


// Charts

$(function() {

	// Define colors
	var brandAccentColor = "rgba(164, 113, 198, 1)";
	var brandPinkColor = "rgba(240, 98, 146, 1)";
	var brandOrangeColor = "rgba(255, 138, 101, 1)";
	var brandTealColor = "rgba(77, 182, 172, 1)";

	function chartColor(color, opacity) {
		var color = color.slice(0,-2) + opacity + ")";
		return color;
	}

	// Charts: Visitors
	if ($(".chart_visitors").length) {

		Chart.defaults.global.responsive = true;
		Chart.defaults.global.legend.display = false;
		
		var ctx = $(".chart_visitors").get(0).getContext("2d");
		var chartVisitors = new Chart(ctx, {
			type: "line",
			data: {
				labels: ["01/03", "02/03", "03/03", "04/03", "05/03", "06/03", "07/03"],
				datasets: [
					{
						label: "Unique visitors",
			            fill: true,
			            borderWidth: 2,
			            backgroundColor: chartColor(brandAccentColor, .2),
			            borderColor: chartColor(brandAccentColor, .5),
			            pointBorderColor: "#fff",
			            pointBackgroundColor: chartColor(brandAccentColor, .5),
			            pointBorderWidth: 2,
			            pointHoverBackgroundColor: chartColor(brandAccentColor, 5),
			            pointHoverBorderColor: "#fff",
			            pointHoverBorderWidth: 2,
			            pointRadius: 3,
						data: [280, 480, 450, 190, 860, 270, 900]
					}
				]
			}
		});
	}

	// Charts: Revenue
	if ($(".chart_revenue").length) {

		Chart.defaults.global.responsive = true;
		Chart.defaults.global.legend.display = false;
		
		var ctx = $(".chart_revenue").get(0).getContext("2d");
		var chartRevenue = new Chart(ctx, {
			type: "line",
			data: {
				labels: ["Oct", "Nov", "Dec", "Jan", "Feb", "Mar"],
				datasets: [
					{
			            label: "Revenue",
			            fill: true,
			            borderWidth: 2,
			            backgroundColor: chartColor(brandAccentColor, .2),
			            borderColor: chartColor(brandAccentColor, .5),
			            pointBorderColor: "#fff",
			            pointBackgroundColor: chartColor(brandAccentColor, .5),
			            pointBorderWidth: 2,
			            pointHoverBackgroundColor: chartColor(brandAccentColor, 5),
			            pointHoverBorderColor: "#fff",
			            pointHoverBorderWidth: 2,
			            pointRadius: 3,
			            data: [18, 14, 26, 22, 28, 40],
					}
				]
			}
		});
	}

	// Chart examples: Line chart
	if ($(".chart_linechart").length) {

		Chart.defaults.global.responsive = true;
		Chart.defaults.global.legend.display = false;
		
		var ctx = $(".chart_linechart").get(0).getContext("2d");
		var chartLineChart = new Chart(ctx, {
			type: "line",
			data: {
			labels: ["January", "February", "March", "April", "May", "June", "July"],
				datasets: [
					{
						label: "My First dataset",
			            fill: true,
			            borderWidth: 2,
			            backgroundColor: chartColor(brandOrangeColor, .2),
			            borderColor: chartColor(brandOrangeColor, .5),
			            pointBorderColor: "#fff",
			            pointBackgroundColor: chartColor(brandOrangeColor, .5),
			            pointBorderWidth: 2,
			            pointHoverBackgroundColor: chartColor(brandOrangeColor, 5),
			            pointHoverBorderColor: "#fff",
			            pointHoverBorderWidth: 2,
			            pointRadius: 3,
						data: [65, 59, 80, 81, 56, 55, 40]
					},
					{
						label: "My Second dataset",
			            fill: true,
			            borderWidth: 2,
			            backgroundColor: chartColor(brandAccentColor, .2),
			            borderColor: chartColor(brandAccentColor, .5),
			            pointBorderColor: "#fff",
			            pointBackgroundColor: chartColor(brandAccentColor, .5),
			            pointBorderWidth: 2,
			            pointHoverBackgroundColor: chartColor(brandAccentColor, 5),
			            pointHoverBorderColor: "#fff",
			            pointHoverBorderWidth: 2,
			            pointRadius: 3,
						data: [28, 48, 40, 19, 86, 27, 90]
					}
				]
			}
		});
	}

	// Chart examples: Bar chart
	if ($(".chart_barchart").length) {

		Chart.defaults.global.responsive = true;
		Chart.defaults.global.legend.display = false;
		
		var ctx = $(".chart_barchart").get(0).getContext("2d");
		var chartBarChart = new Chart(ctx, {
			type: "bar",
			data: {
				labels: ["January", "February", "March", "April", "May", "June", "July"],
				datasets: [
					{
						label: "My First dataset",
			            fill: true,
			            borderWidth: 1,
			            backgroundColor: chartColor(brandOrangeColor, .2),
			            borderColor: chartColor(brandOrangeColor, .5),
			            pointBorderColor: "#fff",
			            pointBackgroundColor: chartColor(brandOrangeColor, .5),
			            pointBorderWidth: 2,
			            pointHoverBackgroundColor: chartColor(brandOrangeColor, 5),
			            pointHoverBorderColor: "#fff",
			            pointHoverBorderWidth: 2,
			            pointRadius: 3,
						data: [65, 59, 80, 81, 56, 55, 40]
					},
					{
						label: "My Second dataset",
			            fill: true,
			            borderWidth: 1,
			            backgroundColor: chartColor(brandAccentColor, .2),
			            borderColor: chartColor(brandAccentColor, .5),
			            pointBorderColor: "#fff",
			            pointBackgroundColor: chartColor(brandAccentColor, .5),
			            pointBorderWidth: 2,
			            pointHoverBackgroundColor: chartColor(brandAccentColor, 5),
			            pointHoverBorderColor: "#fff",
			            pointHoverBorderWidth: 2,
			            pointRadius: 3,
						data: [28, 48, 40, 19, 86, 27, 90]
					}
				]	
			}
		}, {
			barStrokeWidth: 1
		});
	}

	// Chart examples: Radar chart
	if ($(".chart_radarchart").length) {

		Chart.defaults.global.responsive = true;
		Chart.defaults.global.legend.display = false;
		
		var ctx = $(".chart_radarchart").get(0).getContext("2d");
		var chartBarChart = new Chart(ctx, {
			type: "radar",
			data: {
				labels: ["January", "February", "March", "April", "May", "June", "July"],
				datasets: [
					{
						label: "My First dataset",
			            fill: true,
			            borderWidth: 2,
			            backgroundColor: chartColor(brandAccentColor, .2),
			            borderColor: chartColor(brandAccentColor, .5),
			            pointBorderColor: "#fff",
			            pointBackgroundColor: chartColor(brandAccentColor, .5),
			            pointBorderWidth: 2,
			            pointHoverBackgroundColor: chartColor(brandAccentColor, 5),
			            pointHoverBorderColor: "#fff",
			            pointHoverBorderWidth: 2,
			            pointRadius: 3,
						data: [65, 59, 80, 81, 56, 55, 40]
					},
					{
						label: "My Second dataset",
			            fill: true,
			            borderWidth: 2,
			            backgroundColor: chartColor(brandOrangeColor, .2),
			            borderColor: chartColor(brandOrangeColor, .5),
			            pointBorderColor: "#fff",
			            pointBackgroundColor: chartColor(brandOrangeColor, .5),
			            pointBorderWidth: 2,
			            pointHoverBackgroundColor: chartColor(brandOrangeColor, 5),
			            pointHoverBorderColor: "#fff",
			            pointHoverBorderWidth: 2,
			            pointRadius: 3,
						data: [28, 48, 40, 19, 86, 27, 90]
					}
				]	
			}
		});
	}

	// Chart examples: Polar Area chart
	if ($(".chart_polarareachart").length) {

		Chart.defaults.global.responsive = true;
		Chart.defaults.global.legend.display = false;
		
		var ctx = $(".chart_polarareachart").get(0).getContext("2d");
		var chartPolarAreaChart = new Chart(ctx, {
			type: "polarArea", 
			data: {
				datasets: [{
					data: [290, 90, 140, 190],
					backgroundColor: [
						chartColor(brandAccentColor, .7),
						chartColor(brandOrangeColor, .7),
						chartColor(brandPinkColor, .7),
						chartColor(brandTealColor, .7)
					],
					hoverBackgroundColor: [
						chartColor(brandAccentColor, .9),
						chartColor(brandOrangeColor, .9),
						chartColor(brandPinkColor, .9),
						chartColor(brandTealColor, .9)
					],
					label: ["Accent", "Orange", "Pink", "Teal"],
					borderWidth: 0
				}], 
				labels: ["Accent", "Orange", "Pink", "Teal"]
			}
		})
	}

	// Chart examples: Pie chart
	if ($(".chart_radarchart").length) {

		Chart.defaults.global.responsive = true;
		Chart.defaults.global.legend.display = false;
		
		var ctx = $(".chart_piechart").get(0).getContext("2d");
		var chartPieChart = new Chart(ctx, {
			type: "pie",
			data: {
				datasets: [{
					data: [300, 50, 100],
					backgroundColor: [
						chartColor(brandAccentColor, .8),
						chartColor(brandOrangeColor, .8),
						chartColor(brandPinkColor, .8)
					],
					hoverBackgroundColor: [
						chartColor(brandAccentColor, .9),
						chartColor(brandOrangeColor, .9),
						chartColor(brandPinkColor, .9)
					],
					labels: ["Accent", "Orange", "Pink"]
				}],
				labels: ["Accent", "Orange", "Pink"]
			}
		});
	}

	// Chart examples: Doughnut chart
	if ($(".chart_doughnutchart").length) {

		Chart.defaults.global.responsive = true;
		Chart.defaults.global.legend.display = false;
		
		var ctx = $(".chart_doughnutchart").get(0).getContext("2d");
		var chartDoughnutChart = new Chart(ctx, {
			type: "doughnut",
			data: {
				datasets: [{
					data: [300, 50, 100],
					backgroundColor: [
						chartColor(brandAccentColor, .8),
						chartColor(brandOrangeColor, .8),
						chartColor(brandPinkColor, .8)
					],
					hoverBackgroundColor: [
						chartColor(brandAccentColor, .9),
						chartColor(brandOrangeColor, .9),
						chartColor(brandPinkColor, .9)
					],
					labels: ["Accent", "Orange", "Pink"]
				}],
				labels: ["Accent", "Orange", "Pink"]
			}
		});
	}

});


// Counto To

$(function() {

	if ( $(".count-to").length ) {

		$(".count-to").countTo({
			refreshInterval: 20
		});

	}

});


// Smart alerts

$(function() {
	if ($(".smart-alert").length) {

		// Init smart alerts
		var smartAlerts = new SmartAlerts();

		// Generate alerts (ui_alerts.html example)
			$(".smart-alert").each(function() {
				var alertType = $(this).data("alert-type");
				var alertContent = $(this).data("alert-content");

				$(this).click(function() {
					smartAlerts.generate(alertType, alertContent);
					return false;
				});
			});
			
	}
});


// Datatables

$(function() {

	if ( $("#datatables__example").length ) {

		$("#datatables__example").DataTable({
			dom: "f"
		});

	}

});


// Inbox

$(function() {

	if ( $(".inbox__table").length ) {

		$(".inbox__table").DataTable({
		});

	}

});


// Orders

$(function() {

	if ( $("#orders__table").length ) {

		$("#orders__table").DataTable({
		});

	}

});


// Collapse plugin

$("[data-toggle='collapse']").click(function(e) {
	e.preventDefault();
});