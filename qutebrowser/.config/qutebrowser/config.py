from dracula import draw

config.load_autoconfig(False)


draw.blood(c, {
    'spacing': {
        'vertical': 6,
        'horizontal': 8
    }
})


def settings(c):
    # Content
    c.content.javascript.enabled = True
    c.content.javascript.can_access_clipboard = True
    c.content.pdfjs = False

    # Colors Theme
    c.colors.webpage.preferred_color_scheme = 'dark'

    # Downloads
    c.downloads.position = 'bottom'
    c.downloads.remove_finished = 1000

    # File Handler
    c.fileselect.handler = 'external'
    c.fileselect.folder.command = ['kitty', '-e', 'ranger', '--choosedir={}']
    c.fileselect.single_file.command = ['kitty', '-e',
                                        'ranger', '--choosefiles={}']
    c.fileselect.multiple_files.command = ['kitty', '-e',
                                           'ranger', '--choosefiles={}']

    # Tabs
    c.tabs.show = 'multiple'
    c.tabs.position = 'left'
    c.tabs.padding = {'left': 5, 'right': 5, 'top': 10, 'bottom': 10}
    c.tabs.title.format = '{current_title}'
    c.tabs.width = 35
    c.tabs.indicator.width = 4
    c.tabs.title.alignment = 'center'

    # Status Bar
    c.statusbar.show = 'in-mode'
    c.statusbar.position = 'top'
    c.statusbar.padding = {'top': 0, 'bottom': 0, 'left': 0, 'right': 0}

    # Editor Command
    c.editor.command = ['kitty', '-e', 'nvim', '{file}']


def keybinding(c):
    c.bind('<Alt-y>', 'hint links userscript ytdl')


keybinding(config)
settings(c)
