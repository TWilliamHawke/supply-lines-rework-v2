--simplify function without lord check
function Supply_lines_rework:get_ai_army_supply(force)
  local this_army_supply = self.basic_lord_supply;
  local unit_list = force:unit_list();


  for j = 0, unit_list:num_items() - 1 do
    local unit = unit_list:item_at(j);
    local key = unit:unit_key();

    local unit_data = self.units_data[key];
    local unit_cost = 0;

    if unit:unit_class() == "com" then
      unit_cost = 0;
    elseif (unit_data == nil) then
      unit_cost = self:get_unknown_unit_supply(unit);
    else
      unit_cost = unit_data[1] + self.basic_unit_supply;
    end;

    if unit_cost > 0 then
      this_army_supply = this_army_supply + unit_cost;
    end;
  end; --units

  self:logAI("THIS ARMY HAS "..tostring(unit_list:num_items()).." UNITS");
  self:logAI("THIS ARMY REQUIRED "..tostring(this_army_supply).." SUPPLY POINTS");

  return this_army_supply

end;