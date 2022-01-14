--========================
-- UI Listeners start HERE
--========================
function Supply_lines_rework:add_ui_listeners()
core:add_listener(
  "SRW_BuildingTooltip",
  "ComponentMouseOn",
  function(_)
    return cm.campaign_ui_manager:is_panel_open("settlement_panel") and (self.enable_supply_balance == true) and self:uiFactionChecker()
  end,
  function(context)
    local component = UIComponent(context.component)
    self:set_building_tooltip(component)
  end,
  true
)

core:add_listener(
  "SRW_TreasuryTooltip",
  "ComponentMouseOn",
  function(context)
    return (UIComponent(context.component):Id() == "button_finance" and not _G.jgcaps_free_units)
  end,
  function(_)
    local faction = cm:model():world():whose_turn_is_it()
    self:set_tooltip_text_treasury(faction, "button_finance")
  end,
  true
)

core:add_listener(
  "SRW_TreasuryCompTooltip",
  "ComponentMouseOn",
  function(context)
    return (UIComponent(context.component):Id() == "resources_bar" and _G.jgcaps_free_units)
  end,
  function(_)
    local faction = cm:model():world():whose_turn_is_it()
    self:set_tooltip_text_treasury(faction, "resources_bar")
  end,
  true
)

core:add_listener(
  "SRW_new_lord_tooltip",
  "ComponentMouseOn",
  function(context)
    local component = UIComponent(context.component):Id()
    --this is raise new lord button, not undead button
    return component == "button_raise" and self.player_supply_custom_mult ~=0 and self:uiFactionChecker()
  end,
  function(context)
    local component = UIComponent(context.component)
    self:logDebug("Component created");
    self:set_new_lord_tooltip(component)
    
  end,
  true
)

core:add_listener(
  "SRW_UnitTooltip",
  "ComponentMouseOn",
  function(context)
    local component = UIComponent(context.component):Id()
    return cm.campaign_ui_manager:is_panel_open("units_panel") and self.player_supply_custom_mult ~=0 and self:uiFactionChecker()
  end,
  function(context)
    local component = UIComponent(context.component)
    local component_id = component:Id()
    if string.find(component_id, "QueuedLandUnit") then return end;

    if string.find(component_id, "LandUnit") then
      self:set_unit_in_army_tooltip(component)
    elseif string.find(component_id, "_recruitable") then
      self:set_unit_tooltip(component, "_recruitable")
    elseif string.find(component_id, "_mercenary") then
      self:set_unit_tooltip(component, "_mercenary")
    elseif string.find(component_id, "Agent ") then
      self:set_agent_tooltip(component)
    end;
  end,
  true
)


--USED IN UNIT tooltip
core:add_listener(
  "SRW_Character_Selected",
  "CharacterSelected",
  function(_)
    return true;
  end,
  function(context)
    self.selected_character = context:character();

  end,
  true
)

-- core:add_listener(
--   "SRW_UnitTooltip_lord_upkeep",
--   "ComponentMouseOn",
--   function(context)
--     local component = UIComponent(context.component):Id()
--     return component == "dy_upkeep" and player_supply_custom_mult ~=0 and uiFactionChecker()
--   end,
--   function(context)
--     local component = UIComponent(context.component)

--     set_army_supply_tooltip(component)
    
--   end,
--   true
-- )

end;