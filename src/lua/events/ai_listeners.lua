function Supply_lines_rework:add_ai_listeners()
  core:add_listener(
  "SRW_FactionTurnStart_ai",
  "FactionTurnStart",
  function(context)
    local faction = context:faction()
    return (not faction:is_human() and not self:faction_is_horde(faction) and not (faction:culture() == "wh2_dlc09_tmb_tomb_kings"))
  end,  
  -- true,
  function(context) 
    local faction = context:faction();
    self:logAI("--------");
    self:logAI("CURRENT FACTION IS "..tostring(faction:name()));
    self:apply_upkeep_penalty(faction);
    self:logDebug("CALCULATION SUPPLY FOR THIS fACTION IS FINISHED");

  end,
  true
  );
end;

