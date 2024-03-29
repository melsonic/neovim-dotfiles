require 'nvim-web-devicons'.setup {
	-- your personnal icons can go here (to override)
	-- you can specify color or cterm_color instead of specifying both of them
	-- DevIcon will be appended to `name`
	override = {
		java = {
			icon = "",
			color = "#ff7300",
			cterm_color = "165",
			name = "Java"
		}
	};
	-- globally enable default icons (default to false)
	-- will get overriden by `get_icons` option
	default = true;
}
