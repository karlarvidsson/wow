["Potion"] = {
			["outline"] = "None",
			["fontSize"] = 13,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c",
			["customText"] = "\n\nfunction()\n    \n    local t = { }\n    local r = \"|cFFFF0000\"\n    local g = \"|cFF00FF00\"\n    local w = \"|cFFFFFFFF\"\n    \n    for key,val in pairs(aura_env.foods) do\n        if val then \n            inBags = GetItemCount(key)\n            entry = w .. aura_env.prefix .. (aura_env.showName and val or \"\") .. (inBags >= aura_env.min and g or r) .. GetItemCount(key)\n            if (aura_env.includeBank) then\n                inBank = GetItemCount(key, true) - inBags\n                entry = entry .. \"(\" .. inBank .. \")\"\n            end\n            t[#t+1] = entry\n            \n        end \n    end\n    return table.concat(t,\"\\n\")\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
			["untrigger"] = {
			},
			["anchorPoint"] = "TOPRIGHT",
			["anchorFrameFrame"] = "WeakAuras:Flask",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["do_custom"] = true,
					["custom"] = "\naura_env.prefix = \"po: \"\naura_env.includeBank=false\naura_env.min = 40 -- inclusive\n\naura_env.showName = false\n\naura_env.foods = {\n    \n    [\"Potion of Prolonged Power\"] = \"pp\",\n    \n}\n\n\n\n\n\n\n\n\n\n",
				},
				["finish"] = {
				},
			},
			["parent"] = "Consumables",
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
			["trigger"] = {
				["type"] = "custom",
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
				["event"] = "Chat Message",
				["names"] = {
					"Inspiring Presence", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["spellIds"] = {
				},
				["custom"] = "function()\n    return true\nend \n\n",
				["use_unit"] = true,
				["check"] = "update",
				["custom_type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["custom_hide"] = "timed",
			},
			["justify"] = "LEFT",
			["selfPoint"] = "TOPLEFT",
			["id"] = "Potion",
			["yOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["xOffset"] = 15.0004272460938,
			["font"] = "Fira Mono",
			["numTriggers"] = 1,
			["width"] = 56,
			["height"] = 13,
			["disjunctive"] = "all",
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "text",
		}
