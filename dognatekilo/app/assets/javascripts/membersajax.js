
$(function() {
  $("#supplytable th a, #supplytable.pagination a").on("click", function() {
    $.getScript(this.href);
    return false;
  });
  $("#wish_table th a, #wish_table.pagination a").on("click", function() {
  	$.getScript(this.href);
  	return false;
  });
  $("#supplies_search input").keyup(function() {
    $.get($("#supplies_search").attr("action"), $("#supplies_search").serialize(), null, "script");
    return false;
  });
  $("#wish_search input").keyup(function() {
  	$.get($("#wish_search").attr("action"), $("wish_search").serialize(), null, "script");
  })



});