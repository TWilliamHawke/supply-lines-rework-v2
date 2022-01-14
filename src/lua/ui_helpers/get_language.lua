---=======================
-- UI helpers start here
--========================

function Supply_lines_rework:get_game_language()
  if self.game_lang then return self.game_lang end;

  local langfile, err = io.open("data/language.txt","r")

  if langfile then
    self.game_lang = langfile:read()
    langfile:close()
  else
    self.game_lang = "EN"
  end
  
  return self.game_lang
end