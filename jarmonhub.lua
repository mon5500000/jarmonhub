if game.PlaceId ~= 537413528 then
    loadstring(game:HttpGet('https://raw.githubusercontent.com/jarmonxd/jarmonhubobf/main/jarmon.lua'))()
else
    -- Your code here


local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
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

local Window = Fluent:CreateWindow({
    Title = "Build A Boat For Treasure - Jarmon Hub V1",
    SubTitle = "Free Script",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Amethyst",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    status = Window:AddTab({ Title = "status", Icon = "bar-chart-2" }),
    Farm = Window:AddTab({ Title = "Farm", Icon = "flag-triangle-right" }),
    Main = Window:AddTab({ Title = "Main", Icon = "home" }),
    Server = Window:AddTab({ Title = "Server", Icon = "network" }),
    tp = Window:AddTab({ Title = "teleport", Icon = "send" }),
    tpcolor = Window:AddTab({ Title = "teleportcolor", Icon = "swords" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" }),
    test = Window:AddTab({ Title = "test", Icon = "party-popper" }),
}

local Options = Fluent.Options
---------------------------------------------(status)------------------------------------------------
do
    Fluent:Notify({
        Title = "เรายังทํายังไม่เสร็จ",
        Content = "ระวังโปรนอนอ้วนด้วยหละ",
        SubContent = "ขอตัวไปศึกษาการทําโปรก่อนน้าา", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })

    Tabs.status:AddParagraph({
        Title = " Last Updated 📅 ",
        Content = "1/04/2024"
    })
    Tabs.status:AddParagraph({
        Title = " Coming Soon 🕘 ",
        Content = "เราจะเปิดให้ใช้งานเร็วๆนี้ครับ"
    })



        ---------------------------------------------(Farm)------------------------------------------------
    
        local config = {
            autoFarm = false
        }
        _G.AutoFarm = config.autoFarm

        local Toggle = Tabs.Farm:AddToggle("AutoFarm", {Title = "AutoFarm", Default = config.autoFarm })

        Toggle:OnChanged(function(Value)
            while Value do -- This creates the infinite loop 

                local Adfdf = Instance.new("BodyVelocity")
                Adfdf.Name = "BodyClip"
                Adfdf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                Adfdf.MaxForce = Vector3.new(100, 100, 100) * math.huge
                Adfdf.Velocity = Vector3.new(0,0,0)
                local TweenService = game:GetService("TweenService")
                local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
                {CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage1.Sand.CFrame + Vector3.new(0, 70, 0)})
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
        config.autoFarm = false
        task.wait(1) 
        config.autoFarm = true
        end

        end)

        Toggle:SetValue(config.autoFarm)


        Tabs.Farm:AddParagraph({
            Title = "test",
            Content = "test\ntest"
        })
    
        Tabs.Farm:AddButton({
            Title = "Enable Autofarm",
            Description = "Very Enable Autofarm",
            Callback = function()
                getgenv().TreasureAutoFarm = {
                    Enabled = true, -- // Toggle the auto farm on and off
                    Teleport = 2, -- // How fast between each teleport between the stages and stuff
                    TimeBetweenRuns = 5 -- // How long to wait until it goes to the next run
                }
                
                -- // Services
                local Players = game:GetService("Players")
                local Workspace = game:GetService("Workspace")
                local Lighting = game:GetService("Lighting")
                
                -- // Vars
                local LocalPlayer = Players.LocalPlayer
                
                -- // Goes through all of the stages
                local autoFarm = function(currentRun)
                    -- // Variables
                    local Character = LocalPlayer.Character
                    local NormalStages = Workspace.BoatStages.NormalStages
                
                    -- // Go to each stage thing
                    for i = 1, 10 do
                        local Stage = NormalStages["CaveStage" .. i]
                        local DarknessPart = Stage:FindFirstChild("DarknessPart")
                
                        if (DarknessPart) then
                            -- // Teleport to next stage
                            print("Teleporting to next stage: Stage " .. i)
                            Character.HumanoidRootPart.CFrame = DarknessPart.CFrame
                
                            -- // Create a temp part under you
                            local Part = Instance.new("Part", LocalPlayer.Character)
                            Part.Anchored = true
                            Part.Position = LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 6, 0)
                
                            -- // Wait and remove temp part
                            wait(getgenv().TreasureAutoFarm.Teleport)
                            Part:Destroy()
                        end
                    end
                
                    -- // Go to end
                    print("Teleporting to the end")
                    repeat wait()
                        Character.HumanoidRootPart.CFrame = NormalStages.TheEnd.GoldenChest.Trigger.CFrame
                    until Lighting.ClockTime ~= 14
                
                    -- // Wait until you have respawned
                    local Respawned = false
                    local Connection
                    Connection = LocalPlayer.CharacterAdded:Connect(function()
                        Respawned = true
                        Connection:Disconnect()
                    end)
                
                    repeat wait() until Respawned
                    wait(getgenv().TreasureAutoFarm.TimeBetweenRuns)
                    print("Auto Farm: Run " .. currentRun .. " finished")
                end
                
                -- // Whilst the autofarm is enable, constantly do it
                local autoFarmRun = 1
                while wait() do
                    if (getgenv().TreasureAutoFarm.Enabled) then
                        print("Initialising Auto Farm: Run " .. autoFarmRun)
                        autoFarm(autoFarmRun)
                        autoFarmRun = autoFarmRun + 1
                    end
                end
                      end    
                })

                Tabs.Farm:AddButton({
            Title = "Disable Autofarm",
            Description = "",
            Callback = function()
                game.Players.LocalPlayer.Character:BreakJoints()

            end
        })

    ---------------------------------------------(main)------------------------------------------------
    local Slider = Tabs.Main:AddSlider("Slider", {
        Title = "Speed",
        Description = "Set your speed",
        Default = 16,
        Min = 5,
        Max = 150,
        Rounding = 1,
        Callback = function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end
    })
    Slider:SetValue(16)
    Slider:OnChanged(function(Value)
        print("Slider changed:", Value)
    end)
    Tabs.Main:AddButton({
        Title = "Reset Speed",
        Description = "Setting the initial speed to 16.",
        Callback = function()
            Window:Dialog({
                Title = "Reset Speed?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            Slider:SetValue(16)
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    local Slider = Tabs.Main:AddSlider("Slider", {
        Title = "JumpPower",
        Description = "",
        Default = 50,
        Min = 5,
        Max = 150,
        Rounding = 1,
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
        end
    })
    local Toggle = Tabs.Main:AddToggle("Anchored", {Title = "Anchored", Default = false })

    Toggle:OnChanged(function(Value)
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = Value
    end)
    Tabs.Main:AddParagraph({
        Title = "The Toggle at the bottom is open and cannot be closed.",
        Content = ""
    })

    local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Infinite Jump", Default = false })

    Toggle:OnChanged(function(bool)
        if bool == true then
            local InfiniteJumpEnabled = true
            game:GetService("UserInputService").JumpRequest:connect(function()
                if InfiniteJumpEnabled then
                    game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
                
                else
            InfiniteJumpEnabled = false
                end
            end)
         end
    end)
    local Toggle = Tabs.Main:AddToggle("Ctrl+Click=tp", {Title = "Ctrl + Click = tp", Default = false })

    Toggle:OnChanged(function(Valued)
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
    end)

    ---------------------------------------------(Server)------------------------------------------------
    Tabs.Server:AddButton({
        Title = "rejoin",
        Description = "rejoin Server",
        Callback = function()
            Window:Dialog({
                Title = "rejoin Server",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
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
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Server:AddButton({
        Title = "Server Hop",
        Description = "Server Hop",
        Callback = function()
            Window:Dialog({
                Title = "Server Hop",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
    
                            module:Teleport(game.PlaceId)
                            end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })


    ---------------------------------------------(tp)------------------------------------------------

    Tabs.tp:AddButton({
        Title = "tp Script",
        Description = "Script by jarmon",
        Callback = function()
            Window:Dialog({
                Title = "tp Script?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
                            local Window = Library.CreateLib("Jarmon Hub by jarmon", "DarkTheme")
                            local Tab = Window:NewTab("Player")
                            local Section = Tab:NewSection("")
                            Plr = {}
                            for i,v in pairs(game:GetService("Players"):GetChildren()) do
                                table.insert(Plr,v.Name) 
                            end
                            local drop = Section:NewDropdown("Select Player!", "Click To Select", Plr, function(t)
                               PlayerTP = t
                            end)
                            Section:NewButton("Refresh Dropdown","Refresh Dropdown", function()
                              drop:Refresh(Plr)
                            end)
                            local TweenService = game:GetService("TweenService")
                            
                            Section:NewButton("Click To Tween ", "", function()
                              local Player = game.Players.LocalPlayer
                              local Target = game.Players[PlayerTP]
                              game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                              if Player and Target then
                                local PlayerCharacter = Player.Character
                                local TargetCharacter = Target.Character
                                if PlayerCharacter and TargetCharacter then
                                  local PlayerHumanoidRootPart = PlayerCharacter:FindFirstChild("HumanoidRootPart")
                                  local TargetHumanoidRootPart = TargetCharacter:FindFirstChild("HumanoidRootPart")
                                  if PlayerHumanoidRootPart and TargetHumanoidRootPart then
                                    local TweenInfo = TweenInfo.new((PlayerHumanoidRootPart.Position - TargetHumanoidRootPart.Position).Magnitude / 100, Enum.EasingStyle.Linear)
                                    local Goals = {CFrame = TargetHumanoidRootPart.CFrame}
                                    _G.Tween = TweenService:Create(PlayerHumanoidRootPart, TweenInfo, Goals)
                                    _G.Tween:Play()
                                  end
                                end
                                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                              end
                            end)
                            Section:NewToggle("Auto Tween", "", function(t)
                              _G.TweenPlayer = t
                              game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                              while _G.TweenPlayer do wait()
                                local Player = game.Players.LocalPlayer
                                local Target = game.Players[PlayerTP]
                                if Player and Target then
                                  local PlayerCharacter = Player.Character
                                  local TargetCharacter = Target.Character
                                  if PlayerCharacter and TargetCharacter then
                                    local PlayerHumanoidRootPart = PlayerCharacter:FindFirstChild("HumanoidRootPart")
                                    local TargetHumanoidRootPart = TargetCharacter:FindFirstChild("HumanoidRootPart")
                                    if PlayerHumanoidRootPart and TargetHumanoidRootPart then
                                      local TweenInfo = TweenInfo.new((PlayerHumanoidRootPart.Position - TargetHumanoidRootPart.Position).Magnitude / 100, Enum.EasingStyle.Linear)
                                      local Goals = {CFrame = TargetHumanoidRootPart.CFrame}
                                      _G.Tween = TweenService:Create(PlayerHumanoidRootPart, TweenInfo, Goals)
                                      _G.Tween:Play()
                                      _G.Tween.Completed:Wait() -- Wait for the tween to complete
                                    end
                                  end
                                end
                                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                              end
                            end)
                            Section:NewButton("de Tween ", "", function()
                              if _G.Tween then
                                _G.Tween:Cancel()
                              end
                            end)
                            Section:NewButton("Click To tp ", "", function()
                              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTP].Character.HumanoidRootPart.CFrame
                            end)
                            Section:NewToggle("Auto  Tp", "", function(t)
                            _G.TPPlayer = t
                            while _G.TPPlayer do wait()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTP].Character.HumanoidRootPart.CFrame
                            end
                            end)
                            
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTP].Character.HumanoidRootPart.CFrame
                            
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            Dropdown:Refresh(Plr)
                        end
                    }
                }
            })
        end
    })
    ---------------------------------------------(tpcolor)------------------------------------------------


    Tabs.tpcolor:AddButton({
        Title = "WhiteZone",
        Description = "Teleported To WhiteZone",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-57.50128173828125, -9.701340675354004, -612.9971923828125)
        end
    })
    Tabs.tpcolor:AddButton({
        Title = "BlackZone",
        Description = "Teleported To BlackZone",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-576.3949584960938, -9.701340675354004, -121.22904968261719)
        end
    })
    Tabs.tpcolor:AddButton({
        Title = "blueZone",
        Description = "Teleported To Really blueZone",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(459.7375793457031, -9.701340675354004, 347.0867004394531)
        end
    })
    Tabs.tpcolor:AddButton({
        Title = "CamoZone",
        Description = "Teleported To CamoZone",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-576.4089965820312, -9.701340675354004, 241.1985321044922)
        end
    })
    Tabs.tpcolor:AddButton({
        Title = "MagentaZone",
        Description = "Teleported To MagentaZone",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(469.2639465332031, -9.701340675354004, 677.0164794921875)
        end
    })
    Tabs.tpcolor:AddButton({
        Title = "redZone",
        Description = "Teleported To redZone",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(488.9206237792969, -9.701340675354004, -72.02716827392578)
        end
    })
    Tabs.tpcolor:AddButton({
        Title = "YellerZone",
        Description = "Teleported To Really YellerZone",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-565.3948974609375, -9.701489448547363, 681.999755859375)
        end
    })

---------------------------------------------(ศึกษาui)------------------------------------------------
    Tabs.test:AddParagraph({
        Title = "Paragraph",
        Content = "This is a paragraph.\nSecond line!"
    })



    Tabs.test:AddButton({
        Title = "Button",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })



    local Toggle = Tabs.test:AddToggle("MyToggle", {Title = "Toggle", Default = false })

    Toggle:OnChanged(function()
        print("Toggle changed:", Options.MyToggle.Value)
    end)

    Options.MyToggle:SetValue(false)


    
    local Slider = Tabs.test:AddSlider("Slider", {
        Title = "Slider",
        Description = "This is a slider",
        Default = 2,
        Min = 0,
        Max = 5,
        Rounding = 1,
        Callback = function(Value)
            print("Slider was changed:", Value)
        end
    })

    Slider:OnChanged(function(Value)
        print("Slider changed:", Value)
    end)

    Slider:SetValue(3)



    local Dropdown = Tabs.test:AddDropdown("Dropdown", {
        Title = "Dropdown",
        Values = {"one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen"},
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue("four")

    Dropdown:OnChanged(function(Value)
        print("Dropdown changed:", Value)
    end)


    
    local MultiDropdown = Tabs.test:AddDropdown("MultiDropdown", {
        Title = "Dropdown",
        Description = "You can select multiple values.",
        Values = {"one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen"},
        Multi = true,
        Default = {"seven", "twelve"},
    })

    MultiDropdown:SetValue({
        three = true,
        five = true,
        seven = false
    })

    MultiDropdown:OnChanged(function(Value)
        local Values = {}
        for Value, State in next, Value do
            table.insert(Values, Value)
        end
        print("Mutlidropdown changed:", table.concat(Values, ", "))
    end)



    local Colorpicker = Tabs.test:AddColorpicker("Colorpicker", {
        Title = "Colorpicker",
        Default = Color3.fromRGB(96, 205, 255)
    })

    Colorpicker:OnChanged(function()
        print("Colorpicker changed:", Colorpicker.Value)
    end)
    
    Colorpicker:SetValueRGB(Color3.fromRGB(0, 255, 140))



    local TColorpicker = Tabs.test:AddColorpicker("TransparencyColorpicker", {
        Title = "Colorpicker",
        Description = "but you can change the transparency.",
        Transparency = 0,
        Default = Color3.fromRGB(96, 205, 255)
    })

    TColorpicker:OnChanged(function()
        print(
            "TColorpicker changed:", TColorpicker.Value,
            "Transparency:", TColorpicker.Transparency
        )
    end)



    local Keybind = Tabs.test:AddKeybind("Keybind", {
        Title = "KeyBind",
        Mode = "Toggle", -- Always, Toggle, Hold
        Default = "LeftControl", -- String as the name of the keybind (MB1, MB2 for mouse buttons)

        -- Occurs when the keybind is clicked, Value is `true`/`false`
        Callback = function(Value)
            print("Keybind clicked!", Value)
        end,

        -- Occurs when the keybind itself is changed, `New` is a KeyCode Enum OR a UserInputType Enum
        ChangedCallback = function(New)
            print("Keybind changed!", New)
        end
    })

    -- OnClick is only fired when you press the keybind and the mode is Toggle
    -- Otherwise, you will have to use Keybind:GetState()
    Keybind:OnClick(function()
        print("Keybind clicked:", Keybind:GetState())
    end)

    Keybind:OnChanged(function()
        print("Keybind changed:", Keybind.Value)
    end)

    task.spawn(function()
        while true do
            wait(1)

            -- example for checking if a keybind is being pressed
            local state = Keybind:GetState()
            if state then
                print("Keybind is being held down")
            end

            if Fluent.Unloaded then break end
        end
    end)

    Keybind:SetValue("MB2", "Toggle") -- Sets keybind to MB2, mode to Hold


    local Input = Tabs.test:AddInput("Input", {
        Title = "Input",
        Default = "Default",
        Placeholder = "Placeholder",
        Numeric = false, -- Only allows numbers
        Finished = false, -- Only calls callback when you press enter
        Callback = function(Value)
            print("Input changed:", Value)
        end
    })

    Input:OnChanged(function()
        print("Input updated:", Input.Value)
    end)
end


-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- InterfaceManager (Allows you to have a interface managment system)

-- Hand the library over to our managers
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- You can add indexes of elements the save manager should ignore
SaveManager:SetIgnoreIndexes({})

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
end
