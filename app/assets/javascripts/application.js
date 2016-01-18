// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

$("#add_checklist").click(function() {
    //window.alert("clicked internal btn!");
    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "/case_profile/1#",
        //data: "{'data1':'" + value1+ "', 'data2':'" + value2+ "', 'data3':'" + value3+ "'}",
        data: {name:"ravi",age:"31"},
        dataType: "json",
        success: function (result) {
            //do somthing here
            window.alert("success!!");
        },
        error: function (){
            window.alert("something wrong!");
        }
    });
});
