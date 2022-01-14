function Supply_lines_rework:get_army_count(force_list)
  local army_count = 0

  for i = 0, force_list:num_items() - 1 do
    local force = force_list:item_at(i);
    
    if self:check_army_type(force) then
      army_count = army_count + 1
    end; --of army check
  end; --of army call

  return army_count
end;