function Supply_lines_rework:get_localised_string(string)
  local game_language = self:get_game_language()

  if game_language == "RU" then
    local ru_text = effect.get_localised_string(string.."_ru")
    if( ru_text ~= "") then
      return ru_text;
    end;
  end;
    return effect.get_localised_string(string)
end;

