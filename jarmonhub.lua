
local ScreenGui = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")
local ImageLabel_2 = Instance.new("ImageLabel")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageLabel.Parent = ScreenGui
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0, 0, 0.464337707, 0)
ImageLabel.Size = UDim2.new(0, 393, 0, 368)
ImageLabel.Image = "http://www.roblox.com/asset/?id=16984903368"

ImageLabel_2.Parent = ImageLabel
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Position = UDim2.new(2.82442737, 0, -0.0625, 0)
ImageLabel_2.Size = UDim2.new(0, 195, 0, 168)
ImageLabel_2.Image = "http://www.roblox.com/asset/?id=16984927571"

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.38773945, 0, 0, 0)
Frame.Size = UDim2.new(0, 383, 0, 161)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.138381198, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 276, 0, 61)
TextLabel.Font = Enum.Font.Cartoon
TextLabel.Text = "jarmon shop"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 42.000

TextLabel_2.Parent = TextLabel
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(-0.100436449, 0, 0.864207506, 0)
TextLabel_2.Size = UDim2.new(0, 280, 0, 27)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "บริการขายไก่ตันราคาสุดคุ้มเริ่มต้นเพียง 19 บาท"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextSize = 19.000

TextLabel_3.Parent = TextLabel_2
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.0530848913, 0, 1, 0)
TextLabel_3.Size = UDim2.new(0, 277, 0, 24)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "และไก่ตันv4 t10 ในราคา 59 บาท"
TextLabel_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.TextSize = 19.000

TextLabel_4.Parent = TextLabel_2
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.125, 0, 1.88888884, 0)
TextLabel_4.Size = UDim2.new(0, 236, 0, 56)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "ไก่แมพBuild a Boat ก็มีนะเริ่มต้น 20 บาท"
TextLabel_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.TextSize = 26.000
wait(4)
game.CoreGui:FindFirstChild("ScreenGui"):Destroy()
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

if game.PlaceId ~= 537413528 then
    local TeleportService = game:GetService("TeleportService")
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    
    local Rejoin = coroutine.create(function()
        local Success, ErrorMessage = pcall(function()
            TeleportService:Teleport(game.PlaceId, LocalPlayer)
        end)
    
        if ErrorMessage and not Success then
            warn(ErrorMessage)
        end
    end)
    
    coroutine.resume(Rejoin)
end

if _G.AutoFarm then
    while true do -- This creates the infinite loop 

		local Adfdf = Instance.new("BodyVelocity")
		Adfdf.Name = "BodyClip"
		Adfdf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
		Adfdf.MaxForce = Vector3.new(100, 100, 100) * math.huge
		Adfdf.Velocity = Vector3.new(0,0,0)
		local TweenService = game:GetService("TweenService")
		local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
		{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage1.Sand.CFrame + Vector3.new(0, 50, 0)})
local TweenService = game:GetService("TweenService")
Tw:Play()
task.wait(1.8)
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage2.Sand.CFrame + Vector3.new(0, 30, 0)})
Tw:Play()
task.wait(1.9)
Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage3.Sand.CFrame + Vector3.new(0, 30, 0)})
Tw:Play()
task.wait(1.9)
Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage4.Sand.CFrame + Vector3.new(0, 30, 0)})
Tw:Play()
task.wait(1.9)
Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage5.Sand.CFrame + Vector3.new(0, 30, 0)})
Tw:Play()
task.wait(1.9)
Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage6.Sand.CFrame + Vector3.new(0, 50, 0)})
Tw:Play()
task.wait(1.9)

Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage7.Sand.CFrame + Vector3.new(0, 50, 0)})
Tw:Play()
task.wait(1.9)

Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage8.Sand.CFrame + Vector3.new(0, 50, 0)})
Tw:Play()
task.wait(1.9)

Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage9.Sand.CFrame + Vector3.new(0, 70, 0)})
Tw:Play()
task.wait(1.9)

Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(-59.152435302734375, 95.01837158203125, 8500.4814453125)})
Tw:Play()
task.wait(1.9)

Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(-59.09392166137695, -357.79449462890625, 9483.427734375)})
Tw:Play()
task.wait(0.7)

Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(-55.9123649597168, -357.9725646972656, 9490.365234375)})
Tw:Play()
task.wait(17.2) 

