function Supply_lines_api:add_lord_skill_discount(lord_key, unit_group, value, lord_skill_key)
  if (type(lord_key) ~= "string") then
    self:log("ERROR: First argument in add_lord_skill_discount method should be a string")
    return;
  end;

  if (type(unit_group) ~= "string") then
    self:log("ERROR: Second argument in add_lord_skill_discount method should be a string")
    return;
  end;

  local text = effect.get_localised_string(string);
  if(text == "") then
    self:log("WARNING: Localisation string for unit group does not exist")

  end;

  if (type(value) ~= "number" or value == nil) then
    self:log("ERROR: Third argument in add_lord_skill_discount method should be a number")
    return;
  end;

  if (type(lord_skill_key) ~= "string") then
    self:log("ERROR: Forth argument in add_lord_skill_discount method should be a string")
    return;
  end;

  local lord_alias = Supply_lines_rework.lord_aliases[lord_key];

  if(lord_alias == nil) then
    Supply_lines_rework.lord_aliases[lord_key] = lord_key;
    lord_alias = lord_key;
  end;

  Supply_lines_rework.lord_skills_discount[lord_alias.."-"..unit_group] = {value, lord_skill_key}
end;