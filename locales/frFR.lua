
local addonName, addon = ...;
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "frFR", false);

if L then
    L["ADDON_NAME"] = addonName;
    L["ADDON_DESCRIPTION"] = "Enregistre tes meilleurs temps et entre en comp�tition avec tes amis !";
    L["ADDON_VERSION_OUTDATED"] = "Une version plus r�cente de l'addon est disponible !";
    L["ADDON_VERSION"] = "Version :";
    L["ADDON_AUTHOR"] = "Auteur :";
    L["ADDON_MOTD"] = "Hey, merci d'utiliser "..addonName.."! Entre |cffffd700/srr|r pour voir tes meilleurs temps !";
    L["DATE_FORMAT"] = "%d/%m/%y";

    L["FALLBACK_ENABLED"] = "Use of alternative method on event of failure is now enabled.";
    L["FALLBACK_DISABLED"] = "Use of alternative method on event of failure is now disabled.";

    L["UI_PB_TITLE"] = "Tes meilleurs temps"
    L["UI_PB_HEADER_RACE"] = "|cffffd700Course|r"
    L["UI_PB_HEADER_PB_N"] = "|cffffd700Temps (normal)|r"
    L["UI_PB_HEADER_PB_A"] = "|cffffd700Temps (avanc�)|r"
    L["UI_PB_HEADER_PB_R"] = "|cffffd700Temps (invers�s)|r"

    L["UI_PB_HEADER_GPB_N"] = "|cffffd700Temps guilde (normal)|r"
    L["UI_PB_HEADER_GPB_A"] = "|cffffd700Temps guilde (avanc�)|r"
    L["UI_PB_HEADER_GPB_R"] = "|cffffd700Temps guilde (invers�s)|r"
    L["UI_PB_GUILD_INFO"] = "Seuls les temps des membres de guilde ayant l'addon SkyridingRace sont affich�s."
    L["GUILD_BEST_TIME_FORMAT"] = function(time, character) return character..": "..time.."s"; end
    L["GUILD_BEST_BEATEN"] = function(time, race, character) return character.." a battu le meilleur temps de la guilde sur "..race.." en "..time.." secondes !"; end
    L["RACE_FINISHED_GUILD_PB_FORMAT"] = function(race, time) return "Wouhou, vous venez de battre le meilleur temps de la guilde sur "..race.." avec un chrono de "..time.." secondes !"; end

    L["RACE_FINISHED_CHARACTER_BEST_FORMAT"] = function(race, time) return "You finished "..race..", current personal best in this character is "..time.." seconds"; end
    L["RACE_FINISHED_SAVED_BEST_FORMAT"] = function(race, time, saved) return "You finished "..race..", current personal best in this character is "..time.." seconds, local saved best is "..saved.." seconds"; end
    L["RACE_FINISHED_FORMAT"] = function(race, time) return "Vous avez termin� la course "..race.." en "..time.." secondes"; end
    L["RACE_FINISHED_PB_FORMAT"] = function(race, time, previousTime) return "Waah, vous avez battu votre record sur  "..race.." en faisant un temps de "..time.." secondes ! Bien jou� ! Ton meilleur temps pr�c�dent �tait "..previousTime.." secondes."; end
    L["RACE_RECAP_FORMAT"] = function(race, time) return "> |cffffd700"..race.."|r en |cffffd700"..time.."|r secondes"; end
    L["RACE_TIME_FORMAT"] = function(time) return time.."s"; end

    -- Chat lookup
    L["NPC_NAMES"] = {"Chronom�treur de bronze", "Chronom�treuse de bronze", "Assistant chronom�treur de bronze"};

    L["ZONE_DORN_ISLAND"] = "Ile de Dorn"
    L["ZONE_RINGING_DEEPS"] = "Les Abimes Retentissants"
    L["ZONE_HALLOWFALL"] = "Sainte-Chute"
    L["ZONE_AZJ_KAHET"] = "Azj-Kahet"
    L["ZONE_WAKING_SHORES"] = "Rivages de l'Eveil"
    L["ZONE_OHNAHRAN_PLAINS"] = "Plaines d'Ohn'Ahra"
    L["ZONE_AZURE_SPAN"] = "Trav�e d'Azur"
    L["ZONE_THALDRASZUS"] = "Thaldraszus"

    -- Dorn Island
    L["RACE_80219"] = "Derby de Dornogal"
    L["RACE_80225"] = "Derby de Dornogal (Avanc�)"
    L["RACE_80231"] = "Derby de Dornogal (Invers�)"
    L["RACE_80220"] = "Survol du guet de la Temp�te"
    L["RACE_80226"] = "Survol du guet de la Temp�te (Avanc�)"
    L["RACE_80232"] = "Survol du guet de la Temp�te (Invers�)"
    L["RACE_80221"] = "Canal de D�rivation"
    L["RACE_80227"] = "Canal de D�rivation (Avanc�)"
    L["RACE_80233"] = "Canal de D�rivation (Invers�)"
    L["RACE_80222"] = "Elan de la lande"
    L["RACE_80228"] = "Elan de la lande (Avanc�)"
    L["RACE_80234"] = "Elan de la lande (Invers�)"
    L["RACE_80223"] = "Piste du T�te-tonerre"
    L["RACE_80229"] = "Piste du T�te-tonerre (Avanc�)"
    L["RACE_80235"] = "Piste du T�te-tonerre (Invers�)"
    L["RACE_80224"] = "Virages de Mineroc"
    L["RACE_80230"] = "Virages de Mineroc (Avanc�)"
    L["RACE_80236"] = "Virages de Mineroc (Invers�)"
    -- The Ringing Deeps
    L["RACE_80237"] = "Virages des Ouvrages terrestres"
    L["RACE_80244"] = "Virages des Ouvrages terrestres (advanced)"
    L["RACE_80250"] = "Virages des Ouvrages terrestres (reverse)"
    L["RACE_80238"] = "Cours des ab�mes retentissants"
    L["RACE_80245"] = "Cours des ab�mes retentissants (advanced)"
    L["RACE_80251"] = "Cours des ab�mes retentissants (reverse)"
    L["RACE_80239"] = "Course cliquetante"
    L["RACE_80246"] = "Course cliquetante (avanced)"
    L["RACE_80252"] = "Course cliquetante (reverse)"
    L["RACE_80240"] = "Croisi�re de la Cataracte"
    L["RACE_80247"] = "Croisi�re de la Cataracte (avanced)"
    L["RACE_80253"] = "Croisi�re de la Cataracte (reverse)"
    L["RACE_80242"] = "Approche de Taelloch"
    L["RACE_80248"] = "Approche de Taelloch (avanced)"
    L["RACE_80254"] = "Approche de Taelloch (reverse)"
    L["RACE_80243"] = "Parcours de la halte de l'Aubaine"
    L["RACE_80249"] = "Parcours de la halte de l'Aubaine (avanced)"
    L["RACE_80255"] = "Parcours de la halte de l'Aubaine (reverse)"
    -- HallowFall
    L["RACE_80256"] = "D�tour de Dunelle"
    L["RACE_80265"] = "D�tour de Dunelle (advanced)"
    L["RACE_80271"] = "D�tour de Dunelle (reverse)"
    L["RACE_80257"] = "Travers�e de Tenir"
    L["RACE_80266"] = "Travers�e de Tenir (advanced)"
    L["RACE_80272"] = "Travers�e de Tenir (reverse)"
    L["RACE_80258"] = "Descente de la redoute de la Lumi�re"
    L["RACE_80267"] = "Descente de la redoute de la Lumi�re (avanced)"
    L["RACE_80273"] = "Descente de la redoute de la Lumi�re (reverse)"
    L["RACE_80259"] = "Slalom de Roche-Tranquille"
    L["RACE_80268"] = "Slalom de Roche-Tranquille (avanced)"
    L["RACE_80274"] = "Slalom de Roche-Tranquille (reverse)"
    L["RACE_80260"] = "M�andre de Mereldar"
    L["RACE_80269"] = "M�andre de Mereldar (avanced)"
    L["RACE_80275"] = "M�andre de Mereldar (reverse)"
    L["RACE_80261"] = "Vir�e de Velhan"
    L["RACE_80270"] = "Vir�e de Velhan (avanced)"
    L["RACE_80276"] = "Vir�e de Velhan (reverse)"
    -- Azj-Kahet
    L["RACE_80277"] = "Approche de la cit� des Fils"
    L["RACE_80283"] = "Approche de la cit� des Fils (advanced)"
    L["RACE_80289"] = "Approche de la cit� des Fils (reverse)"
    L["RACE_80278"] = "Descente des profondeurs D�mentielles"
    L["RACE_80284"] = "Descente des profondeurs D�mentielles (advanced)"
    L["RACE_80290"] = "Descente des profondeurs D�mentielles (reverse)"
    L["RACE_80279"] = "Trot de la Tisserande"
    L["RACE_80285"] = "Trot de la Tisserande (avanced)"
    L["RACE_80291"] = "Trot de la Tisserande (reverse)"
    L["RACE_80280"] = "Ru�e de Rak-Ahat"
    L["RACE_80286"] = "Ru�e de Rak-Ahat (avanced)"
    L["RACE_80292"] = "Ru�e de Rak-Ahat (reverse)"
    L["RACE_80281"] = "Folie de la Fosse"
    L["RACE_80287"] = "Folie de la Fosse (avanced)"
    L["RACE_80293"] = "Folie de la Fosse (reverse)"
    L["RACE_80282"] = "Calvacade du bastion du Si�ge"
    L["RACE_80288"] = "Calvacade du bastion du Si�ge (avanced)"
    L["RACE_80294"] = "Calvacade du bastion du Si�ge (reverse)"
    

    L["RACE_66679"] = "Boucle du sanctuaire de l’Essence"
    L["RACE_66692"] = "Boucle du sanctuaire de l’Essence (avanc�)"
    L["RACE_72052"] = "Boucle du sanctuaire de l’Essence (invers�)"
    L["RACE_66710"] = "Survol de givr�clair"
    L["RACE_66712"] = "Survol de givr�clair (avanc�)"
    L["RACE_72700"] = "Survol de givr�clair (invers�)"
    L["RACE_66721"] = "Slalom du domaine Sauvage"
    L["RACE_66722"] = "Slalom du domaine Sauvage (avanc�)"
    L["RACE_72705"] = "Slalom du domaine Sauvage (invers�)"
    L["RACE_66725"] = "Circuit du domaine Sauvage"
    L["RACE_66726"] = "Circuit du domaine Sauvage (avanc�)"
    L["RACE_72706"] = "Circuit du domaine Sauvage (invers�)"
    L["RACE_66732"] = "Descente de rapides de la canop�e de l'Apog�e"
    L["RACE_66733"] = "Descente de rapides de la canop�e de l'Apog�e (avanc�)"
    L["RACE_72734"] = "Descente de rapides de la canop�e de l'Apog�e (invers�)"
    L["RACE_66727"] = "Vol de Ruisse-Braise"
    L["RACE_66728"] = "Vol de Ruisse-Braise (avanc�)"
    L["RACE_72707"] = "Vol de Ruisse-Braise (invers�)"
    L["RACE_66777"] = "Circuit d’Uktulut"
    L["RACE_66778"] = "Circuit d’Uktulut (avanc�)"
    L["RACE_72739"] = "Circuit d’Uktulut (invers�)"
    L["RACE_66786"] = "Tour de Trêve-Ail�e"
    L["RACE_66787"] = "Tour de Trêve-Ail�e (avanc�)"
    L["RACE_72740"] = "Tour de Trêve-Ail�e (invers�)"

    L["RACE_66835"] = "Parcours du taillis Soltavel"
    L["RACE_66836"] = "Parcours du taillis Soltavel (avanc�)"
    L["RACE_72801"] = "Parcours du taillis Soltavel (invers�)"
    L["RACE_66877"] = "Travers�e des marais"
    L["RACE_66878"] = "Travers�e des marais (avanc�)"
    L["RACE_72802"] = "Travers�e des marais (invers�)"
    L["RACE_66880"] = "Descente des gorges"
    L["RACE_66881"] = "Descente des gorges (avanc�)"
    L["RACE_72803"] = "Descente des gorges (invers�)"
    L["RACE_66885"] = "Ascension des jardins d'Emeraude"
    L["RACE_66886"] = "Ascension des jardins d'Emeraude (avanc�)"
    L["RACE_72805"] = "Ascension des jardins d'Emeraude (invers�)"
    L["RACE_66921"] = "Marathon de Maruukaï"
    L["RACE_66933"] = "Marathon du miroir c�leste"
    L["RACE_70710"] = "Descente des rapides"
    L["RACE_70711"] = "Descente des rapides (avanc�)"
    L["RACE_72807"] = "Descente des rapides (invers�)"

    L["RACE_66946"] = "Sprint de la trav�e d'Azur"
    L["RACE_66947"] = "Sprint de la trav�e d'Azur (avanc�)"
    L["RACE_72796"] = "Sprint de la trav�e d'Azur (invers�)"
    L["RACE_67002"] = "Slalom de la trav�e d'Azur"
    L["RACE_67003"] = "Slalom de la trav�e d'Azur (avanc�)"
    L["RACE_72799"] = "Slalom de la trav�e d'Azur (invers�)"
    L["RACE_67031"] = "Ascension du Vakthros"
    L["RACE_67032"] = "Ascension du Vakthros (avanc�)"
    L["RACE_72794"] = "Ascension du Vakthros (invers�)"
    L["RACE_67296"] = "Tour d'Iskaara"
    L["RACE_67297"] = "Tour d'Iskaara (avanc�)"
    L["RACE_72800"] = "Tour d'Iskaara (invers�)"
    L["RACE_67565"] = "Survol glaciaire"
    L["RACE_67566"] = "Survol glaciaire (avanc�)"
    L["RACE_72795"] = "Survol glaciaire (invers�)"
    L["RACE_67741"] = "Domaine des Archives"
    L["RACE_67742"] = "Domaine des Archives (avanc�)"
    L["RACE_72797"] = "Domaine des Archives (invers�)"

    L["RACE_67095"] = "Vol de la forêt Ondoyante"
    L["RACE_67096"] = "Vol de la forêt Ondoyante (avanc�)"
    L["RACE_72793"] = "Vol de la forêt Ondoyante (invers�)"
    L["RACE_69957"] = "Epreuve du bastion de Tyr"
    L["RACE_69958"] = "Epreuve du bastion de Tyr (avanc�)"
    L["RACE_72792"] = "Epreuve du bastion de Tyr (invers�)"
    L["RACE_70051"] = "Circuit des falaises"
    L["RACE_70052"] = "Circuit des falaises (avanc�)"
    L["RACE_72760"] = "Circuit des falaises (invers�)"
    L["RACE_70059"] = "Ascension de l'acad�mie"
    L["RACE_70060"] = "Ascension de l'acad�mie (avanc�)"
    L["RACE_72754"] = "Ascension de l'acad�mie (invers�)"
    L["RACE_70157"] = "Promenade des jardins"
    L["RACE_70158"] = "Promenade des jardins (avanc�)"
    L["RACE_72769"] = "Promenade des jardins (invers�)"
    L["RACE_70161"] = "R�seau des grottes"
    L["RACE_70163"] = "R�seau des grottes (avanc�)"
    L["RACE_72750"] = "R�seau des grottes (invers�)"
end