function Supply_lines_rework:change_army_tooltip(component)
  if not self.selected_character then return end;
  if not self.selected_character:has_military_force() then return end;

  local faction = self.selected_character:faction()
  local supply_balance = self:get_supply_balance(faction);
  local supply_penalty = self:get_supply_penalty(faction, supply_balance);
  local force = self.selected_character:military_force()

  local army_supply = self:get_army_supply(force, supply_penalty);

  local text = "its ok"..army_supply
  local lord_name = tostring(self.selected_character:character_subtype_key());


  for key, value in pairs(self.group_discount) do
    local start_pos, end_pos = key:find(lord_name);
    if(start_pos) then
      local group_name = key:sub(end_pos + 1, -1);
      text = text.."\n"..group_name..": "..tostring(value);
    end
  end;

  local lord_alias = self.lord_aliases[lord_name] or "empty"

  for key, value in pairs(self.lord_skills_discount) do
    local start_pos, end_pos = key:find(lord_alias);
    if(start_pos) then
      local skill1 = value[2] or "empty";
      local skill2 = value[3] or "empty";
      if(self.selected_character:has_skill(skill1) or self.selected_character:has_skill(skill2)) then
        local group_name = key:sub(end_pos + 2, -1);
        text = text.."\n[[col:yellow]]"..group_name..":[[/col]] "..tostring(value[1]);
      end;
    end

  end;

  if is_uicomponent(component) then 
    component:SetTooltipText(text, true)
  end;
end;