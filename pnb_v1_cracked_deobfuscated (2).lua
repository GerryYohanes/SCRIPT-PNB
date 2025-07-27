--[[
    Script made by zitus
    discord.gg/zitus
    Cracked and deobfuscated by Natix#1316
    discord.gg/xQA6AnMxfk
]]--

-- CRACK SETTINGS
ownerCrack          = "Natix" -- Your username 

-- WEBHOOOK
YourDiscordid           = "527737154877652993"
webhookdc               = " " -- Link webhook, dont know how to make webhook link? search on youtube : how to make webhook on pc/android

-- MODE
gaut                    = false -- FALSE = MODE PNB, TRUE = MODE RETRIEVE GAUT

-- RETRIEVE GAUT
dropBlock_toOtherWorld  = true
world_block             = " "
id_world_block          = " "
posX_block              = 1 -- IF YOU MAKE DROP SEED TO OTHER WORLD = FALSE, you need set Coordinate x, y for bot drop seed
posY_block              = 1
retrieve_count          = 200
timer_retrieve          = 100000

-- GENERAL SETTING
botList                 = {" ", " ", " ", " "} -- Example usage : {"Bot1", "Bot2", "Bot3", "Bot4"}
max_people              = 10 -- set max people in a world
afk_duration            = 300000 -- 5 minutes = 300000
move_direction          = 1
collect_range           = 3
trashList               = {5040, 5042, 5044, 5032, 5034, 5036, 5038, 5024, 5026, 5028, 5030, 7162, 7164}

-- CUSTOM FITURE PNB
ignore_gems             = false -- true = with GAUT, false = without GAUT

-- SETTING TAKE BLOCK CAN FROM OTHER WORLD
takeBlock_fromOtherworld= true -- enable this if want take block from other world
world_takeBlock         = " "
id_worldTake            = " "

-- SETTING PNB
break_block             = true
break_background        = false
break_mode              = "up"  -- 2 mode : up, down
worlds                  = {" "}
door_id_pnb             = " "
block_id                = 5666 -- item id block_id
delay_pnb               = 200 -- default 200
world_start             = 1
pnb_posX                = 57 --  POS COORDINAT FOLLOWING GROWTOPIA ORIGINAL APP (NOT PANDORA COORD)
pnb_posY                = 19 --  POS COORDINAT FOLLOWING GROWTOPIA ORIGINAL APP (NOT PANDORA COORD)

-- SETTING SEED
dropseed_to_otherworld  = true
world_seed              = " "
id_world_seed           = " "

posX_seed               = 33 -- IF YOU MAKE DROP SEED TO OTHER WORLD = FALSE, you need set Coordinate x, y for bot drop seed
posY_seed               = 24 --  POS COORDINAT FOLLOWING GROWTOPIA ORIGINAL APP (NOT PANDORA COORD)

-- SETTING PACK
buy_pack                = true
world_pack              = " "
id_world_pack           = " "
pack_name               = "world_lock"
price_pack              = 2000
maxgems                 = 10000
packitemid              = {242}

-- ==================================================================================


time = os.time()
total_world = #worlds
break_mode = string.lower(break_mode)
for i in pairs(worlds) do
  worlds[i] = string.upper(worlds[i])
end
world_block = string.upper(world_block)
id_world_block = string.upper(id_world_block)
world_takeBlock = string.upper(world_takeBlock)
id_worldTake = string.upper(id_worldTake)
door_id_pnb = string.upper(door_id_pnb)
world_seed = string.upper(world_seed)
world_pack = string.upper(world_pack)
id_world_pack = string.upper(id_world_pack)
id_world_seed = string.upper(id_world_seed)
pack_name = string.lower(pack_name)
posX_seed = posX_seed - 1
posY_seed = posY_seed - 1
pnb_posX = pnb_posX - 1
pnb_posY = pnb_posY - 1
owner = ownerCrack
dcbotnamedc = "AUTO PNB V1.2"
thumbnaildc = "https://media.discordapp.net/attachments/1012917753407090818/1035355157472493689/growtopia.gif"
colorEmbed = "4672231"
function powershell(loglars)
  local script = "        $webhookUri = \"" .. webhookdc .. [[
" 
      $Body = @{
          'username' = 'PNB V1.2'
      
          'content' = ']] .. loglars .. "\n" .. os.date("|:calendar:|Date :  %d/%m/%Y") .. " " .. os.date([[

|:clock1:|Hour :  %H:%M:%S]]) .. [[

-------------------------------------]] .. [[
'
          'avatar_url' = 'https://media.discordapp.net/attachments/1012917753407090818/1035355157472493689/growtopia.gif'
        }
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        Invoke-RestMethod -Uri $webhookUri -Method 'post' -Body $Body
        ]]
  local pipe = io.popen("powershell -command -", "w")
  pipe:write(script)
  pipe:close()
