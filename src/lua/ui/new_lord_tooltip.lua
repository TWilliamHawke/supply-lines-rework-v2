function Supply_lines_rework:set_new_lord_tooltip(component)
  if not self.enable_supply_balance or (self.max_balance_per_army == 0) then
    return
  end;
  
  self:logDebug("Supply balance is on")
  local faction = cm:model():world():whose_turn_is_it()
  local culture = faction:subculture();

  if culture == "wh_dlc05_sc_wef_wood_elves" then return end;

  local supply_balance = self:get_supply_balance(faction)

  local force_list = faction:military_force_list();
  local current_army_count = self:get_army_count(force_list)
  local future_army_count = current_army_count + 1
  local supply_decreasing = math.min(current_army_count, self.max_balance_per_army)

  local current_supply_penalty = 0
  if supply_balance < 0 then
    current_supply_penalty = self:calculate_supply_penalty(supply_balance*-1, current_army_count)*current_army_count
  end
  
  local negative_balance = supply_decreasing - supply_balance
  

  if negative_balance < 0 then
    negative_balance = 0
  end;


  local future_supply_penalty = self:calculate_supply_penalty(negative_balance, future_army_count)*future_army_count
  self:logDebug("future supply penalty is "..tostring(future_supply_penalty))


  local tooltip_text = self:localizator("SRW_new_lord_supply_balance")..supply_balance..self:localizator("SRW_new_lord_decrease")..supply_decreasing..self:localizator("SRW_new_lord_consumption")..tostring(future_supply_penalty - current_supply_penalty)

  self:logDebug("tooltip text finished")
  self:logDebug("---------------------")

  if future_supply_penalty > 20 then
    tooltip_text = tooltip_text..self:localizator("SRW_new_lord_suggestion")
  end;

  if is_uicomponent(component) then 
    component:SetTooltipText(tooltip_text, true)
  end;

end