end
end
local VirtualUser = game:GetService('VirtualUser')
local Players = game:GetService("Players")

local function antiAfk()
    while wait(60) do -- ทำซ้ำทุกๆ 60 วินาที (ปรับเวลาได้)
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new()) -- การกระทำป้องกัน AFK
    end
end

-- เชื่อมต่อกับเหตุการณ์ 'Idled'
local player = Players.LocalPlayer
player.Idled:connect(antiAfk)
local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/jarmonxd/jarmonhubobf/main/ui.lua")()

local win = DiscordLib:Window("jarmon hub - Build a Boat For Treasure by jarmon")

local serv = win:Server("jarmon hub", "http://www.roblox.com/asset/?id=6031075938")

local rtux = serv:Channel("เริ่มต้น")
rtux:Button(
    "ไม่มีไรไปดูหน้าอื่นๆได้เลยครับ",
    function()
        DiscordLib:Notification("แจ้งเตือน", "กดเพื่อ!", "โอ้วไปละ")
    end
)
local btns = serv:Channel("ฟาม")

local autoFarmEnabledOnStart = true



local shouldRun = true -- ตัวแปรควบคุมสำหรับการทำงานของลูป 
btns:Button(
    "กันหลุดเพราะafk",
    function()
        local VirtualUser = game:GetService('VirtualUser')
        local Players = game:GetService("Players")
        
        local function antiAfk()
            while wait(60) do -- ทำซ้ำทุกๆ 60 วินาที (ปรับเวลาได้)
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new()) -- การกระทำป้องกัน AFK
            end
        end
        
        -- เชื่อมต่อกับเหตุการณ์ 'Idled'
        local player = Players.LocalPlayer
        player.Idled:connect(antiAfk)
        DiscordLib:Notification("แจ้งเตือน", "เราได้เปิดใช้งานฟังชั่นแล้ว", "โอ้ววโอเค!!")
    end
)
btns:Seperator()
btns:Toggle("Auto-Farm", false, function(t)
    while t do
		local Adfdf = Instance.new("BodyVelocity")
		Adfdf.Name = "BodyClip"
		Adfdf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
		Adfdf.MaxForce = Vector3.new(100, 100, 100) * math.huge
		Adfdf.Velocity = Vector3.new(0,0,0)
		local TweenService = game:GetService("TweenService")
		local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
		{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage1.Sand.CFrame + Vector3.new(0, 50, 0)})
local TweenService = game:GetService("TweenService")
Tw:Play()
task.wait(1.9)
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage2.Sand.CFrame + Vector3.new(0, 30, 0)})
Tw:Play()
task.wait(1.9)
Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage3.Sand.CFrame + Vector3.new(0, 30, 0)})
Tw:Play()
task.wait(1.9)
Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage4.Sand.CFrame + Vector3.new(0, 30, 0)})
Tw:Play()
task.wait(1.9)
Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage5.Sand.CFrame + Vector3.new(0, 30, 0)})
Tw:Play()
task.wait(1.9)
Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage6.Sand.CFrame + Vector3.new(0, 50, 0)})
Tw:Play()
task.wait(1.9)

Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage7.Sand.CFrame + Vector3.new(0, 50, 0)})
Tw:Play()
task.wait(1.9)

Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage8.Sand.CFrame + Vector3.new(0, 50, 0)})
Tw:Play()
task.wait(1.9)

Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage9.Sand.CFrame + Vector3.new(0, 70, 0)})
Tw:Play()
task.wait(1.9)

Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(-59.152435302734375, 95.01837158203125, 8500.4814453125)})
Tw:Play()
task.wait(1.9)

Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(-59.09392166137695, -357.79449462890625, 9483.427734375)})
Tw:Play()
task.wait(0.7)

Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(-55.9123649597168, -357.9725646972656, 9490.365234375)})
Tw:Play()
task.wait(17.2) 


    end

