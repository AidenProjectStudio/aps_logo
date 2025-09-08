fx_version 'cerulean'
game 'gta5'

name "aps-logo"
description "Affichage logo serveur ingame"
author "Aiden Project Studio"
version "1.0.0"

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/logo.png'
}

client_scripts {
    'config.lua',
    'client.lua'
}
