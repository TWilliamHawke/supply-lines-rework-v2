function Supply_lines_rework:get_main_building_cost(building, faction)
  local main_building_level = building:building_level()
  local main_building_superchain = building:superchain()
  --local culture = faction:culture()

  if self.gates_superchain[main_building_superchain] then
    return 1
  end;

-- 1 for tier 1-3, 2 for tier 4, 3 for tier 5
  if main_building_level == 5 then
    return 2 * self.big_city_penalty + 1;
  elseif main_building_level == 4 then
    return self.big_city_penalty + 1;
  else
    return 1
  end
end