end
function pshell(webhook, dcbotname, thumbnail, colorEmbed, bot_name, active_slot, total_slot, bot_world, status_bot, bot_gems, i, j, message)
  local script = "    $webHookUrl = '" .. webhook .. [[
'

    $host.ui.RawUI.WindowTitle = ""
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12


    [System.Collections.ArrayList]$embedArray = @()

    $title       = ']] .. dcbotname .. [[
'

    $description = ']] .. message .. [[
'

    $color       = ']] .. colorEmbed .. [[
'

    $user        = ']] .. dcbotname .. [[
'

    $cpu = (Get-WmiObject win32_processor | Measure-Object -property LoadPercentage -Average | Select Average).Average

    $ram = (Get-Counter '\Memory\Available MBytes').CounterSamples.CookedValue

    $date = [System.TimeZoneInfo]::ConvertTimeBySystemTimeZoneId(  (Get-Date), 'Singapore Standard Time')

    $ip = Get-NetIPAddress -AddressFamily IPv4 -InterfaceIndex $(Get-NetConnectionProfile | Select-Object -ExpandProperty InterfaceIndex) | Select-Object -ExpandProperty IPAddress

    $discordid   = ']] .. YourDiscordid .. [[
'

    $botName     = ']] .. bot_name .. [[
'

    $activeSlot  = ']] .. active_slot .. [[
'

    $totalSlot   = ']] .. total_slot .. [[
'

    $botWorld    = ']] .. bot_world .. [[
'

    $statusBot   = ']] .. status_bot .. [[
'

    $botGems     = ']] .. bot_gems .. [[
'

    $current     = ']] .. i .. [[
'

    $total       = ']] .. j .. [[
'

    $ownerSC     = ']] .. owner .. [[
'
    
    $thumbUrl = ']] .. thumbnail .. [[
' 
    $thumbnailObject = [PSCustomObject]@{

        url = $thumbUrl

    }

    $embedObject = [PSCustomObject]@{
        username    = $user
        title       = $title
        description = "
        <a:discord:993775478798307368> Discord : <@$discordid>`n<:server_owner:999478757775642674> Owner Script : $ownerSC 
        `n<a:broadcast:981898314423341116> Information : **$description**`r
        `n<:CPU:996159527500120127> CPU : $cpu%
        `n<:RAM:996159529966391377> Free RAM : $ram MB
        `n<:ipaddress:997077571810369637> IPv4 : $ip
        `n<:bot:982769375960498276> Bot : $botName 
        `n<:backpack:1004320771902025738> BP BOT : $activeSlot | $totalSlot
        `n<:world:996054982795198544> World : $botWorld
        `n<:world:996054982795198544> Progress World : $current | $total
        `n<a:onlinegif:958670636434219018> Status : $statusBot
        `n<:Gems:995665514007363664> Gems : $botGems
        
        ***[$date]***"
        color       = $color
        thumbnail   = $thumbnailObject

    }
    $embedArray.Add($embedObject) | Out-Null
    $payload = [PSCustomObject]@{

        embeds = $embedArray

    }

    Invoke-RestMethod -Uri $webHookUrl -Body ($payload | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'
    ]]
  pipe = io.popen("powershell  -command -", "w")
  pipe:write(script)
  pipe:close()
end
function Join(zitus, id_zitus)
  captcha()
  while getBot().world ~= zitus do
    sendPacket(3, [[
action|join_request
name|]] .. zitus .. [[

invitedWorld|0]])
    sleep(15000)
  end
  sendPacket(3, [[
action|join_request
name|]] .. zitus .. "|" .. id_zitus .. [[

invitedWorld|0]])
  sleep(5000)
end
function gs(id)
  count = 0
  for _, object in pairs(getObjects()) do
    if object.id == id then
      count = count + object.count
    end
  end
  return count
end
function cekActiveSlot()
  bp_active = 0
  for _, item in pairs(getInventory()) do
    bp_active = bp_active + 1
  end
  return bp_active
end
function baris()
  for i, bot in pairs(botList) do
    if string.lower(getBot().name) == string.lower(bot) then
      findPath(pnb_posX + i - 1, pnb_posY)
      sleep(1000)
      say("`1BOT `2LINE UP !!!")
      break
    end
  end
end
function checkowner(i)
  isOwner = false
  say("Script Running")
  sleep(2000)
  say("buy sc? `4Youtube : Zitus, `2Subcriber : 240")
  sleep(4000)
  --for _, player in pairs(getPlayers()) do
    --if string.lower(player.name) == string.lower(owner) then
      isOwner = true
      say("Owner script : " .. owner)
      pshell(webhookdc, dcbotnamedc, thumbnaildc, colorEmbed, getBot().name, cekActiveSlot(), getBot().slots, getBot().world, getBot().status, gs(112), i, total_world, "OWNER SCRIPT IS ALIVE")
      sleep(4000)
      --break
    --else
    --  isOwner = false
    --end
  --end
  if isOwner == false then
    say("Sorry you're not Owner script SILLY !")
    pshell(webhookdc, dcbotnamedc, thumbnaildc, colorEmbed, getBot().name, cekActiveSlot(), getBot().slots, getBot().world, getBot().status, gs(112), i, total_world, "OWNER SCRIPT NOT IN SAME WORLD WITH BOT, RE EXE THE SCRIPT AND MAKE SURE OWNER SCRIPT WITH BOT")
    sleep(4000)
    return false
  else
    return true
  end
end
function captcha()
  solve = getBot().captcha
  while 2 == solve or 3 == solve do
    connect()
    sleep(10000)
    solve = getBot().captcha
  end
end
function cekPeople(i)
  people = 0
  for _, player in pairs(getPlayers()) do
    people = people + 1
  end
  if people >= max_people then
    sleep(3000)
    pshell(webhookdc, dcbotnamedc, thumbnaildc, colorEmbed, getBot().name, cekActiveSlot(), getBot().slots, getBot().world, getBot().status, gs(112), i, total_world, "BOT LEAVE WORLD BECAUSE REACHED MAX PEOPLE IN WORLD (AVOID MODS)")
    sendPacket(3, [[
action|join_request
name|]] .. world_pack .. [[

invitedWorld|0]])
    sleep(15000)
    while getBot().world ~= world_pack do
      sendPacket(3, [[
action|join_request
name|]] .. world_pack .. [[

invitedWorld|0]])
      sleep(15000)
    end
    sleep(afk_duration)
    Join(worlds[i], door_id_pnb)
  end
end
function cekOnline(i)
  if getBot().status ~= "online" then
    pshell(webhookdc, dcbotnamedc, thumbnaildc, colorEmbed, getBot().name, cekActiveSlot(), getBot().slots, getBot().world, getBot().status, gs(112), i, total_world, "BOT DISCONNECT")
    while getBot().status ~= "online" do
      sleep(10000)
    end
    pshell(webhookdc, dcbotnamedc, thumbnaildc, colorEmbed, getBot().name, cekActiveSlot(), getBot().slots, getBot().world, getBot().status, gs(112), i, total_world, "BOT RECONNECTED")
  end
end
function Trash()
  for a, trash in ipairs(trashList) do
    if findItem(trash) > 190 then
      sendPacket(2, [[
action|trash
|itemID|]] .. trash)
      sleep(1500)
      sendPacket(2, [[
action|dialog_return
dialog_name|trash_item
itemID|]] .. trash .. [[
|
count|]] .. findItem(trash))
      sleep(3000)
    end
  end
end
function BuyDropPack(i)
  gems_now = findItem(112)
  if findItem(112) >= maxgems then
    collectSet(false, 2)
    sleep(2000)
    Join(world_pack, id_world_pack)
    move(move_direction, 0)
    sleep(2000)
  else
    return
  end
  while findItem(112) >= price_pack do
    gems_now = findItem(112)
    bp_active = cekActiveSlot()
    sendPacket(2, [[
action|buy
item|]] .. pack_name)
    sleep(4000)
    if getBot().slots == bp_active or gems_now == findItem(112) then
      sendPacket(2, [[
action|buy
item|upgrade_backpack]])
      if gems_now ~= findItem(112) then
        say("BP UPGRADED")
        pshell(webhookdc, dcbotnamedc, thumbnaildc, colorEmbed, getBot().name, cekActiveSlot(), getBot().slots, getBot().world, getBot().status, gs(112), i, total_world, "BOT UPGRADE BP")
        sleep(10000)
      else
        Trash()
      end
      sendPacket(2, [[
action|buy
item|]] .. itemname)
      sleep(4000)
      if getBot().status ~= "online" then
        cekOnline(i)
      end
      for _, pack_id in pairs(packitemid) do
        if findItem(pack_id) >= 200 then
          count_item = findItem(pack_id)
          drop(pack_id)
          sleep(4000)
          if getBot().status ~= "online" then
            cekOnline(i)
          end
          while count_item == findItem(pack_id) and 0 ~= findItem(pack_id) do
            move(move_direction, 0)
            sleep(2000)
            drop(pack_id)
            sleep(4000)
            count_item = findItem(pack_id)
            if getBot().status ~= "online" then
              cekOnline(i)
            end
          end
        end
      end
    end
    for _, pack_id in pairs(packitemid) do
      if findItem(pack_id) >= 200 then
        count_item = findItem(pack_id)
        drop(pack_id)
        sleep(4000)
        if getBot().status ~= "online" then
          cekOnline(i)
        end
        while count_item == findItem(pack_id) and 0 ~= findItem(pack_id) do
          move(move_direction, 0)
          sleep(2000)
          drop(pack_id)
          sleep(4000)
          count_item = findItem(pack_id)
          if getBot().status ~= "online" then
            cekOnline(i)
          end
        end
      end
    end
  end
  for _, pack_id in pairs(packitemid) do
    if findItem(pack_id) >= 0 then
      count_item = findItem(pack_id)
      drop(pack_id)
      sleep(4000)
      if getBot().status ~= "online" then
        cekOnline(i)
      end
      while count_item == findItem(pack_id) and 0 ~= findItem(pack_id) do
        move(move_direction, 0)
        sleep(2000)
        drop(pack_id)
        sleep(4000)
        count_item = findItem(pack_id)
        if getBot().status ~= "online" then
          cekOnline(i)
        end
      end
    end
  end
  total_pack = ""
  for _, pack_id in pairs(packitemid) do
    total_pack = total_pack .. [[

<:mystery_block:1002960838933618818> Purchased Item (]] .. pack_id .. ") : " .. gs(pack_id)
  end
  pshell(webhookdc, dcbotnamedc, thumbnaildc, colorEmbed, getBot().name, cekActiveSlot(), getBot().slots, getBot().world, getBot().status, gs(112), i, total_world, "BOT DONE BUY AND DROP PACK" .. "\n" .. total_pack)
end
function dropSeed(i)
  dropseed_langsung = false
  if gaut == true and findItem(block_id + 1) > 0 then
    dropseed_langsung = true
  end
  if findItem(block_id + 1) > 190 or dropseed_langsung == true then
    if true == dropseed_to_otherworld then
      Join(world_seed, id_world_seed)
      if getBot().status ~= "online" then
        cekOnline(i)
        Join(world_seed, id_world_seed)
      end
    else
      findPath(posX_seed, posY_seed)
      sleep(500)
      while math.floor(getBot().x / 32) ~= posX_seed and math.floor(getBot().y / 32) ~= posY_seed do
        findPath(posX_seed, posY_seed)
        sleep(500)
      end
    end
    move(move_direction, 0)
    sleep(2000)
    count_seed = findItem(block_id + 1)
    drop(block_id + 1)
    sleep(4000)
    if getBot().status ~= "online" then
      cekOnline(i)
    end
    while count_seed == findItem(block_id + 1) and 0 ~= findItem(block_id + 1) do
      move(move_direction, 0)
      sleep(2000)
      drop(block_id + 1)
      sleep(4000)
      if getBot().status ~= "online" then
        cekOnline(i)
      end
    end
  end
  powershell("<:seed:980472844708352030> Seed : " .. gs(block_id + 1))
  if getBot().status ~= "online" then
    cekOnline(i)
  end
end
function dropBlock(i)
  if findItem(block_id) > 0 then
    if dropBlock_toOtherWorld == true then
      Join(world_block, id_world_block)
    else
      findPath(posX_block, posY_block)
      sleep(500)
      while math.floor(getBot().x / 32) ~= posX_block and math.floor(getBot().y / 32) ~= posY_block do
        findPath(posX_block, posY_block)
        sleep(500)
      end
    end
    move(move_direction, 0)
    sleep(2000)
    count_block = findItem(block_id)
    drop(block_id)
    sleep(4000)
    if getBot().status ~= "online" then
      cekOnline(i)
    end
    while count_block == findItem(block_id) and 0 ~= findItem(block_id) do
      move(move_direction, 0)
      sleep(2000)
      drop(block_id)
      sleep(4000)
      if getBot().status ~= "online" then
        cekOnline(i)
      end
    end
    powershell("<:lgrid:1000452271563346031> BLOCK : " .. gs(block_id))
  end
  if getBot().status ~= "online" then
    cekOnline(i)
  end
end
function takeBlock(i)
  if 0 == findItem(block_id) then
    if takeBlock_fromOtherworld == true then
      Join(world_takeBlock, id_worldTake)
    end
    if gs(block_id) > 0 then
      powershell("<:lgrid:1000452271563346031> BLOCK : " .. gs(block_id))
      for _, obj in pairs(getObjects()) do
        if obj.id == block_id then
          findPath(math.floor(obj.x / 32), math.floor(obj.y / 32))
          sleep(2000)
          collect(3, 112)
          sleep(500)
          if findItem(block_id) > 0 then
            break
          end
        end
      end
      cekOnline(i)
      if takeBlock_fromOtherworld == true then
        Join(worlds[i], door_id_pnb)
      end
      cekOnline(i)
      baris()
    else
      return
    end
  end
end
function pnb(i)
  captcha()
  gems_now = findItem(112)
  bp_active = cekActiveSlot()
  if bp_active == getBot().slots then
    sendPacket(2, [[
action|buy
item|upgrade_backpack]])
    sleep(3000)
    if gems_now ~= findItem(112) then
      say("BP UPGRADED")
      pshell(webhookdc, dcbotnamedc, thumbnaildc, colorEmbed, getBot().name, cekActiveSlot(), getBot().slots, getBot().world, getBot().status, gs(112), i, total_world, "BOT UP BP")
      sleep(10000)
    else
      Trash()
    end
  end
  posY_bot = math.floor(getBot().y / 32)
  place_pos = 2
  if break_mode == "up" then
    posY_bot = posY_bot - 2
    place_pos = -2
  else
    posY_bot = posY_bot + 2
    place_pos = 2
  end
  takeBlock(i)
  while findItem(block_id) > 0 do
    bp_active = cekActiveSlot()
    if bp_active == getBot().slots then
      sendPacket(2, [[
action|buy
item|upgrade_backpack]])
      sleep(3000)
      if gems_now ~= findItem(112) then
        say("BP UPGRADED")
        pshell(webhookdc, dcbotnamedc, thumbnaildc, colorEmbed, getBot().name, cekActiveSlot(), getBot().slots, getBot().world, getBot().status, gs(112), i, total_world, "BOT UP BP")
        sleep(10000)
      else
        Trash()
      end
    end
    captcha()
    Trash()
    cekPeople(i)
    if 0 == getTile(math.floor(getBot().x / 32), posY_bot).fg then
      captcha()
      cekPeople(i)
      if ignore_gems == true then
        collect(collect_range, 112)
      else
        collect(collect_range)
      end
      place(block_id, 0, place_pos)
      sleep(100)
      captcha()
      if getBot().status ~= "online" then
        cekOnline(i)
        Join(worlds[i], door_id_pnb)
        baris()
        captcha()
      end
    end
    takeBlock(i)
    cekPeople(i)
    if true == break_block then
      while 0 ~= getTile(math.floor(getBot().x / 32), posY_bot).fg do
        cekPeople(i)
        captcha()
        punch(0, place_pos)
        sleep(delay_pnb)
        captcha()
        if getBot().status ~= "online" then
          cekOnline(i)
          Join(worlds[i], door_id_pnb)
          baris()
          captcha()
        end
      end
    else
      while 0 ~= getTile(math.floor(getBot().x / 32), posY_bot).bg do
        cekPeople(i)
        captcha()
        punch(0, place_pos)
        sleep(delay_pnb)
        captcha()
        if getBot().status ~= "online" then
          cekOnline(i)
          Join(worlds[i], door_id_pnb)
          baris()
          captcha()
        end
      end
    end
    if findItem(block_id + 1) > 190 then
      collectSet(false, 2)
      cekOnline(i)
      dropSeed(i)
      Join(worlds[i], door_id_pnb)
      baris()
      captcha()
    end
    if 0 == findItem(block_id) then
      takeBlock(i)
    end
    if findItem(112) >= maxgems then
      Join(world_pack, id_world_pack)
      BuyDropPack(i)
      cekOnline(i)
      Join(worlds[i], door_id_pnb)
      if getBot().status ~= "online" then
        cekOnline(i)
        Join(worlds[i], door_id_pnb)
      end
      baris()
      captcha()
      cekOnline(i)
    end
    if getBot().status ~= "online" then
      cekOnline(i)
      Join(worlds[i], door_id_pnb)
      baris()
      captcha()
    end
  end
end
function retrieve(i)
  count = retrieve_count
  if getBot().status ~= "online" then
    cekOnline(i)
    Join(worlds[i], door_id_pnb)
    captcha()
  end
  captcha()
  if findItem(block_id) > 0 then
    dropBlock(i)
    Join(worlds[i], door_id_pnb)
    captcha()
  end
  if findItem(block_id + 1) > 0 then
    dropSeed(i)
    Join(worlds[i], door_id_pnb)
    captcha()
  end
  for _, tile in pairs(getTiles()) do
    if tile.fg == 6946 then
      captcha()
      findPath(tile.x, tile.y - 1)
      sleep(1000)
      wrench(0, 1)
      sleep(2000)
      sendPacket(2, [[
action|dialog_return
dialog_name|itemsucker_seed
tilex|]] .. math.floor(getBot().x / 32) .. [[
|
tiley|]] .. math.floor(getBot().y / 32) + 1 .. [[
|
buttonClicked|retrieveitem

chk_enablesucking|1]])
      sleep(4000)
      sendPacket(2, [[
action|dialog_return
dialog_name|itemremovedfromsucker
tilex|]] .. math.floor(getBot().x / 32) .. [[
|
tiley|]] .. math.floor(getBot().y / 32) + 1 .. [[
|
itemtoremove|]] .. count)
      sleep(4000)
    elseif tile.fg == 6948 then
      captcha()
      findPath(tile.x, tile.y - 1)
      sleep(1000)
      wrench(0, 1)
      sleep(2000)
      sendPacket(2, [[
action|dialog_return
dialog_name|itemsucker_block
tilex|]] .. math.floor(getBot().x / 32) .. [[
|
tiley|]] .. math.floor(getBot().y / 32) + 1 .. [[
|
buttonClicked|retrieveitem

chk_enablesucking|1]])
      sleep(4000)
      sendPacket(2, [[
action|dialog_return
dialog_name|itemremovedfromsucker
tilex|]] .. math.floor(getBot().x / 32) .. [[
|
tiley|]] .. math.floor(getBot().y / 32) + 1 .. [[
|
itemtoremove|]] .. count)
      sleep(4000)
    end
  end
  if findItem(block_id) > 0 then
    dropBlock(i)
    Join(worlds[i], door_id_pnb)
    captcha()
  end
  if findItem(block_id + 1) > 0 then
    dropSeed(i)
    Join(worlds[i], door_id_pnb)
    captcha()
  end
end
function main()
  if checkowner(world_start) then
    for i = world_start, #worlds do
      time = os.time()
      attempt = 0
      while getBot().world ~= worlds[i] do
        if attempt < 3 then
          sendPacket(3, [[
action|join_request
name|]] .. worlds[i] .. [[

invitedWorld|0]])
          sleep(15000)
          attempt = attempt + 1
          cekOnline(i)
        else
          break
        end
      end
      if attempt < 3 then
        sendPacket(3, [[
action|join_request
name|]] .. worlds[i] .. "|" .. door_id_pnb .. [[

invitedWorld|0]])
        sleep(4000)
        if gaut == false then
          baris()
          captcha()
          pnb(i)
          if getBot().status ~= "online" then
            cekOnline(i)
            Join(worlds[i], door_id_pnb)
            captcha()
          end
        else
          while true do
            retrieve(i)
            sleep(timer_retrieve)
          end
        end
        selesai = os.time()
        time = selesai - time
        powershell([[
BOT FINISHED PNB 
<a:verified:990866800994574356> Total Spend Time | ]] .. math.floor(time % 86400 / 3600) .. " Hours " .. math.floor(time % 86400 % 3600 / 60) .. " Minutes")
      end
    end
  else
    say("owner script is " .. owner .. " bring this Growid in same world with bot ! and re execute script")
  end
end
main()