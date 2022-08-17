function Supply_lines_rework:get_unknown_text()
  local unknown_text = self:get_localised_string("SRW_unit_supply_cost_unknown_new");
  return self:form_yellow_line(unknown_text);
end;

