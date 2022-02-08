function Supply_lines_api:add_unit_group_localisation(unit_group, localisation_key)
  if (type(unit_group) ~= "string" or type(localisation_key) ~= "string") then
    self:log("ERROR: Both arguments in add_unit_group_localisation method should be a string")
    return;
  end;

  Supply_lines_rework.units_group_localisation[unit_group] = localisation_key;

end;