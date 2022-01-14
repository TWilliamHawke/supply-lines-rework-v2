function Supply_lines_rework:set_supply_text(cost, is_basic_value, is_present)

  if cost <= 0 then
    return self:ui_tooltip_localizator("SRW_unit_supply_cost_zero", is_basic_value, is_present);
  elseif cost == 1 then
    return self:ui_tooltip_localizator("SRW_unit_supply_cost_one", is_basic_value, is_present);
  else
    local imported_text = self:ui_tooltip_localizator("SRW_unit_supply_cost_many", is_basic_value, is_present);
    return string.gsub(imported_text, "SRW_Cost", tostring(cost));
  end

  return self:get_unknown_text()
end
