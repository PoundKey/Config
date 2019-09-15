### User settings
```js
{
	"auto_complete": true,
	"auto_complete_selector": "source, text",
	"auto_complete_triggers":
	[
		{
			"characters": "<",
			"selector": "text.html"
		},
		{
			"characters": " ",
			"selector": "text.html meta.tag"
		}
	],
	"color_scheme": "Packages/User/Nice Blue Soda (SL).tmTheme",
	"font_face": "Inconsolata",
	"font_size": 16,
	"ignored_packages":
	[
		"Vintage"
	],
	"remember_open_files": true,
	"soda_folder_icons": true,
	"tab_size": 2,
	"theme": "Spacefunk (Grey Tuesday).sublime-theme",
	"trim_trailing_white_space_on_save": true
}

```
### Key bindings
```js

[
	{ "keys": ["ctrl+space"], "command": "auto_complete" },
	{ "keys": ["ctrl+space"], "command": "replace_completion_with_auto_complete", "context":
		[
			{ "key": "last_command", "operator": "equal", "operand": "insert_best_completion" },
			{ "key": "auto_complete_visible", "operator": "equal", "operand": false },
			{ "key": "setting.tab_completion", "operator": "equal", "operand": true }
		]
	},
	{ "keys": ["option+s"], "command": "show_overlay", "args": {"overlay": "command_palette", "text": "Snippet: "}},
    { "keys": ["option+a"], "command": "coffee_compile"},
    { "keys": ["option+q"], "command": "erb" },
    { "keys": ["option+e"], "command": "erb" },
    { "keys": ["option+z"], "command": "run_macro_file", "args": {"file": "Packages/User/RubyOL.sublime-macro"}},
    { "keys": ["alt+m"], "command": "markdown_preview", "args": {"target": "browser", "parser":"github"}},
    { "keys": ["option+w"], "command": "run_macro_file", "args": {"file": "Packages/User/ERBV.sublime-macro"}},
    { "keys": ["command+."], "command": "run_macro_file", "args": {"file": "Packages/User/ERBV.sublime-macro"}},
    {"keys": ["ctrl+i"], "command": "reindent" , "args": {"single_line": false}},
    {"keys": ["option+i"], "command": "reindent" , "args": {"single_line": false}},
    {
    "keys": ["super+shift+a"], "command": "align_tab",
    "args" : {"user_input" : "\\s*/l1l0"}
 		},
    { "keys": ["option+x"], "command": "toggle_side_bar" },




]

```
