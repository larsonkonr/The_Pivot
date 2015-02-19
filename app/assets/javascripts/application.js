// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .
//
//
var checkBox = "input[type=checkbox]";
var checked = "input[type=checkbox]:checked";
//

var $categoryCheckboxes = $('.category-checkbox');


// filters the suppliers items from checkbox clicked
var $filterSupplierItems = 	$(".supplier_list" + checkBox).click(function(){
		$('.suppliers').hide();
		var $selectedSupplier = $(checked).map(function(index, element){
			return '.' + $(element).val()
		});
		var suppliers = $.makeArray($selectedSupplier).join(",");
		suppliers ? $(suppliers).show() : $('.suppliers').show();
	});


// filters the categories from the checkbox clicked
var $filterCategoryItems = $(checkBox).click(function(){
	$('.categories').hide();
	var $checkedBoxes = $categoryCheckboxes
	.filter(function (index, element) {
		return $(element).prop('checked')
	});
	$checkedBoxes.each(function (index, element) {
			$('.' + $(element).val()).show()
		});
});


$(document).ready(function(){
  $(".not_logged_in").click(function(){
    alert("You must be logged in to check out!")
  });

	$filterCategoryItems;
	$filterSupplierItems;

});