end)
_G.AutoFarm = true



btns:Toggle("Auto-Farmยังไม่ได้ทําใหม่", autoFarmEnabledOnStart, function(autoFarmEnabledOnStart)
            while shouldRun do
            while true do -- ลูปแบบวนไม่รู้จบ
            local TweenService = game:GetService("TweenService")
            local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
            {CFrame = CFrame.new(-72.1803665, 93.0172119, 687.601196, -0.999440074, 0.00150631333, -0.0334255174, 8.50787529e-09, 0.998986125, 0.0450188294, 0.0334594399, 0.0449936241, -0.998426795)}):Play()
            wait(0)
            local Adfdf = Instance.new("BodyVelocity")
        Adfdf.Name = "BodyClip"
        Adfdf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        Adfdf.MaxForce = Vector3.new(100, 100, 100) * math.huge
        Adfdf.Velocity = Vector3.new(0,0,0)
            local TweenService = game:GetService("TweenService")
            local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(19.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
            {CFrame = CFrame.new(-26.0942402, 102.713982, 8696.9834, 0.991173387, -0.0190039258, 0.131202593, -1.15081278e-08, 0.989672303, 0.143348306, -0.132571757, -0.142083034, 0.980936885)}):Play()
            wait(19)
            local TweenService = game:GetService("TweenService")
            local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
            {CFrame = CFrame.new(-55.9123649597168, -357.9725646972656, 9490.365234375)}):Play()
            wait(2.2)
            local TweenService = game:GetService("TweenService")
            local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
            {CFrame = CFrame.new(-55.9123649597168, -357.9725646972656, 9490.365234375)}):Play()
            wait(1)
            wait(17.2)
            end
        end
    end)
    btns:Seperator()
    btns:Button("Kill ใข้เวลาโปรบัค หรือกดปุ่ม del", function()
        game.Players.LocalPlayer.Character:BreakJoints()
        wait(5)
    
    DiscordLib:Notification("แจ้งเตือน", "okฉันฆ่าคุณละ", "โอ้วตกลง!")
    end)
btns:Bind("Kill bind", Enum.KeyCode.Delete, function()
        game.Players.LocalPlayer.Character:BreakJoints()
        wait(5)
        DiscordLib:Notification("แจ้งเตือน", "okฉันฆ่าคุณละ", "โอ้วตกลง!")
    end)
local bnds = serv:Channel("หน้าหลัก")
local sldr =
bnds:Slider(
    "ความเร็ว",
    0,
    500,
    16,
    function(t)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = t
    end
)

bnds:Button(
    "รีเซ็ตความเร็ว",
    function()
        sldr:Change(16)
    end
)
local sldu =
bnds:Slider(
    "กระโดดสูง",
    0,
    500,
    50,
    function(t)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = t
    end
)

bnds:Button(
    "รีเซ็ตความสูงเมื่อกระโดด",
    function()
        sldu:Change(50)
    end
)


bnds:Toggle(
    "กระโดดไม่จํากัด",
    true,
    function(bool)
        if bool == true then
        local InfiniteJumpEnabled = true
        game:GetService("UserInputService").JumpRequest:connect(function()
            if InfiniteJumpEnabled then
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            
            else
                local InfiniteJumpEnabled = false
            end
        end)
     end
    end
)
bnds:Toggle(
    "คอนโทน+คลิก = วาป",
    false,
    function(ori)
        local UIS = game:GetService("UserInputService")

        local Player = game.Players.LocalPlayer
        local Mouse = Player:GetMouse()
        
        
        function GetCharacter()
           return game.Players.LocalPlayer.Character
        end
        
        function Teleport(pos)
           local Char = GetCharacter()
           if Char then
               Char:MoveTo(pos)
           end
        end
        
        
        UIS.InputBegan:Connect(function(input)
           if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
               Teleport(Mouse.Hit.p)
           end
        end)
    end
)

