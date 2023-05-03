onion = {}
onion.interval = 3
onion.oragin = nil
onion.ranks = {6000,9000,12000, 24000, 48000, 100000}
onion.FN = minetest.get_worldpath().."/onion.txt"
onion.cprivs = {}
onion.CB = 200 -- This is the christmas bonus radius
onion.xp_divisor = 1000

--Get list of install privileges
local privs = minetest.registered_privileges

--Populate Privs Table
for priv, def in pairs(privs) do
    if string.find(priv,"chapters") ~= nil then
        table.insert(onion.cprivs,priv)
    end
end