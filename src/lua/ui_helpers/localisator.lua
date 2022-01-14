function Supply_lines_rework:localizator(string)
  local game_language = self:get_game_language()

  if game_language == "RU" then
    return effect.get_localised_string(string.."_ru")
  else
    return effect.get_localised_string(string)
  end
end;

function Supply_lines_rework:ui_tooltip_localizator(string, is_basic_value, is_present)
  local lord_text = ""
  local consume_text_id = "SRW_unit_consume_future"

  if not is_basic_value then
    lord_text = self:localizator("SRW_lord_text")
  end;

  if is_present then
    consume_text_id = "SRW_unit_consume_present"
  end;

  local supply_string = self:localizator(string).." "..lord_text;
  return string.gsub(supply_string, "SRW_consume", self:localizator(consume_text_id));

end;