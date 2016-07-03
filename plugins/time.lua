function run(msg, matches)
local url , res = http.request('http://api.gpmod.ir/time/')
if res ~= 200 then return "No connection" end
local jdat = json:decode(url)
local text = '🕒 ســـاعت: '..jdat.FAtime..' \n📆 امـــروز '..jdat.FAdate..' میباشــد.\n ____________\n🕒 '..jdat.ENtime..'\n📆 '..jdat.ENdate.. '\n➖➖➖➖➖➖\n@Oo_Persian_Team_oO\nρєяѕιαη вσт'
return text
end
return {
  patterns = {"^[/!]([Tt][iI][Mm][Ee])$"}, 
run = run 
}
