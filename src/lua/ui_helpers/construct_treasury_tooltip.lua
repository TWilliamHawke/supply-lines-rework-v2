function Supply_lines_rework:construct_treasury_tooltip(faction)
  self:logDebug("Constructor IS STARTED");

  local culture = faction:subculture();
  local force_list = faction:military_force_list();
  local lord_text = self:get_subculture_text(culture)
  local upkeep_percent, supply_points, supply_balance = self:get_player_faction_supply(faction);

  -- add 1% per each army (only for tooltip)
  for i = 0, force_list:num_items() - 1 do
    local force = force_list:item_at(i);

    if self:check_army_type(force, false) then
      upkeep_percent = upkeep_percent + 1;
    end;
  end;

  --first army dont have supply lines modificator
  upkeep_percent = upkeep_percent - 1;

  local supply_text = self:localizator("SRW_treasury_tooltip_supply")
  supply_text = string.gsub(supply_text, "SRW_supply", tostring(supply_points))

  local supply_balance_text = ""

  if self.enable_supply_balance and not (culture == "wh_dlc05_sc_wef_wood_elves") then
    supply_balance_text = self:localizator("SRW_supply_balance_text")..supply_balance
  end

  local tooltip_text = self:localizator("SRW_treasury_tooltip_main")..lord_text..supply_text..self:localizator("SRW_treasury_tooltip_upkeep")..tostring(upkeep_percent).."%"..supply_balance_text

  self:logDebug("-------------");
  self:logDebug("Constructor IS FINISHED");
  return tooltip_text
end;