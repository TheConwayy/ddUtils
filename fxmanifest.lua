fx_version 'cerulean'
game 'gta5'

name "Duck Development Utilities"
description "Utilities used by all Duck Development scripts/resources"
author "Duck Development - Conway"
version "BETA"

shared_scripts {
	'config.lua',
	'shared/*.lua'
}

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua'
}

server_exports {
	'consoleMessage',
	'consoleWarn',
	'consoleErr'
}
