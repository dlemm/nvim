return {
	"epwalsh/obsidian.nvim",
	version = "*", -- empfohlen, um die neueste stabile Version zu verwenden
	lazy = true,
	ft = "markdown",
	notes_subdir = "Fleeting",
	-- Optional, completion of wiki links, local markdown links, and tags using nvim-cmp.
	completion = {
		-- Set to false to disable completion.
		nvim_cmp = true,
		-- Trigger completion at 2 chars.
		min_chars = 2,
	},

	-- Where to put new notes. Valid options are
	--  * "current_dir" - put new notes in same directory as the current buffer.
	--  * "notes_subdir" - put new notes in the default notes subdirectory.
	new_notes_location = "notes_subdir",
	disable_frontmatter = true,

	-- Optional, customize how note IDs are generated given an optional title.
	---@param title string|?
	---@return string
	note_id_func = function(title)
		-- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
		-- In this case a note with the title 'My new note' will be given an ID that looks
		-- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
		local suffix = ""
		if title ~= nil then
			-- If title is given, transform it into valid file name.
			suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
		else
			-- If title is nil, just add 4 random uppercase letters to the suffix.
			for _ = 1, 4 do
				suffix = suffix .. string.char(math.random(65, 90))
			end
		end
		return tostring(os.time()) .. "-" .. suffix
	end,

	-- Optional, customize how note file names are generated given the ID, target directory, and title.
	---@param spec { id: string, dir: obsidian.Path, title: string|? }
	---@return string|obsidian.Path The full path to the new note.
	note_path_func = function(spec)
		-- This is equivalent to the default behavior.
		local path = spec.dir / tostring(spec.id)
		return path:with_suffix(".md")
	end,

	mappings = {
		-- overrides the 'gf' mapping to work on markdown/wiki links within your vault
		["gf"] = {
			action = function()
				return require("obsidian").util.gf_passthrough()
			end,
			opts = { noremap = false, expr = true, buffer = true },
		},
	},

	-- oder event = { "BufReadPre path/to/your/vault/**.md" },
	dependencies = {
		-- Wenn Sie nvim-cmp verwenden, fügen Sie dies hinzu:
		"hrsh7th/nvim-cmp",
		-- Wenn Sie telescope.nvim verwenden, fügen Sie dies hinzu:
		"nvim-telescope/telescope.nvim",
		-- Notwendige Abhängigkeit
		"nvim-lua/plenary.nvim",
	},
	opts = {
		workspaces = {
			{
				name = "zettelkasten",
				path = "/Users/dennis.lemm/Repositories/private/zettelkasten/",
			},
		},
	},
}
