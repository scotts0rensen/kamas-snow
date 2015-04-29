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
    li_ele = $(this).closest("li")
    total_ele = li_ele.find(".total")
    count_ele = li_ele.find(".count")
    $(total_ele).val("0")
    count_ele.each (index, ele) ->
      sub = parseInt($(ele).val() || 0) * parseInt($(ele).data("amount"))
      tot = parseInt(total_ele.val())
      tot = tot + sub
      total_ele.val(tot.toString())
