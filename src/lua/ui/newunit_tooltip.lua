function Supply_lines_rework:set_unit_tooltip(component, text)
  if not self.selected_character then return end;
  if not self.selected_character:faction():is_human() then return end;
  if not self.selected_character:has_military_force() then return end;

  self:logDebug("--------");
  self:logDebug("SET UNIT TOOLTIP FUNCTION IS STARTED");

  local component_name = component:Id();
  local unit_name = string.gsub(component_name, text, "")
  local unit_cost, basic_cost = self:get_unit_supply_params(unit_name, self.selected_character)

  self:logDebug("SET SUPPLY TEXT FUNCTION IS STARTED");

  local supply_text
  if unit_cost == nil then
    supply_text = self:get_unknown_text()
  else
    supply_text = self:construct_unit_supply_text(unit_cost, basic_cost, "SRW_unit_consume_future")
  end
  self:logDebug("SET SUPPLY TEXT FUNCTION IS FINISHED");


  self:finalize_unit_tooltip(component, supply_text, "\n")

  self:logDebug("SET UNIT TOOLTIP FUNCTION IS FINISHED");
end;
