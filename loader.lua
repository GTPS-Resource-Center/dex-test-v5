local file = "dexV5.lua" -- cache file name (workspace folder)
local url = "https://raw.githubusercontent.com/GTPS-Resource-Center/dex-test-v5/main/source.lua"

local raw = isfile and isfile(file) and readfile(file)
raw = raw or game:HttpGet(url)

if isfile then
    task.spawn(writefile, file, game:HttpGet(url))
end

loadstring(raw)()
