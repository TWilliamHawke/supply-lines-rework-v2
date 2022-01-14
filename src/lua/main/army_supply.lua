--====================================
-- Main script section start
--====================================

function Supply_lines_rework:get_army_supply(force, supply_penalty)

  local unit_list = force:unit_list();
  local commander = force:general_character();
  local this_army_supply = self.basic_lord_supply + supply_penalty;
  local character = commander:character_subtype_key()
  self:log("--------");
  self:log("Lord of this army is "..tostring(character));

  for j = 0, unit_list:num_items() - 1 do
    local unit = unit_list:item_at(j);
    local key = unit:unit_key();
    local val = nil;
    
    if unit:unit_class() == "com" then
      val = 0;
    else
      val = self:get_unit_supply_params(key, commander) or self:get_unknown_unit_supply(unit);
    end;

    if(val > 0) then
      this_army_supply = this_army_supply + val;
    end;
  end; --of units circle

  self:log("THIS ARMY REQUIRES "..tostring(this_army_supply).." SUPPLY POINTS")
  self:logDebug("CALCULATION SUPPLY FOR THIS ARMY IS FINISHED");
  return this_army_supply;
end;

