local function antiAfk()
    while wait(60) do -- ทำซ้ำทุกๆ 60 วินาที (ปรับเวลาได้)
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new()) -- การกระทำป้องกัน AFK
    end
end

-- เชื่อมต่อกับเหตุการณ์ 'Idled'
local player = Players.LocalPlayer
player.Idled:connect(antiAfk)
if _G.AutoFarm then
    while true do -- This creates the infinite loop 

		local Adfdf = Instance.new("BodyVelocity")
		Adfdf.Name = "BodyClip"
		Adfdf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
		Adfdf.MaxForce = Vector3.new(100, 100, 100) * math.huge
		Adfdf.Velocity = Vector3.new(0,0,0)
		local TweenService = game:GetService("TweenService")
		local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
		{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage1.Sand.CFrame + Vector3.new(0, 70, 0)})
local TweenService = game:GetService("TweenService")
Tw:Play()
task.wait(1.8)
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage2.Sand.CFrame + Vector3.new(0, 80, 0)})
Tw:Play()
task.wait(1.9)
Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage3.Sand.CFrame + Vector3.new(0, 80, 0)})
Tw:Play()
task.wait(1.9)
Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage4.Sand.CFrame + Vector3.new(0, 80, 0)})
Tw:Play()
task.wait(1.9)
Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage5.Sand.CFrame + Vector3.new(0, 80, 0)})
Tw:Play()
task.wait(1.9)
Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage6.Sand.CFrame + Vector3.new(0, 80, 0)})
Tw:Play()
task.wait(1.9)

Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage7.Sand.CFrame + Vector3.new(0, 80, 0)})
Tw:Play()
task.wait(1.9)

Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage8.Sand.CFrame + Vector3.new(0, 80, 0)})
Tw:Play()
task.wait(1.9)

Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage9.Sand.CFrame + Vector3.new(0, 80, 0)})
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
task.wait(18) 
_G.AutoFarm = false
task.wait(1) 
_G.AutoFarm = true
end
end
