--return upkeep percent
function Supply_lines_rework:get_upkeep_from_supply(supply, dif_mod)
  return math.floor(supply*dif_mod/24)
end;