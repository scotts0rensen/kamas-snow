$ ->

  display_notice = ->
    msg = $(".flash-message").html()
    if msg
      $.growl.notice( {title: msg, message: ""} )

  highlight_current_menu = ->
    $(".selected").removeClass("selected")
    menu_id = $(".menu_id").val()
    $("#" + menu_id).addClass("selected")

  hide_home_inventory = ->
    $(".home").addClass("hidden")


  display_notice()
  highlight_current_menu()
  hide_home_inventory()

  $("#open_inventory").change (event) ->
    $.post "/inventory_email", date: $("#open_date").val()

  $(".auto-submit select,input[type=checkbox],input[type=radio]").change (event) ->
    $(this).parents("form").submit()

  $(".auto-submit-field").change (event) ->
    $(this).parents("form").submit()

  $(".count-money input[type=number]").change (event) ->
    ul_ele = $(this).closest("ul")
    total_ele = ul_ele.find(".total")
    count_ele = ul_ele.find(".count")
    $(total_ele).val("$0")
    count_ele.each (index, ele) ->
      sub = parseFloat($(ele).val() || 0) * parseFloat($(ele).data("amount"))
      tot = parseFloat(total_ele.val().substring(1))
      tot = (tot + sub).toFixed(2)
      total_ele.val("$" + tot.toString())
    $(this).parents("form").submit()

  $(".count-cups input[type=number]").change (event) ->
    row = $(this).closest(".row")
    total = row.find(".total")
    $(total).val("0")
    counts = row.find(".count")
    counts.each (index, count) ->
      sub = parseInt($(count).val() || 0) * parseInt($(count).data("amount"))
      tot = parseInt(total.val()) + sub
      total.val(tot.toString())
    $(this).parents("form").submit()

  $(document).keypress "h", (event) ->
    if event.ctrlKey
      $(".home").toggleClass("hidden")
