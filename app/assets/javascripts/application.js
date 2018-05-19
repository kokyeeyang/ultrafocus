// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require jquery

$(document).ready(function(){
	 $('#title_form').keyup(function(event){
    $.ajax({
      type: "GET",
      url: "/search",
      data: $(this).serialize(),
      success:function(data){
        var list = document.getElementById("list")
       	list.innerHTML = ''

      	data.forEach(function(listing){
        	var option = document.createElement('option')
      		var title = list.title 
      		option.value = list

      		// if( list.  ){
      		list.appendChild(option)
      	})
      }
    });
  })
})