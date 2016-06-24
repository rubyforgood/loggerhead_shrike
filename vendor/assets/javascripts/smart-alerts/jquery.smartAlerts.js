/**
 * Smart Alerts plugin by Simpleqode.com
 */

function SmartAlerts() {

	// Create an alerts container
	this._alertsContainer = $('<div class="smart-alerts__container"></div>');

	// Append the alerts container to the body
	$("body").append(this._alertsContainer);
}
SmartAlerts.prototype.generate = function(alertType, alertContent) {

	var alert = 
	$('<div class="alert alert-' + alertType + '">' + alertContent + '</div>');

	// Insert an alert inside the alerts container
	$(".smart-alerts__container").prepend(alert);

	// Fade out the alert
	setTimeout(function() {
		alert.fadeOut();
	}, 2000);
}