function Supply_lines_rework:change_army_tooltip(component)
  if not self.selected_character then return end;
  if not self.selected_character:has_military_force() then return end;

  local faction = self.selected_character:faction()
  local supply_balance = self:get_supply_balance(faction);
  local supply_penalty = self:get_supply_penalty(faction, supply_balance);
  local force = self.selected_character:military_force()

  local army_supply = self:get_army_supply(force, supply_penalty);
  local lord_name = self.selected_character:character_subtype_key();
  local lord_alias = self.lord_aliases[lord_name] or "empty"
  local char_list = force:character_list();
  local army_discounts = {};
  local skills_discounts = {};

  for j = 0, char_list:num_items() - 1 do
    local char = char_list:item_at(j);

    if(char:character_subtype_key() ~= lord_name) then
      army_supply = army_supply + self:get_this_agent_supply(self.selected_character);
    end;
  end;

  for key, value in pairs(self.group_discount) do
    local start_pos, end_pos = key:find(lord_name);
    if(start_pos) then
      local group_name = key:sub(end_pos + 2, -1);
      local group_key = self.units_group_overwriting[key] or group_name;
      army_discounts[group_key] = value;
    end
  end;

  for key, value in pairs(self.lord_skills_discount) do
    local start_pos, end_pos = key:find(lord_alias);
    if (start_pos == 0) then return end;
    local skill1 = value[2] or "empty";
    local skill2 = value[3] or "empty";

    if(self.selected_character:has_skill(skill1) or self.selected_character:has_skill(skill2)) then
      local group_name = key:sub(end_pos + 2, -1);
      local group_key = self.units_group_overwriting[key] or group_name;
      skills_discounts[group_key] = value[1];
    end;
  end; --of loop

  --concat tables
  for key, value in pairs(skills_discounts) do
    if (army_discounts[key] == nil) then
      army_discounts[key] = value;
    else
      army_discounts[key] = army_discounts[key] + value;
    end;
  end;

  --construct tooltip
  local text = "Supply for this army: "..army_supply;

  for group_key, value in pairs(army_discounts) do
    if group_key ~= "" and value ~= 0 then
      ----value > 0 ? "+1" : "-1"
      local valueText = value > 0 and "+"..tostring(value) or tostring(value);
      self:logCore(group_key);
      local groupText = self:get_localised_string(group_key)
      --its like a ||= b
      groupText = groupText == "" and group_key:sub(4, -1) or groupText;
      text = text.."\n[[col:yellow]]"..groupText..":[[/col]] "..valueText;
    end;
  end;

  if is_uicomponent(component) then 
    component:SetTooltipText(text, true)
  end;
end;