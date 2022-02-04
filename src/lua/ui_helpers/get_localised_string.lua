function Supply_lines_rework:get_localised_string(string)
  local game_language = self:get_game_language()

  if game_language == "RU" then
    return effect.get_localised_string(string.."_ru")
  else
    return effect.get_localised_string(string)
  end
end;

