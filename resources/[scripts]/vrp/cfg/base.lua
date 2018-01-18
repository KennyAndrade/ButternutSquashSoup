local cfg = {}

-- mysql credentials
cfg.db = {
  host = "185.38.150.41", -- database ip (default is local)
  database = "gtavmm52103",   -- name of database
  user = "gtavmm52103",    --  database username
  password = "SimonS1266"   -- password of your database
}

cfg.save_interval = 30 -- seconds
cfg.whitelist = true -- enable/disable whitelist

-- delay the tunnel at loading (for weak connections)
cfg.load_duration = 5 -- seconds, player duration in loading mode at the first spawn
cfg.load_delay = 0 -- milliseconds, delay the tunnel communication when in loading mode
cfg.global_delay = 0 -- milliseconds, delay the tunnel communication when not in loading mode

cfg.ping_timeout = 5 -- number of minutes after a client should be kicked if not sending pings

cfg.lang = "en" -- en / fr / it / ger / pt / ru / lith / dan
cfg.debug = false


return cfg