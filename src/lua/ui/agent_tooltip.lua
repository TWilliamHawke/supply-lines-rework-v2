function Supply_lines_rework:set_agent_tooltip(component)
  if not self.selected_character then return end;
  if not self.selected_character:faction():is_human()  then return end;
  local agent_supply_cost = 0;

  if self.selected_character:has_military_force() then 
    local charlist = self.selected_character:military_force():character_list()
    local agent_number = component:Id():match("(%d+)")
    if(tonumber(agent_number) >= charlist:num_items()) then return end;

    local character = charlist:item_at(tonumber(agent_number));
    if not character then return end;

    self:logDebug("Character # "..tostring(agent_number).." is "..tostring(character:character_subtype_key()))
    agent_supply_cost = self:get_this_agent_supply(character);
  else
    self:logDebug("Selected agent rank is "..tostring(self.selected_character:rank()))
    agent_supply_cost = self:get_this_agent_supply(self.selected_character);
  end;


  local supply_text = self:get_localised_string("SRW_agent_supply_cost")
  supply_text = string.gsub(supply_text, "SRW_Cost", agent_supply_cost);


  self:finalize_unit_tooltip(component, supply_text, "\n")

end;