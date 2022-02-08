function Supply_lines_rework:add_api_listeners()
  if not core:is_campaign() then
    core:add_listener(
      "Supply_lines_init",
      "ScriptEventAllModsLoaded",
      true,
      function(_)
        self:trigger_api_event();
      end,
      false
    )
  else
    core:add_listener(
      "Supply_lines_init",
      "LoadingGame",
      true,
      function(_)
        self:trigger_api_event();
      end,
      true
    )
  end
  self:logCore("added events")

end;

function Supply_lines_rework:trigger_api_event()
  self:logCore("api event is triggered")
  core:trigger_custom_event("SupplyLinesReworkInit", {["api"] = Supply_lines_api});
end;