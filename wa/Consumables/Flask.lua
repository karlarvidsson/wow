["Flask"] = {
			["outline"] = "None",
			["fontSize"] = 13,
			["parent"] = "Consumables",
			["displayText"] = "%c",
			["customText"] = "\n\nfunction()\n    \n    local t = { }\n    local r = \"|cFFFF0000\"\n    local g = \"|cFF00FF00\"\n    local w = \"|cFFFFFFFF\"\n    \n    for key,val in pairs(aura_env.foods) do\n        if val then \n            inBags = GetItemCount(key)\n            entry = w .. aura_env.prefix .. (aura_env.showName and val or \"\") .. (inBags >= aura_env.min and g or r) .. GetItemCount(key)\n            if (aura_env.includeBank) then\n                inBank = GetItemCount(key, true) - inBags\n                entry = entry .. \"(\" .. inBank .. \")\"\n            end\n            t[#t+1] = entry\n            \n        end \n    end\n    \n    return table.concat(t,\"\\n\")\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
			["anchorFrameFrame"] = "WeakAuras:Food",
			["anchorPoint"] = "TOPRIGHT",
			["regionType"] = "text",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["do_custom"] = true,
					["custom"] = "\naura_env.prefix = \"fl: \"\naura_env.includeBank=false\naura_env.min = 4 -- inclusive\n\naura_env.showName = false\n\naura_env.foods = {\n    \n    [\"Flask of the Countless Armies\"] = \"ca\",\n    \n}\n\n\n\n\n\n\n\n\n\n",
				},
			},
			["untrigger"] = {
			},
			["disjunctive"] = "all",
			["id"] = "Flask",
			["justify"] = "LEFT",
			["selfPoint"] = "TOPLEFT",
			["trigger"] = {
				["type"] = "custom",
				["unevent"] = "auto",
				["custom_hide"] = "timed",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Chat Message",
				["names"] = {
					"Inspiring Presence", -- [1]
				},
				["custom_type"] = "status",
				["custom"] = "function()\n    return true\nend \n\n",
				["spellIds"] = {
				},
				["use_unit"] = true,
				["check"] = "update",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["anchorFrameType"] = "SELECTFRAME",
			["frameStrata"] = 1,
			["width"] = 40.0000228881836,
			["xOffset"] = 8.00030517578125,
			["font"] = "Fira Mono",
			["numTriggers"] = 1,
			["yOffset"] = -0.000244140625,
			["height"] = 13,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
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
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		}
