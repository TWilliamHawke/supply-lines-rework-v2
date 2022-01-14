--if unit not found in SRW_Supply_Cost
function Supply_lines_rework:get_unknown_unit_supply(unit)
  self:log("unknown unit: "..unit:unit_key())
  
  local ucost = unit:get_unit_custom_battle_cost()
  local unit_supply = 0;
  
  if ucost >= 1800 then
    unit_supply = 4;
  elseif ucost >= 1400 then
    unit_supply = 3;
  elseif ucost >= 1000 then
    unit_supply = 2;
  elseif ucost >= 600 then
    unit_supply = 1;
  end;

  return unit_supply + self.basic_unit_supply;
end;

