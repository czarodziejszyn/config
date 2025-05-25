return {
	"lervag/vimtex",
	lazy = false, -- we don't want to lazy load VimTeX
	-- tag = "v2.15", -- uncomment to pin to a specific release
	init = function()
		-- VimTeX configuration goes here, e.g.
		vim.g.vimtex_view_method = "zathura"
		-- Umożliwia włączenie właściwego ładowania wtyczek
		vim.cmd("filetype plugin indent on")

		-- Włącza funkcje związane z składnią
		vim.cmd("syntax enable")

		-- Ustawienia dla podglądu PDF
		vim.g.vimtex_view_method = "zathura" -- Zmienna dla metody podglądu
		-- Można również ustawić bardziej ogólną konfigurację podglądu
		vim.g.vimtex_view_general_viewer = "okular"
		vim.g.vimtex_view_general_options = "--unique file:@pdf\\#src:@line@tex"

		-- Ustawienie kompilatora
		vim.g.vimtex_compiler_method = "xelatex"

		-- Zmiana lokalnego lidera (domyślnie "\")
		vim.g.maplocalleader = ","
	end,
}
