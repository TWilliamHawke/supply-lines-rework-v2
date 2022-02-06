function Supply_lines_rework:add_mct_listeners()
  core:add_listener(
    "supply_lines_mct",
    "MctInitialized",
    true,
    function(context)
      self:mct_init(context)
      self:logCore("MCT IS INIT")
    end,
    true
  )



  core:add_listener(
    "supply_lines_MctFinalized",
    "MctFinalized",
    true,
    function(context)
      self:mct_init(context)
      self:mct_finalize()
      self:logCore("MCT FINALIZED")
    end,
    true
  )

end;