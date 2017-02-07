["Food"] = {
			["outline"] = "None",
			["fontSize"] = 13,
			["disjunctive"] = "all",
			["displayText"] = "%c",
			["customText"] = "\n\nfunction()\n    \n    local t = { }\n    local r = \"|cFFFF0000\"\n    local g = \"|cFF00FF00\"\n    local w = \"|cFFFFFFFF\"\n    \n    for key,val in pairs(aura_env.foods) do\n        if val then \n            inBags = GetItemCount(key)\n            entry = w .. aura_env.prefix .. (aura_env.showName and val or \"\") .. (inBags >= aura_env.min and g or r) .. GetItemCount(key)\n            if (aura_env.includeBank) then\n                inBank = GetItemCount(key, true) - inBags\n                entry = entry .. \"(\" .. inBank .. \")\"\n            end\n            t[#t+1] = entry \n            \n        end \n    end   \n    \n    return table.concat(t,\"\\n\")\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["untrigger"] = {
			},
			["regionType"] = "text",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["do_custom"] = true,
					["custom"] = "\naura_env.prefix = \"fo: \"\naura_env.includeBank=false\naura_env.min = 40 -- inclusive\n\naura_env.showName = false\n\naura_env.foods = {\n    \n    [\"Azshari Salad\"] = \"as\",\n    \n}\n\n\n\n\n\n\n\n\n\n",
				},
				["finish"] = {
				},
			},
			["parent"] = "Consumables",
			["selfPoint"] = "TOPLEFT",
			["trigger"] = {
				["type"] = "custom",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Inspiring Presence", -- [1]
				},
				["event"] = "Chat Message",
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["spellIds"] = {
				},
				["custom"] = "function()\n    return true\nend \n\n",
				["use_unit"] = true,
				["check"] = "update",
				["unevent"] = "auto",
				["custom_type"] = "status",
				["custom_hide"] = "timed",
			},
			["justify"] = "LEFT",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "Food",
			["yOffset"] = 6.0001220703125,
			["frameStrata"] = 1,
			["width"] = 47.9999809265137,
			["xOffset"] = 76.9998168945313,
			["font"] = "Fira Mono",
			["numTriggers"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["height"] = 13,
			["anchorPoint"] = "LEFT",
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorFrameFrame"] = "WeakAuras:Background Tile",
		}
