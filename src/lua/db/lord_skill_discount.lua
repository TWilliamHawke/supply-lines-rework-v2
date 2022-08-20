--lord name from lords_aliases.lua
--unit group name from localisation table
--skills key from db/character_skills_tables
Supply_lines_rework.lord_skills_discount = {
  --empire
    ["Hunter-srw_emp_huntsmen"] = { -1, "wh2_dlc13_skill_emp_hunts_marshal_unique_1" },
    ["Hunter-srw_emp_greatswords"] = { -1, "wh2_dlc13_skill_emp_hunts_marshal_unique_0" },
    ["Hunter-srw_emp_halberdiers"] = { -1, "wh2_dlc13_skill_emp_hunts_marshal_unique_0" },
    ["Gelt-srw_emp_outriders"] = { -1, "wh_dlc08_skill_emp_lord_unique_balthasar_unique_2" },
    ["Gelt-srw_emp_handgunners"] = { -1, "wh_dlc08_skill_emp_lord_unique_balthasar_unique_2" },
    ["Gelt-srw_elite_hangunners"] = { -1, "wh_dlc08_skill_emp_lord_unique_balthasar_unique_2" },
    ["Gelt-srw_emp_magic_machines"] = { -1, "wh_dlc08_skill_emp_lord_unique_balthasar_unique_3" },
    ["Gelt-srw_emp_tank"] = { -1, "wh_dlc08_skill_emp_lord_unique_balthasar_unique_3" },
    ["Ulric-srw_emp_ulric_cult"] = { -2, "ulric_cult_of_ulric_stats" },
    ["Elspeth-srw_all_artillery"] = { -2, "mixu_emp_elspeth_von_draken_special_guns_of_nuln" },
    ["Elspeth-srw_emp_artillery_wagon"] = { -2, "mixu_emp_elspeth_von_draken_special_guns_of_nuln" },
    ["Helborg-srw_emp_reiksguard"] = { -1, "skill_emp_lord_unique_campaign_kurt_helborg_grand_order" },
    ["Helborg-srw_emp_greatswords"] = { -1, "skill_emp_lord_unique_campaign_kurt_helborg_for_emperor" },
    ["Helborg-srw_emp_halberdiers"] = { -1, "skill_emp_lord_unique_campaign_kurt_helborg_reiksguard_supply" },
    ["Helborg-srw_emp_handgunners"] = { -1, "skill_emp_lord_unique_campaign_kurt_helborg_reiksguard_supply" },
  --dwarfs
    ["Whitedwarf-srw_dwf_irondrakes"] = { -2, "wh2_dlc17_dwf_grombrindal_unique_rouse_the_engineers" },
    ["Whitedwarf-srw_dwf_artillery_classic"] = { -1, "wh2_dlc17_dwf_grombrindal_unique_rouse_the_engineers" },
    ["Whitedwarf-srw_dwf_artillery_gun"] = { -1, "wh2_dlc17_dwf_grombrindal_unique_rouse_the_engineers" },
    ["Whitedwarf-srw_dwf_flying_machine"] = { -2, "wh2_dlc17_dwf_grombrindal_unique_rouse_the_engineers" },
    ["Whitedwarf-srw_dwf_land_machine"] = { -2, "wh2_dlc17_dwf_grombrindal_unique_rouse_the_engineers" },
    ["Belegar-srw_dwf_rangers"] = { -2, "wh2_dlc17_dwf_belegar_unique_tunnel_warfare" },
    ["Thorgrim-srw_dwf_artillery_classic"] = { -2, "wh_dlc08_skill_dwf_lord_thorgrim_unique_2" },
    ["Thorgrim-srw_dwf_artillery_gun"] = { -2, "wh_dlc08_skill_dwf_lord_thorgrim_unique_2" },
    ["Thorgrim-srw_dwf_artillery_fire"] = { -2, "wh_dlc08_skill_dwf_lord_thorgrim_unique_2" },
    --mods
    ["Byrnoth-srw_dwf_artillery_fire"] = { -2, "parte_skill_dwf_byrrnoth_grundadrakk_unique_zul_barag" },
    ["Byrnoth-srw_dwf_artillery_gun"] = { -2, "parte_skill_dwf_byrrnoth_grundadrakk_unique_zul_barag" },
    ["Byrnoth-srw_dwf_artillery_classic"] = { -2, "parte_skill_dwf_byrrnoth_grundadrakk_unique_zul_barag" },
    ["Byrnoth-srw_dwf_longbeards"] = { -1, "parte_skill_dwf_byrrnoth_grundadrakk_unique_glory_of_the_ancestors" },
    ["Byrnoth-srw_dwf_hammerers"] = { -1, "parte_skill_dwf_byrrnoth_grundadrakk_unique_glory_of_the_ancestors" },
    ["GreyBeard-srw_dwf_artillery_gun"] = { -2, "elo_greybeard_automatization" },
    ["GreyBeard-srw_dwf_artillery_fire"] = { -2, "elo_greybeard_automatization" },
    ["GreyBeard-srw_dwf_artillery_classic"] = { -2, "elo_greybeard_automatization" },
  --greenskins
    ["Goblin-srw_grn_goblins"] = { -1, "wh_dlc06_skill_grn_lord_battle_ard_ladz" },
    ["Goblin-srw_grn_goblin_spider"] = { -1, "wh_dlc06_skill_grn_lord_battle_ard_ladz" },
    ["Goblin-srw_grn_goblin_wolves"] = { -1, "wh_dlc06_skill_grn_lord_battle_ard_ladz" },
    ["Goblin-srw_grn_night_goblins"] = { -1, "wh_dlc06_skill_grn_lord_battle_ard_ladz" },
    ["Goblin-srw_grn_squig"] = { -1, "wh_dlc06_skill_grn_lord_battle_riderz" },
    ["Azhag-srw_grn_big_uns_boar"] = { -2, "wh_dlc08_skill_grn_azhag_unique_0" },
    ["Azhag-srw_grn_big_uns"] = { -2, "wh_dlc08_skill_grn_azhag_unique_0" },
    ["Azhag-srw_grn_savage"] = { -2, "wh_dlc08_skill_grn_azhag_unique_0" },
    ["Azhag-srw_grn_savage_boar"] = { -2, "wh_dlc08_skill_grn_azhag_unique_0" },
    ["Wurzag-srw_all_trolls"] = { -2, "wh2_dlc15_skill_unique_grn_wurrzag_colossal_warpaint" },
    ["Wurzag-srw_grn_giants"] = { -2, "wh2_dlc15_skill_unique_grn_wurrzag_colossal_warpaint" },
    ["Wurzag-srw_grn_idols"] = { -2, "wh2_dlc15_skill_unique_grn_wurrzag_colossal_warpaint" },
    ["Wurzag-srw_def_hydra"] = { -2, "wh2_dlc15_skill_unique_grn_wurrzag_colossal_warpaint" },
    ["Wurzag-srw_grn_arachnarok"] = { -2, "wh2_dlc15_skill_unique_grn_wurrzag_colossal_warpaint" },
    ["Forest-srw_grn_arachnarok"] = { -2, "ws_skill_tinitt_foureyes_ancient_behemoths" },
    ["ws_sporctacus-srw_def_hydra"] = { -2, "ws_skill_sporctacus_solid_snekz" },

  --Vampire Counts
    ["Isabella-srw_vargheists"] = { -2, "wh2_dlc11_skill_vmp_isabella_unique_5" },
    ["Isabella-srw_varghulf"] = { -2, "wh2_dlc11_skill_vmp_isabella_unique_5" },
    ["Isabella-srw_vmp_terrorgheist"] = { -2, "wh2_dlc11_skill_vmp_isabella_unique_5" },
    ["Kemler-srw_vmp_ghosts"] = { -2, "wh2_dlc17_skill_vmp_heinrich_kemmler_unique_wightblades" },
    ["Kemler-srw_vmp_ghost_cav"] = { -2, "wh2_dlc17_skill_vmp_heinrich_kemmler_unique_wightblades" },
    ["Carstain-srw_vargheists"] = { -2, "wh2_dlc11_skill_vmp_bloodline_von_carstein_unique_brooding_horrors" },
    ["Blood_Dragon-srw_vmp_black_knights"] = { -2, "wh2_dlc11_skill_vmp_bloodline_blood_dragon_unique_doomrider" },
    ["Blood_Dragon-srw_vmp_grave_guard"] = { -2, "wh2_dlc11_skill_vmp_bloodline_blood_dragon_unique_grave_sentinels" },
    ["Blood_Dragon-srw_vmp_blood_knights"] = { -2, "wh2_dlc11_skill_vmp_bloodline_blood_dragon_unique_the_ordo_draconis" },
    ["Strigoi-srw_vmp_ghouls"] = { -2, "wh2_dlc11_skill_vmp_bloodline_strigoi_unique_grave_eaters" },
    ["Strigoi-srw_vmp_crypt_horrors"] = { -2, "wh2_dlc11_skill_vmp_bloodline_strigoi_unique_monstrosities_of_morr" },
    ["Ghorst-srw_all_chariots"] = { -2, "wh_dlc04_skill_vmp_lord_unique_helman_ghorst_corpse_cart_boost" },
    ["Imbalash-srw_vmp_blood_knights"] = { -3, "vmp_fbktm" },
    ["Imbalash-srw_vmp_black_knights"] = { -3, "vmp_fbk50" },
    ["Imbalash-srw_vmp_ghost_cav"] = { -3, "vmp_fbk50" },
    ["Imbalash-srw_vmp_grave_guard"] = { -3, "wh2_dlc11_skill_vmp_bloodline_blood_dragon_unique_grave_sentinels" },
    ["Vlad-srw_vmp_black_knights"] = { -1, "wh2_dlc17_skill_vmp_vlad_unique_monstrous_strength" },
    ["Vlad-srw_vmp_blood_knights"] = { -1, "wh2_dlc17_skill_vmp_vlad_unique_monstrous_strength" },
    ["Vlad-srw_all_chariots"] = { -1, "wh2_dlc17_skill_vmp_vlad_unique_monstrous_strength" },
    ["Vlad-srw_vmp_crypt_horrors"] = { -1, "wh2_dlc17_skill_vmp_vlad_unique_monstrous_strength" },
    ["Vlad-srw_vmp_ghosts"] = { -1, "wh2_dlc17_skill_vmp_vlad_unique_monstrous_strength" },
    ["Vlad-srw_vmp_ghost_cav"] = { -1, "wh2_dlc17_skill_vmp_vlad_unique_monstrous_strength" },
    ["Vlad-srw_vmp_ghouls"] = { -1, "wh2_dlc17_skill_vmp_vlad_unique_monstrous_strength" },
    ["Vlad-srw_vmp_grave_guard"] = { -1, "wh2_dlc17_skill_vmp_vlad_unique_monstrous_strength" },
    ["Vlad-srw_vmp_lahmian"] = { -1, "wh2_dlc17_skill_vmp_vlad_unique_monstrous_strength" },
    ["Vlad-srw_vmp_terrorgheist"] = { -1, "wh2_dlc17_skill_vmp_vlad_unique_monstrous_strength" },
    ["Vlad-srw_vargheists"] = { -1, "wh2_dlc17_skill_vmp_vlad_unique_monstrous_strength" },
    ["Vlad-srw_varghulf"] = { -1, "wh2_dlc17_skill_vmp_vlad_unique_monstrous_strength" },
    ["Vlad-srw_vmp_vampiress"] = { -1, "wh2_dlc17_skill_vmp_vlad_unique_monstrous_strength" },
    ["Vlad-srw_ror"] = { -1, "wh2_dlc17_skill_vmp_vlad_unique_monstrous_strength" },
    ["Vlad-srw_all_dragons"] = { -1, "wh2_dlc17_skill_vmp_vlad_unique_monstrous_strength" },
    ["Vlad-srw_all_artillery"] = { -1, "wh2_dlc17_skill_vmp_vlad_unique_monstrous_strength" },
    ["Vlad-none"] = { -1, "wh2_dlc17_skill_vmp_vlad_unique_monstrous_strength" },
    ["Mixu_Knight-srw_vmp_black_knights"] = { -1, "mixu_vmp_bloodline_fallen_knight_special_2_brothers_in_death" },
    ["Mixu_Knight-srw_vmp_blood_knights"] = { -1, "mixu_vmp_bloodline_fallen_knight_special_2_brothers_in_death" },
    ["Mixu_Knight-srw_vmp_ghost_cav"] = { -1, "mixu_vmp_bloodline_fallen_knight_special_2_brothers_in_death" },
  --wood elves
    ["Treeman-srw_wef_trees"] = { -1, "wh_dlc05_skill_wef_ancient_treeman_unique_damage_resistance_treekin" },
    ["Zoat-srw_wef_zoats"] = { -1, "roy_zoat_lord_army_defense_zoats" },
    ["wef_daith-srw_all_archers"] = { -2, "mixu_wef_daith_special_quality_arrows" },
  --Norsca
    ["Wulfrik-srw_nor_skinwolves"] = { -1, "wh_dlc08_skill_nor_wulfrik_battle_fervent_creatures" },
    ["Throgg-srw_nor_fimirs"] = { -1, "wh_dlc08_skill_nor_throgg_unique_king_of_trolls" },
    ["Throgg-srw_nor_skinwolves"] = { -1, "wh_dlc08_skill_nor_throgg_unique_king_of_trolls" },
    ["Throgg-srw_all_dragons"] = { -1, "wh_dlc08_skill_nor_throgg_battle_primordial_masters" },
  --Hight elves
    ["Hef_lord-srw_hef_phoenixes"] = { -1, "wh2_main_skill_hef_dedication_asuryan" },
    ["Hef_lord-srw_hef_phoenix_guard"] = { -1, "wh2_main_skill_hef_dedication_asuryan" },
    ["Hef_lord-srw_hef_swordmasters"] = { -1, "wh2_main_skill_hef_dedication_hoeth" },
    ["Hef_lord-srw_hef_dragon_princes"] = { -1, "wh2_main_skill_hef_dedication_vaul" },
    ["Hef_lord-srw_all_dragons"] = { -1, "wh2_main_skill_hef_dedication_addaioth" },
    ["Hef_lord-srw_hef_lions"] = { -1, "wh2_main_skill_hef_dedication_kurnous" },
    ["Hef_lord-srw_hef_lion_chariots"] = { -1, "wh2_main_skill_hef_dedication_hukon" },
    ["Hef_lord-srw_all_chariots"] = { -1, "wh2_main_skill_hef_dedication_hukon" },
    ["Hef_lord-srw_all_spearmen"] = { -1, "wh2_main_skill_hef_dedication_isha" },
    ["Hef_lord-srw_all_archers"] = { -1, "wh2_main_skill_hef_dedication_isha" },
    ["Hef_lord-srw_hef_avelorn"] = { -1, "wh2_main_skill_hef_dedication_isha" },
    ["Hef_lord-srw_hef_sea_guard"] = { -1, "wh2_main_skill_hef_dedication_mathlann" },
    ["Alarielle-srw_hef_trees"] = { -1, "wh2_dlc10_skill_hef_alarielle_fire_and_blood_4" },
    --mods
    ["Seaguard-srw_hef_sea_guard"] = { -2, "wh2_main_skill_hef_dedication_mathlann" },
    ["Seaguard-srw_hef_lions"] = { -1, "AK_aislinn_unique_king" },
  --Dark elves
    ["Morathi-srw_doomfire"] = { -2, "wh2_main_skill_def_morathi_unique_3_3" },
    ["Morathi-srw_def_dark_riders"] = { -2, "wh2_main_skill_def_morathi_unique_3_3" },
    ["Morathi-srw_def_shades"] = { -2, "wh2_main_skill_def_morathi_unique_3_3" },
    ["Morathi-srw_def_scourgerunner"] = { -2, "wh2_main_skill_def_morathi_unique_3_3" },
    ["BeastMaster-srw_def_cold_one"] = { -1, "wh2_dlc14_skill_def_beastmaster_cold_ones" },
    ["BeastMaster-srw_def_cold_one_chariot"] = { -1, "wh2_dlc14_skill_def_beastmaster_cold_ones" },
    ["BeastMaster-srw_def_medusa"] = { -1, "wh2_dlc14_skill_def_beastmaster_medusas" },
    ["BeastMaster-srw_all_dragons"] = { -1, "wh2_dlc14_skill_def_beastmaster_black_dragon" },
    ["BeastMaster-srw_def_hydra"] = { -1, "wh2_dlc14_skill_def_beastmaster_war_hydra_kharibdyss" },
    ["Rakarth-srw_all_artillery"] = { -2, "wh2_twa03_skill_def_rakarth_harpyclaw_bolts" },
    ["Rakarth-srw_def_scourgerunner"] = { -2, "wh2_twa03_skill_def_rakarth_harpyclaw_bolts" },
    ["Rakarth-srw_def_cold_one"] = { -2, "wh2_twa03_skill_def_rakarth_pack_hunters" },
    ["Rakarth-srw_def_cold_one_chariot"] = { -2, "wh2_twa03_skill_def_rakarth_pack_hunters" },
    ["Volilosh-srw_def_shades_melee"] = { -2, "volilosh_skill_rors1" },
  --lizarmen
    ["Lzd_lord-srw_lzd_saurus"] = { -1, "wh2_main_skill_lzd_blessing_quetzl" },
    ["Lzd_lord-srw_lzd_temple_guards"] = { -1, "wh2_main_skill_lzd_blessing_quetzl" },
    ["Lzd_lord-srw_lzd_bastiladons"] = { -1, "wh2_main_skill_lzd_blessing_itzl" },
    ["Lzd_lord-srw_lzd_carnosaurs"] = { -1, "wh2_main_skill_lzd_blessing_itzl" },
    ["Lzd_lord-srw_lzd_cold_one"] = { -1, "wh2_main_skill_lzd_blessing_itzl" },
    ["Lzd_lord-srw_lzd_dread_saurian"] = { -1, "wh2_main_skill_lzd_blessing_itzl" },
    ["Lzd_lord-srw_lzd_coatl"] = { -1, "wh2_main_skill_lzd_blessing_itzl" },
    ["Lzd_lord-srw_lzd_ripperdactyl"] = { -1, "wh2_main_skill_lzd_blessing_itzl" },
    ["Lzd_lord-srw_lzd_razordons"] = { -1, "wh2_main_skill_lzd_blessing_itzl" },
    ["Lzd_lord-srw_lzd_teranodons"] = { -1, "wh2_main_skill_lzd_blessing_itzl" },
    ["Lzd_lord-srw_lzd_salamanders"] = { -1, "wh2_main_skill_lzd_blessing_itzl" },
    ["Lzd_lord-srw_lzd_stegadons"] = { -1, "wh2_main_skill_lzd_blessing_itzl" },
    ["Lzd_lord-srw_lzd_troglodons"] = { -1, "wh2_main_skill_lzd_blessing_itzl" },
    ["Skink-srw_lzd_cold_one"] = { -1, "wh2_dlc12_skill_lzd_skink_chief_unique_3" },
    ["Skink-srw_lzd_teranodons"] = { -1, "wh2_dlc12_skill_lzd_skink_chief_unique_3" },
    ["Kroxi-srw_lzd_kroxigors"] = { -2, "wh2_dlc13_skill_lzd_ancient_kroxigor_unique_3", "wh2_dlc13_skill_lzd_ancient_kroxigor_unique_4" },
    ["Tehen-srw_lzd_bastiladons"] = { -2, "wh2_dlc12_skill_lzd_tehenhauin_2", "wh2_dlc12_skill_lzd_tehenhauin_6" },
    ["Oxyotl-srw_lzd_coatl"] = { -2, "wh2_dlc17_skill_lzd_oxyotl_unique_explorer_of_lost_worlds" },
    ["Oxyotl-srw_lzd_troglodons"] = { -2, "wh2_dlc17_skill_lzd_oxyotl_unique_explorer_of_lost_worlds" },
  --skaven
    ["Tretch-srw_skv_stormvermin"] = { -2, "wh2_dlc09_skill_skv_lord_unique_tretch_craventail_tretchs_raiders" },
    ["Ikit-srw_skv_doomwheel"] = { -2, "wh2_dlc12_skill_skv_ikit_unique_4" },
    ["Ikit-srw_skv_doom_flayer"] = { -2, "wh2_dlc12_skill_skv_ikit_unique_4" },
    ["Warlock-srw_skv_jezzails"] = { -1, "wh2_dlc12_skill_skv_engineer_unique_3" },
    ["Warlock-srw_skv_ratlings"] = { -1, "wh2_dlc12_skill_skv_engineer_unique_3" },
    ["Warlock-srw_skv_warpfire_thrower"] = { -1, "wh2_dlc12_skill_skv_engineer_unique_3" },
    ["Warlock-srw_skv_stormfiend"] = { -1, "wh2_dlc12_skill_skv_engineer_unique_3" },
    ["Warlock-srw_skv_doomwheel"] = { -1, "wh2_dlc12_skill_skv_engineer_unique_2" },
    ["Warlock-srw_skv_doom_flayer"] = { -1, "wh2_dlc12_skill_skv_engineer_unique_2" },
    ["Assassin-srw_skv_missile_runners"] = { -1, "wh2_dlc14_skill_skv_assassins_missile_damage" },
    ["Ferric-srw_skv_stormvermin"] = { -2, "thom_ferrik_ironmask_unique_raiding_party" },
    ["Vulkan-srw_arachnarat"] = { -2, "thom_vulkan_master_of_obsidian" },
  --Vampire Coast
    ["Harkon-srw_cst_mobs_melee"] = { -2, "wh2_dlc11_skill_cst_luthor_unique_1" },
    ["Harkon-srw_cst_depth_guard"] = { -2, "wh2_dlc11_skill_cst_luthor_unique_1" },
    ["Harkon-srw_cst_mobs_missile"] = { -2, "wh2_dlc11_skill_cst_luthor_unique_3" },
    ["Harkon-srw_cst_prometheans_missile"] = { -2, "wh2_dlc11_skill_cst_luthor_unique_3" },
    ["Harkon-srw_all_artillery"] = { -1, "wh2_dlc11_skill_cst_lord_crime_3" },
    ["Pirate-srw_all_artillery"] = { -1, "wh2_dlc11_skill_cst_lord_crime_3" },
    ["Aranessa-srw_cst_prometheans_melee"] = { -2, "wh2_dlc11_skill_cst_aranessa_unique_2" },
    ["Aranessa-srw_cst_prometheans_missile"] = { -2, "wh2_dlc11_skill_cst_aranessa_unique_2" },
    ["Aranessa-srw_cst_leviathan"] = { -2, "wh2_dlc11_skill_cst_aranessa_unique_4" },
    ["Noctil-srw_cst_droppers"] = { -2, "wh2_dlc11_skill_cst_noctilus_unique_4" },
    ["Noctil-srw_cst_depth_guard"] = { -2, "wh2_dlc11_skill_cst_noctilus_unique_4" },
    ["Noctil-srw_vmp_terrorgheist"] = { -2, "wh2_dlc11_skill_cst_noctilus_unique_4" },
}