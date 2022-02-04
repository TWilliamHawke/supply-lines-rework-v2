--========================
-- Helpers for listeners
--========================

function Supply_lines_rework:factionChecker(faction)
  local culture = faction:culture()
  local subculture = faction:subculture()

  if not faction:is_human() then
    return false
  end
  if self:faction_is_horde(faction) then
    return false
  end
  if culture == "wh_main_brt_bretonnia" then
    return false
  end
  if subculture == "wh_main_sc_nor_warp" then
    return false
  end
  if subculture == "wh_main_sc_nor_troll" then
    return false
  end
  if culture == "wh2_dlc09_tmb_tomb_kings" then
    return false
  end
  return true
end;

function Supply_lines_rework:uiFactionChecker()
  if self.ui_faction_check ~= nil then --from cache
    return self.ui_faction_check
  end

  local faction = cm:model():world():whose_turn_is_it()
  return self:factionChecker(faction)
end;