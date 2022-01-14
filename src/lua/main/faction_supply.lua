function Supply_lines_rework:get_faction_supply(faction)

    local faction_supply_points = self:get_agents_supply(faction);
    local force_list = faction:military_force_list();
    local supply_balance = self:get_supply_balance(faction);
    local supply_penalty = self:get_supply_penalty(faction, supply_balance);

    for i = 0, force_list:num_items() - 1 do
        local force = force_list:item_at(i);

        if self:check_army_type(force, true) then
          local army_supply = self:get_army_supply(force, supply_penalty);
          faction_supply_points = faction_supply_points + army_supply;
        end; --of army check
    end; --of force_list loop

    self:log("-----------");
    self:log("TOTAL SUPPLY FOR FACTION: "..tostring(faction_supply_points));

    return faction_supply_points, supply_balance;
end;