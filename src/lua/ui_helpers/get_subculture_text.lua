

function Supply_lines_rework:get_subculture_text(culture)
  if self.subculture_text ~= "" then
    return self.subculture_text
  end

  local dummy_text = "SRW_dummy_text"
  local lord_text_key = self.Subculture_Text[culture] or dummy_text
  self.subculture_text = self:localizator(lord_text_key)

  --agents supply
  if self.basic_agent_supply ~= 0 then
    local agent_text_key = self.Agents_Text[culture] or dummy_text;
    self.subculture_text = self.subculture_text..self:localizator(agent_text_key)
  end;

  --mods
  for k=1, #self.supported_mods_prefix do
    local path = self.supported_mods_prefix[k][1]
    local prefix = self.supported_mods_prefix[k][2]

    if vfs.exists(path) then
      local string_key = self.modded_subculture_text[prefix..culture] or dummy_text
      self.subculture_text = self.subculture_text..self:localizator(string_key)
    end;
  end;


  return self.subculture_text
end;

