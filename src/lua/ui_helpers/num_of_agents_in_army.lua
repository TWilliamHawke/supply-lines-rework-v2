function Supply_lines_rework:get_num_of_agents_in_army(unit_list)
  local num_of_agents = 0

  for j = 1, unit_list:num_items() - 1 do
    local unit = unit_list:item_at(j);

    if not unit then
      return num_of_agents;
    end;
    
    local uclass = unit:unit_class();

    if uclass ~= "com" then break end;
    
    num_of_agents = num_of_agents + 1
  end;

  return num_of_agents
end