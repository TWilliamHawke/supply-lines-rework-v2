function Supply_lines_rework:finalize_unit_tooltip(component, supply_text, regexp)
  --component should has methods
  if not is_uicomponent(component) then
    return
  end;

  local old_text = component:GetTooltipText();

  if string.find(old_text, supply_text) then return end

  local final_text = string.gsub(old_text, regexp, regexp.."[[col:yellow]]"..supply_text.."[[/col]]\n", 1)
  
  component:SetTooltipText(final_text, true)

end;