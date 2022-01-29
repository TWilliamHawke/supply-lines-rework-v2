function Supply_lines_rework:add_mct_listeners()
  core:add_listener(
    "supply_lines_mct",
    "MctInitialized",
    true,
    function(context)
      self:init_mcm(context)
      self.subculture_text = "";
    end,
    true
  )



  core:add_listener(
    "supply_lines_MctFinalized",
    "MctFinalized",
    true,
    function(context)
      self:init_mcm(context)
      self:finalize_mcm()
      self.subculture_text = "";
    end,
    true
  )

end;