function Supply_lines_rework:get_armies_total_cost(faction)
  local force_list = faction:military_force_list();
  local armies_total_cost = 0
  local army_cost = 0

  for i = 0, force_list:num_items() - 1 do
    local force = force_list:item_at(i);

    if self:check_army_type(force) then

      armies_total_cost = armies_total_cost + army_cost

      if army_cost < self.max_balance_per_army then
        army_cost = army_cost + 1
      end;
    end; --of army check
  end; --of force list loop

  return armies_total_cost
end;
