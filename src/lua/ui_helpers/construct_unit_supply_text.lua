function Supply_lines_rework:construct_unit_supply_text(cost, basic_cost, consume_text_key)

  if (cost == nil) then
    return self:get_unknown_text()
  end;

  local start_text_key = "SRW_unit_supply_cost_zero";
  if cost == 1 then
    start_text_key ="SRW_unit_supply_cost_one"
  elseif cost > 1 then
    start_text_key ="SRW_unit_supply_cost_many"
  end

  local imported_text = self:ui_tooltip_localizator(start_text_key, cost == basic_cost, consume_text_key)

  imported_text = string.gsub(imported_text, "SRW_base_Cost", tostring(basic_cost))   
  return string.gsub(imported_text, "SRW_Cost", tostring(cost)); 
end

function Supply_lines_rework:ui_tooltip_localizator(start_text_key, is_basic_value, consume_text_key)
  local lord_text = ""

  if not is_basic_value then
    lord_text = self:get_localised_string("SRW_lord_text")
  end;

  local supply_string = self:get_localised_string(start_text_key).." "..lord_text;
  return start_text_key.gsub(supply_string, "SRW_consume", self:get_localised_string(consume_text_key));

end;