bnds:Toggle(
    "นิ่ง",
    false,
    function(Value)
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = Value
    end
)
bnds:Button(
    "แสงและเงา",
    function()
        local a = game.Lighting
        a.Ambient = Color3.fromRGB(33, 33, 33)
        a.Brightness = 6.67
        a.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
        a.ColorShift_Top = Color3.fromRGB(255, 247, 237)
        a.EnvironmentDiffuseScale = 0.105
        a.EnvironmentSpecularScale = 0.522
        a.GlobalShadows = true
        a.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
        a.ShadowSoftness = 0.04
        a.GeographicLatitude = -15.525
        a.ExposureCompensation = 0.75
        local b = Instance.new("BloomEffect", a)
        b.Enabled = true
        b.Intensity = 0.04
        b.Size = 1900
        b.Threshold = 0.915
        local c = Instance.new("ColorCorrectionEffect", a)
        c.Brightness = 0.176
        c.Contrast = 0.39
        c.Enabled = true
        c.Saturation = 0.2
        c.TintColor = Color3.fromRGB(217, 145, 57)
        if getgenv().mode == "Summer" then
           c.TintColor = Color3.fromRGB(255, 220, 148)
        elseif getgenv().mode == "Autumn" then
           c.TintColor = Color3.fromRGB(217, 145, 57)
        else
           warn("No mode selected!")
           print("Please select a mode")
           b:Destroy()
           c:Destroy()
        end
        local d = Instance.new("DepthOfFieldEffect", a)
        d.Enabled = true
        d.FarIntensity = 0.077
        d.FocusDistance = 21.54
        d.InFocusRadius = 20.77
        d.NearIntensity = 0.277
        local e = Instance.new("ColorCorrectionEffect", a)
        e.Brightness = 0
        e.Contrast = -0.07
        e.Saturation = 0
        e.Enabled = true
        e.TintColor = Color3.fromRGB(255, 247, 239)
        local e2 = Instance.new("ColorCorrectionEffect", a)
        e2.Brightness = 0.2
        e2.Contrast = 0.45
        e2.Saturation = -0.1
        e2.Enabled = true
        e2.TintColor = Color3.fromRGB(255, 255, 255)
        local s = Instance.new("SunRaysEffect", a)
        s.Enabled = true
        s.Intensity = 0.01
        s.Spread = 0.146
    end
)
local brns = serv:Channel("fps")
brns:Button(
    "fps สูงสุด",
    function()
        setfpscap(1000)
    end
)
btns:Seperator()
brns:Button(
    "ภาพกาก v2",
    function()
        local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
        local g = game
        local w = g.Workspace
        local l = g.Lighting
        local t = w.Terrain
        t.WaterWaveSize = 0
        t.WaterWaveSpeed = 0
        t.WaterReflectance = 0
        t.WaterTransparency = 0
        l.GlobalShadows = false
        l.FogEnd = 9e9
        l.Brightness = 0
        settings().Rendering.QualityLevel = "Level01"
        for i, v in pairs(g:GetDescendants()) do
            if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
            elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                v.Transparency = 1
            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                v.Lifetime = NumberRange.new(0)
            elseif v:IsA("Explosion") then
                v.BlastPressure = 1
                v.BlastRadius = 1
            elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
                v.Enabled = false
            elseif v:IsA("MeshPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
                v.TextureID = 10385902758728957
            end
        end
        for i, e in pairs(l:GetChildren()) do
            if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                e.Enabled = false
            end
        end
    end
)
brns:Seperator()
brns:Button(
    "ภาพกาก v1",
    function()
        _G.Settings = {
            Players = {
                ["Ignore Me"] = true, -- Ignore your Character
                ["Ignore Others"] = true -- Ignore other Characters
            },
            Meshes = {
                Destroy = false, -- Destroy Meshes
                LowDetail = true -- Low detail meshes (NOT SURE IT DOES ANYTHING)
            },
            Images = {
                Invisible = true, -- Invisible Images
                LowDetail = false, -- Low detail images (NOT SURE IT DOES ANYTHING)
                Destroy = false, -- Destroy Images
            },
            ["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
            ["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
            ["No Explosions"] = true, -- Makes Explosion's invisible
            ["No Clothes"] = true, -- Removes Clothing from the game
            ["Low Water Graphics"] = true, -- Removes Water Quality
            ["No Shadows"] = true, -- Remove Shadows
            ["Low Rendering"] = true, -- Lower Rendering
            ["Low Quality Parts"] = true -- Lower quality parts
        }
        loadstring(game:HttpGet("https://pastebin.com/raw/g71kFyzH"))()
    end
)
local unus = serv:Channel("เซิร์ฟเวอร์")

unus:Button(
    "rejoin	",
    function()
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Rejoin = coroutine.create(function()
    local Success, ErrorMessage = pcall(function()
        TeleportService:Teleport(game.PlaceId, LocalPlayer)
    end)

    if ErrorMessage and not Success then
        warn(ErrorMessage)
    end
end)

coroutine.resume(Rejoin)
    end
)
unus:Button(
    "Server Hop	",
    function()
        local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()

        module:Teleport(game.PlaceId)
    end
)

local bnus = serv:Channel("TP")
Plr = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Plr,v.Name) 
end

local drope =
bnus:Dropdown(
    "เลือกผู้เล่น",
    Plr,
    function(t)
        PlayerTP = t
    end
)
bnus:Button(
    "tp by jarmon",
    function()
        loadstring(game:HttpGet"https://raw.githubusercontent.com/mon5500000/jarmonhub/main/tpbyjarmon.lua")()
    end
)
bnus:Button(
    "Refresh",
    function()
        drope:Refresh(Plr)
    end
)
bnus:Seperator()
bnus:Button(
    "tp",
    function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTP].Character.HumanoidRootPart.CFrame

    end
)
bnus:Toggle(
    "Auto tp",
    false,
    function(t)
        _G.TPPlayer = t
        while _G.TPPlayer do wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTP].Character.HumanoidRootPart.CFrame
        end
    end
)
bnus:Button(
    "Refresh มันบัคใช้ไม่ได้แนะนําให้ไปใช้ tp by jarmon นะ",
    function()
        loadstring(game:HttpGet"https://raw.githubusercontent.com/jarmonxd/jarmonhubobf/main/tp-obf.lua")()
    end
)
bnus:Button(
    "Refresh มันบัคใช้ไม่ได้แนะนําให้ไปใช้ tp by jarmon นะ",
    function()
        loadstring(game:HttpGet"https://raw.githubusercontent.com/jarmonxd/jarmonhubobf/main/tp-obf.lua")()
    end
)
bnus:Button(
    "Refresh มันบัคใช้ไม่ได้แนะนําให้ไปใช้ tp by jarmon นะ",
    function()
        loadstring(game:HttpGet"https://raw.githubusercontent.com/jarmonxd/jarmonhubobf/main/tp-obf.lua")()
    end
)
bnus:Button(
    "Refresh มันบัคใช้ไม่ได้แนะนําให้ไปใช้ tp by jarmon นะ",
    function()
        loadstring(game:HttpGet"https://raw.githubusercontent.com/jarmonxd/jarmonhubobf/main/tp-obf.lua")()
    end
)
bnus:Button(
    "Refresh มันบัคใช้ไม่ได้แนะนําให้ไปใช้ tp by jarmon นะ",
    function()
        drope:Refresh(Plr)
    end
)
bnus:Button(
    "Refresh มันบัคใช้ไม่ได้แนะนําให้ไปใช้ tp by jarmon นะ",
    function()
        drope:Refresh(Plr)
    end
)



serv:Channel("by jarmon_ff")