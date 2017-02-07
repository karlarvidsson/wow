["Background Tile"] = {
			["parent"] = "Consumables",
			["xOffset"] = -312.999694824219,
			["untrigger"] = {
			},
			["mirror"] = false,
			["yOffset"] = 487.000183105469,
			["regionType"] = "texture",
			["color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.547477573156357, -- [4]
			},
			["blendMode"] = "BLEND",
			["activeTriggerMode"] = -10,
			["anchorPoint"] = "CENTER",
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
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
				["unevent"] = "auto",
				["check"] = "update",
				["use_unit"] = true,
				["custom_type"] = "status",
				["custom_hide"] = "timed",
			},
			["anchorFrameType"] = "SCREEN",
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
			["additional_triggers"] = {
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["discrete_rotation"] = 0,
			["width"] = 366,
			["numTriggers"] = 1,
			["id"] = "Background Tile",
			["height"] = 29,
			["rotate"] = true,
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
						["flexible"] = true,
						["ten"] = true,
						["twentyfive"] = true,
						["twenty"] = true,
						["fortyman"] = true,
					},
				},
			},
			["disjunctive"] = "all",
		}
