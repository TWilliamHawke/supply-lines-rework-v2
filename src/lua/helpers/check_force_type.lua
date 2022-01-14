function Supply_lines_rework:check_army_type(force, is_upkeep_check)
  --garrisons check
  if force:is_armed_citizenry() then
    return false;
  elseif not force:has_general() then
    return false
  end

  --armies start
  local force_general = force:general_character():character_subtype_key();

  if force_general == "wh2_main_def_black_ark" then
    return false;
  elseif force_general == "wh2_main_def_black_ark_blessed_dread" then
    return false;
    --gotrek doesn`t affect supply reserves but his army still increases upkeep
  elseif self.no_balance_lords[force_general] == 1 and not is_upkeep_check then
    return false;
  elseif force:force_type():key() == "SUPPORT_ARMY" then
    return false;
  elseif force:has_effect_bundle("wh2_dlc12_bundle_underempire_army_spawn") then
    return false;
  else
    return true;
  end;

  return true;
end;