function Supply_lines_api:set_military_building_level(building_key, settlement_level)
  if (type(settlement_level) ~= "number" or settlement_level == nil) then
    self:log("ERROR: Second argument in set_military_building_level method should be a number")
    return;
  end;

  if (settlement_level < 0) then
    self:log("ERROR: Second argument in set_military_building_level method shouldn't be above a zero")
    return;
  end;

  if (type(building_key) ~= "string") then
    self:log("ERROR: First argument in set_military_building_level method should be a string")
    return;
  end;

  Supply_lines_rework.building_unit_bonus[building_key] = settlement_level;

end;