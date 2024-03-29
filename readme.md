API documentation
---
First of all, you need to subscribe on __SupplyLinesReworkInit__ event. This works almost the same as Mod Configuration Tool.


```lua
core:add_listener(
  "Your Event Name",
  "SupplyLinesReworkInit",
  true,
  function(context)
    local supply_lines_rw = context:api();

    --Paste your code here

  
  end,
  true
)

```


---
__supply_lines_rw:log(text)__
Add new string into "supply_lines_rework_log.txt" file

__Parameters:__
__text:__ any string 

__Example:__
```lua
supply_lines_rw:log("Hello World")
```
---
__supply_lines_rw:set_unit_data(unit_key, supply_points, unit_group)__
Add support for new unit. Without this unit will be marked as unknown. Also allows to change values for units which already included in the mod's database

__Parameters:__
__unit_key:__ unit id from main_units_table
__supply_points:__ defines how much supply points will consume this unit. Depends on unit quality. Recommended values: from 0 (militia) to 4 (dragon)
__unit_group:__ correctly defined groups will allow lords to decrease supply cost for this unit. You can find already existing groups in mod localisation folder (text/db/supply_lines_units_groups.loc), create your own group (don't forget to add localisation) or set this param to "none"

Example:
```lua
--Carroburg Swordsmen will consume 3 supply points and will belong to greatswords group
supply_lines_rw:set_unit_data("emp_inf_carroburg_greatswords", 3, "srw_emp_greatswords")
```
---
__supply_lines_rw:add_unit_group_discount(lord_key, unit_group, value)__
Changes supply cost for selected units group in this lord's army. Doesn't require any lord skills

__Parameters:__
__lord_key:__ lord id from agent_subtypes_tables
__unit_group:__ use a group from mod localisation folder (text/db/supply_lines_units_groups.loc) or your own group
__value:__ how much supply cost for units in this group will change in this lord's army. Negative value - less points, positive value - more points

Example:
```lua
--all stegadons in Kroq Gar army will consume 1 supply points less
supply_lines_rw:add_unit_group_discount("wh2_main_lzd_kroq_gar", "srw_lzd_stegadons", -1)
--all saurus in Tehenhauin army will consume 2 additional supply points per unit
supply_lines_rw:add_unit_group_discount("wh2_dlc12_lzd_tehenhauin", "srw_lzd_saurus", 2)
```

---
__supply_lines_rw:add_lord_skill_discount(lord_key, unit_group, value, lord_skill_key)__
Changes supply cost for selected units group in this lord's army if lord has special skill

__Parameters:__
__lord_key:__ lord id from agent_subtypes_tables
__unit_group:__ use a group from mod localisation folder (text/db/supply_lines_units_groups.loc) or your own group
__value:__ how much supply cost for units in this group will change in this lord's army. Negative value - less points, positive value - more points
__lord_skill_key:__ lord's skill id from character_skills_tables

---

__supply_lines_rw:set_military_building_level(building_key, settlement_level)__
Use this if your mod add new military building (red or blue)

__Parameters:__
__building_key:__ building id from building_levels_tables
__settlement_level:__ level of settlement which is required for this building

---
__supply_lines_rw:add_garrison_building(building_key)__
Use this if your mod add new garrison building

__Parameters:__
__building_key:__ building id from building_levels_tables
