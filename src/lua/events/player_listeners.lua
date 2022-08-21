--========================
-- Main Listeners start HERE
--========================
function Supply_lines_rework:add_player_listeners()
core:add_listener(
  "SRW_FactionTurnStart",
  "FactionTurnStart",
  function(context)
    local faction = context:faction()
    return self:factionChecker(faction)
  end,
  -- true,
  function(context)
    local faction = context:faction();
    self:log("======================");
    self:log("APPLY UPKEEP (TURN START)");
    self:apply_upkeep_penalty(faction);
    self:calculate_supply_balance(faction);
  end,
  true
);

core:add_listener(
  "SRW_FactionTurnEnd",
  "FactionTurnEnd",
  function(context)
    local faction = context:faction()
    return self:factionChecker(faction)
  end,
  -- true,
  function(context)
    local faction = context:faction();
    self:log("======================");
    self:log("APPLY UPKEEP (TURN END)");
    self:apply_upkeep_penalty(faction);
  end,
  true
);

core:add_listener(
  "SRW_RaiseDead",
  "ComponentLClickUp",
  function(context)
    local faction = cm:model():world():whose_turn_is_it()
    return (UIComponent(context.component):Id() == "button_raise_dead" and self:factionChecker(faction))
  end,
  function(_)
    local faction = cm:model():world():whose_turn_is_it()
    cm:callback(function()
      self:log("======================");
      self:log("APPLY UPKEEP (RAISE DEAD)");
      self:apply_upkeep_penalty(faction) 
    end, 0.1);
  end,
  true
);

core:add_listener(
  "SRW_Hire_Blessed",
  "ComponentLClickUp",
  function(context)
    local faction = cm:model():world():whose_turn_is_it()
    return (UIComponent(context.component):Id() == "button_hire_blessed" and self:factionChecker(faction))
  end,
  function(_)
    local faction = cm:model():world():whose_turn_is_it()
    cm:callback(function()
      self:log("======================");
      self:log("APPLY UPKEEP (HIRE BLESSED)");
      self:apply_upkeep_penalty(faction) 
    end, 0.1);
  end,
  true
);

core:add_listener(
  "SRW_Hire_Imperial",
  "ComponentLClickUp",
  function(context)
    local faction = cm:model():world():whose_turn_is_it()
    return (UIComponent(context.component):Id() == "button_hire_imperial" and self:factionChecker(faction))
  end,
  function(_)
    local faction = cm:model():world():whose_turn_is_it()
    cm:callback(function()
      self:log("======================");
      self:log("APPLY UPKEEP (HIRE IMPERIAL)");
      self:apply_upkeep_penalty(faction) 
    end, 0.1);
  end,
  true
);

core:add_listener(
  "SRW_Hire_Renown",
  "ComponentLClickUp",
  function(context)
    local faction = cm:model():world():whose_turn_is_it()
    return (UIComponent(context.component):Id() == "button_hire_renown" and self:factionChecker(faction))
  end,
  function(_)
    local faction = cm:model():world():whose_turn_is_it()
    cm:callback(function()
      self:log("======================");
      self:log("APPLY UPKEEP (HIRE ROR)");
      self:apply_upkeep_penalty(faction) 
    end, 0.1);
  end,
  true
);
-- core:add_listener(
--   "SRW_UI",
--   "ComponentLClickUp",
--   true, 
--   function(context)
--     local faction = cm:model():world():whose_turn_is_it()
--     local button = UIComponent(context.component):Id()
--     self:log(tostring(button));
--   end,
--   true
-- );

core:add_listener(
  "SRW_FactionJoinsConfederation",
  "FactionJoinsConfederation",
  function(context)
    local faction = context:confederation();
    return self:factionChecker(faction)
  end,
  function(context)
    local faction = context:confederation();
    cm:callback(function()
      self:log("======================");
      self:log("APPLY UPKEEP (CONFEDERATION)");
      self:apply_upkeep_penalty(faction);
      self:calculate_supply_balance(faction)
    end, 0.1);
  end,
  true
);

core:add_listener(
  "SRW_player_army_created_listener",
  "MilitaryForceCreated",
  function(context)
    local faction = context:military_force_created():faction();
    return self:factionChecker(faction)
  end,
  function(context)
    local faction = context:military_force_created():faction();
    cm:callback(function()
      self:log("======================");
      self:log("APPLY UPKEEP (NEW FORCE)");
      self:apply_upkeep_penalty(faction);
      self:calculate_supply_balance(faction);
    end, 0.1);
  end,
  true
);


core:add_listener(
  "SRW_SETTLEMENT_CAPTURED",
  "RegionFactionChangeEvent",
  function(context)
    local faction = context:region():owning_faction();
    return (self:factionChecker(faction))
  end,
  function(context)
    self:log("======================");
    self:log("SETTLEMENT CAPTURED")
    local faction = context:region():owning_faction();
    self:calculate_supply_balance(faction)
  end,
  true
);

core:add_listener(
  "SRW_Agent_created",
  "CharacterCreated",
  function(context)
    local faction = context:character():faction();
    return (self:factionChecker(faction))
  end,
  function(context)
    local character = context:character();
    if not cm:char_is_agent(character) then return end;

    self:log("======================");
    self:log("AGENT Recruted")
    local faction = context:character():faction();
    Supply_lines_rework.apply_upkeep_penalty(faction)
  end,
  true
);

core:add_listener(
  "SRW_UNIT_DISBANDED",
  "UnitDisbanded",
  function(context)
    local faction = context:unit():faction()
    return (self:factionChecker(faction))
  end,
  function(context)
    if self.block_scripts then return end;
    local faction_name = context:unit():faction():name();
    self.block_scripts = faction_name;

    cm:callback(function()
      if not self.block_scripts then return end;
      local faction = cm:get_faction(self.block_scripts);

      if faction then

        self:log("======================");
        self:log("UNIT DISBANDED");
        self:apply_upkeep_penalty(faction);
        self:calculate_supply_balance(faction);
        self.block_scripts = false;
      end;
    end, 0.2);

  end,
  true
);


end;