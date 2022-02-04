function Supply_lines_rework:set_building_tooltip(component)
  local component_name = component:Id()
  component_name = string.gsub(component_name, "wh_main_emp_empire", "")

  --wood elves fix
  if self.main_building_wef[component_name] then return end

  local supply_balance_change = self.building_unit_bonus[component_name]

  if supply_balance_change == nil then
    for i = 1, #self.main_building_matches do
      local is_main_building = component_name:match(self.main_building_matches[i])
      if is_main_building then
        local building_level = (component_name:match("_(%d+)") - 3) * self.big_city_penalty;
        if building_level > 0 then
          supply_balance_change = -building_level
        end
        break;

      end --of match check
      
    end; --of loop

    if supply_balance_change == nil then
      return
    end;
  
  end;

  supply_balance_change = math.min(supply_balance_change, self.max_balance_per_buildings)
  self:logDebug("supply_balance_change was calculated correctly");

  if supply_balance_change > 0 then
    supply_balance_change = "+"..supply_balance_change
  end

  local supply_text = supply_balance_change.." "..self:get_localised_string("SRW_building_supply")
  self:logDebug("supply_balance_text was set correctly");

  cm:callback(function()
    self:finalize_unit_tooltip(component, supply_text, "\n")
  end, 0.1);

  

end;

