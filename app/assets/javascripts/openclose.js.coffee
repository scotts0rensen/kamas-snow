flavors = {
  "red": ["Cherry", "Tigers Blood"],
  "yellow": ["Banana", "Ice Cream"],
  "orange": ["Orange"],
  "blue/brown": ["BYU", "Blue Raspberry", "Rootbeer"],
  "white": ["Coconut", "Pina Colada"]
}

$ ->
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

  $(".count-cups input[type=number]").change (event) ->
    row = $(this).closest(".row")
    total = row.find(".total")
    $(total).val("0")
    counts = row.find(".count")
    counts.each (index, count) ->
      sub = parseInt($(count).val() || 0) * parseInt($(count).data("amount"))
      tot = parseInt(total.val()) + sub
      total.val(tot.toString())

