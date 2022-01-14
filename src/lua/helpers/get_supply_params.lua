function Supply_lines_rework:get_unit_supply_params(unit_name, lord)
  self:logDebug("GET SUPPLY PARAMS FUNCTION IS STARTED");

  local is_basic_cost = true
  local unit_cost = self.units_cost[unit_name]


  self:logDebug("BASE UNIT COST TAKEN");
  if not lord then
    return unit_cost, true;
  end;

  local lord_name = tostring(lord:character_subtype_key())
  local free_cost = self.free_Units[unit_name.."-"..lord_name];
  local lord_alias = self.lord_aliases[lord_name]

  if free_cost ~= nil then
    self:log(unit_name.." in "..lord_name.." army will costs "..tostring(free_cost).." points");
    unit_cost = free_cost;
    is_basic_cost = false;
  end

  self:logDebug("LORD TYPE CHECKED");


  if lord_alias ~= nil then
    local lord_skill_data = self.lord_Skills_Cost[unit_name.."-"..lord_alias];

    if lord_skill_data ~= nil then

      local bonus_skill = lord_skill_data[1] or "srw_skill"
      local bonus_skill2 = lord_skill_data[3] or "srw_skill"
      if lord:has_skill(bonus_skill) or lord:has_skill(bonus_skill2) then
        is_basic_cost = false
        unit_cost = lord_skill_data[2];
      end
    end
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