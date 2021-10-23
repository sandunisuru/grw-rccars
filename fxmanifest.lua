fx_version 'cerulean'
game 'gta5'

description 'RC Cars for QB Framework'
version '1.0.0'

shared_scripts {
    '@qb-core/import.lua'
}

client_scripts {
    "config.lua",
    "client/main.lua"
}

server_scripts {
    "server/main.lua"
}