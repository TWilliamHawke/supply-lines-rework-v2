function Supply_lines_rework:get_localised_string(string)
  local game_language = self:get_game_language()

  if game_language == "RU" then
    local text_ru = effect.get_localised_string(string.."_ru")
    if( text_ru ~= "") then
      return text_ru;
    end;
  end;

  local text = effect.get_localised_string(string);

  if(text == "") then
    return string;
  else
    return text;
  end;
end;

