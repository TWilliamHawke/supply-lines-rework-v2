function Supply_lines_rework:get_unit_supply_params(unit_name, lord)
  self:logDebug("GET SUPPLY PARAMS FUNCTION IS STARTED");

  local is_basic_cost = true
  local unit_cost = nil;
  local unit_data = self.units_data[unit_name];
  

  self:logDebug("BASE UNIT COST TAKEN");
  if not lord or unit_data == nil then
    return unit_cost, true;
  end;

  unit_cost = unit_data[1] or 0;
  local unit_group = unit_data[2] or "";
  local lord_name = tostring(lord:character_subtype_key())
  local lord_discount = self.group_discount[lord_name.."-"..unit_group] or 0;
  local lord_alias = self.lord_aliases[lord_name]

  Supply_lines_rework:log("discount for "..lord_name.."-"..unit_group.." is "..tostring(lord_discount))


  self:logDebug("LORD TYPE CHECKED");


  if lord_alias ~= nil then
    local lord_skill_data = self.lord_skills_discount[lord_alias.."-"..unit_group];

    if lord_skill_data ~= nil then
      local potential_discount = lord_skill_data[1] or 0;

      local bonus_skill = lord_skill_data[2] or "srw_skill"
      local bonus_skill2 = lord_skill_data[3] or "srw_skill"
      if lord:has_skill(bonus_skill) or lord:has_skill(bonus_skill2) then
        local trait_level = lord:trait_points(bonus_skill);
        self:log("trait level is"..tostring(trait_level));
  
        lord_discount = lord_discount + potential_discount;
      end
    end
  end

  if lord_discount ~= 0 and unit_cost ~= nil then
    unit_cost = math.max(unit_cost + lord_discount, 0);
    self:log(unit_name.." in "..lord_name.." army costs "..tostring(unit_cost).." points");
    is_basic_cost = false;
  end


  self:logDebug("LORD SKILL CHECKED");

  if (unit_cost ~= nil) then
    unit_cost = unit_cost + self.basic_unit_supply
  end;

  if (lord_name == "wh2_main_def_black_ark" or lord_name == "wh2_main_def_black_ark_blessed_dread") and unit_cost ~= 0 then
    is_basic_cost = false
    unit_cost = 0
  end


  return unit_cost, is_basic_cost
end