function Supply_lines_rework:construct_unit_supply_text(cost, basic_cost, consume_text_key)

  if (cost == nil) then
    return self:get_unknown_text();
  end;

  local start_text_key = "SRW_unit_supply_cost_zero";
  if cost == 1 then
    start_text_key ="SRW_unit_supply_cost_one";
  elseif cost > 1 then
    start_text_key ="SRW_unit_supply_cost_many";
  end

  local supply_text = self:get_localised_string(start_text_key);

  if cost ~= basic_cost then
    local base_cost_text = self:get_localised_string("SRW_base_cost_text");
    base_cost_text = string.gsub(base_cost_text, "SRW_base_Cost", tostring(basic_cost));

    local lord_text = self:get_localised_string("SRW_lord_text");
    supply_text = self:form_yellow_line(supply_text..lord_text)..base_cost_text;
  else
    supply_text = self:form_yellow_line(supply_text);
  end;

  supply_text = string.gsub(supply_text, "SRW_consume", self:get_localised_string(consume_text_key));
  return string.gsub(supply_text, "SRW_Cost", tostring(cost));
end;
