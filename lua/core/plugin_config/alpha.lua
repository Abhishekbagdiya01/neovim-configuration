local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
 return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
	[[			      ....				]],
	[[			   ,od88888bo.			]],
	[[			 ,d88888888888b			]],	
	[[			,dP""'   `"Y888b       ,.		]],
	[[			d'         `"Y88b     .d8b. ,		]],
	[[			'            `Y88[  , `Y8P' db	]],
	[[				      `88b  Ybo,`',d88)       ]],
	[[				       ]88[ `Y888888P"        ]],
	[[				      ,888)  `Y8888P'         ]],
	[[				     ,d888[    `""'           ]],
	[[				  .od8888P          ...	]],
	[[			     ..od88888888bo,      .d888b      ]],
	[[				  `""Y888888bo. .d888888b     ]],
	[[			.             `Y88b"Y88888P"' `Y8b    ]],
	[[			:.             `Y88[ `"""'     `88[   ]],
	[[			|b              |88b            Y8b.  ]],
	[[			`8[             :888[ ,         :88)  ]],
	[[			 Yb             :888) `b.       d8P'  ]],
	[[			 `8b.          ,d888[  `Ybo.  .d88[   ]],
	[[			  Y8b.        .dWARP'   `Y8888888P    ]],
	[[			  `Y88bo.  .od8888P'      "YWARP'     ]],
	[[			   `"Y8888888888P"'         `"'       ]],
	[[			      `"Y8888P""'                     ]],
	[[				 `""'                         ]],






[[     ___      .______    __    __   __       _______. __    __   _______  __  ___ ]],
[[    /   \     |   _  \  |  |  |  | |  |     /       ||  |  |  | |   ____||  |/  / ]],
[[   /  ^  \    |  |_)  | |  |__|  | |  |    |   (----`|  |__|  | |  |__   |  '  /  ]],
[[  /  /_\  \   |   _  <  |   __   | |  |     \   \    |   __   | |   __|  |    <   ]],
[[ /  _____  \  |  |_)  | |  |  |  | |  | .----)   |   |  |  |  | |  |____ |  .  \  ]],
[[/__/     \__\ |______/  |__|  |__| |__| |_______/    |__|  |__| |_______||__|\__\ ]],

}


dashboard.section.buttons.val = {
   dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
   dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
   dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
   dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
   dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.vim<CR>"),
   dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
 return "It's not who I am underneath, but what I do that defines me. ~Batman" 
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
