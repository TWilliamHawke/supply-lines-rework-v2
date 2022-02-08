function Supply_lines_api:add_garrison_building(building_key)

  if (type(building_key) ~= "string") then
    self:log("ERROR: Argument in \"add_garrison_building\" method should be a string")
    return;
  end;


  Supply_lines_rework.building_unit_bonus[building_key] = -1;
end;