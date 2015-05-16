module InventoriesHelper
  def flavor_desc(amount)
    return "Full" if amount == 1
    return "3/4" if amount == 0.75
    return "1/2" if amount == 0.5
    return "1/4" if amount == 0.25
    return "Empty" if amount == 0
  end
end
