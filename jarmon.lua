local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Jarmon Hub (beta test)",
    SubTitle = "All map",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Aqua",
    MinimizeKey = Enum.KeyCode.Delete -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    status = Window:AddTab({ Title = "status", Icon = "loader" }),
    script = Window:AddTab({ Title = "script", Icon = "folder" }),
    home = Window:AddTab({ Title = "Home", Icon = "home" }),
    graphics = Window:AddTab({ Title = "GRAPHIC", Icon = "monitor" }),
    Server = Window:AddTab({ Title = "Server", Icon = "network" }),
    Main = Window:AddTab({ Title = "test", Icon = "user-cog" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options

---------------------------------------------(status)------------------------------------------------
Tabs.status:AddParagraph({
    Title = " Last Updated 📅 ",
    Content = "20/04/2024"
})
Tabs.status:AddParagraph({
    Title = " Coming Soon 🕘 ",
    Content = "เราจะเปิดให้ใช้งานเร็วๆนี้ครับ"
})

---------------------------------------------(script)------------------------------------------------

Tabs.script:AddButton({
    Title = "lk hub",
    Description = "F วิ่งไว มีเก็ตคีย์",
    Callback = function()
        loadstring(game:HttpGet("https://lkhub.net/s/loader.lua"))()
    end
})
Tabs.script:AddButton({
    Title = "antiAfk",
    Description = "afk ได้ไม่หลุด",
    Callback = function()
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
    end
})
Tabs.script:AddButton({
    Title = "tp by jarmon",
    Description = "teleport to Players",
    Callback = function()
        loadstring(game:HttpGet"https://raw.githubusercontent.com/jarmonxd/jarmonhubobf/main/tp-obf.lua")()
    end
})
Tabs.script:AddButton({
    Title = "Admin Script",
    Description = "Infinite Yield Admin",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
})
Tabs.script:AddButton({
    Title = "หาค่าCF ",
    Description = "หาค่าตําแหน่งของเรา (noob hub)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NOOBHUBX/Location/main/NOOB%20HUB.Lua"))() 
        end
})
Tabs.script:AddButton({
    Title = "Dex Explorer",
    Description = "Dex Explorer ดี",
    Callback = function()
loadstring(game:HttpGet('https://ithinkimandrew.site/scripts/tools/dark-dex.lua'))()
        end
})
Tabs.script:AddButton({
    Title = "rspy",
    Description = "SimpleSpy",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))()
        end
})
Tabs.script:AddButton({
    Title = "btools ",
    Description = "อุปกรณ์ทําลายบล็อก",
    Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
     end
})
Tabs.script:AddButton({
    Title = "Dex Explorer ภาษาไทย",
    Description = "Dex Explorer ภาษาไทย รันไว",
    Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
        end
})


---------------------------------------------(Home)------------------------------------------------

local Slider = Tabs.home:AddSlider("Slider", {
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
Tabs.home:AddButton({
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
local Toggle = Tabs.home:AddToggle("Infinitejump", {Title = "Infinite jump", Default = false })

Toggle:OnChanged(function(Infinitejump)
    local InfiniteJumpEnabled = Infinitejump
    game:GetService("UserInputService").JumpRequest:connect(function()
        if InfiniteJumpEnabled then
            game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
        end
    end)
end)



local Toggle = Tabs.home:AddToggle("Anchored", {Title = "Anchored", Default = false })

Toggle:OnChanged(function(Value)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = Value
end)


---------------------------------------------(graphics)------------------------------------------------
Tabs.graphics:AddButton({
    Title = "FullBright",
    Description = "",
    Callback = function()
        Window:Dialog({
            Title = "FullBright?",
            Content = "ท่าอยากปิดให้ภาพมึดก็กด FullBright อีกรอบ",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        if not _G.FullBrightExecuted then

                            _G.FullBrightEnabled = false
                        
                            _G.NormalLightingSettings = {
                                Brightness = game:GetService("Lighting").Brightness,
                                ClockTime = game:GetService("Lighting").ClockTime,
                                FogEnd = game:GetService("Lighting").FogEnd,
                                GlobalShadows = game:GetService("Lighting").GlobalShadows,
                                Ambient = game:GetService("Lighting").Ambient
                            }
                        
                            game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
                                if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
                                    _G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
                                    if not _G.FullBrightEnabled then
                                        repeat
                                            wait()
                                        until _G.FullBrightEnabled
                                    end
                                    game:GetService("Lighting").Brightness = 1
                                end
                            end)
                        
                            game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
                                if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
                                    _G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
                                    if not _G.FullBrightEnabled then
                                        repeat
                                            wait()
                                        until _G.FullBrightEnabled
                                    end
                                    game:GetService("Lighting").ClockTime = 12
                                end
                            end)
                        
                            game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
                                if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
                                    _G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
                                    if not _G.FullBrightEnabled then
                                        repeat
                                            wait()
                                        until _G.FullBrightEnabled
                                    end
                                    game:GetService("Lighting").FogEnd = 786543
                                end
                            end)
                        
                            game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
                                if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
                                    _G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
                                    if not _G.FullBrightEnabled then
                                        repeat
                                            wait()
                                        until _G.FullBrightEnabled
                                    end
                                    game:GetService("Lighting").GlobalShadows = false
                                end
                            end)
                        
                            game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
                                if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
                                    _G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
                                    if not _G.FullBrightEnabled then
                                        repeat
                                            wait()
                                        until _G.FullBrightEnabled
                                    end
                                    game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                                end
                            end)
                        
                            game:GetService("Lighting").Brightness = 1
                            game:GetService("Lighting").ClockTime = 12
                            game:GetService("Lighting").FogEnd = 786543
                            game:GetService("Lighting").GlobalShadows = false
                            game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                        
                            local LatestValue = true
                            spawn(function()
                                repeat
                                    wait()
                                until _G.FullBrightEnabled
                                while wait() do
                                    if _G.FullBrightEnabled ~= LatestValue then
                                        if not _G.FullBrightEnabled then
                                            game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
                                            game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
                                            game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
                                            game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
                                            game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
                                        else
                                            game:GetService("Lighting").Brightness = 1
                                            game:GetService("Lighting").ClockTime = 12
                                            game:GetService("Lighting").FogEnd = 786543
                                            game:GetService("Lighting").GlobalShadows = false
                                            game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                                        end
                                        LatestValue = not LatestValue
                                    end
                                end
                            end)
                        end
                        
                        _G.FullBrightExecuted = true
                        _G.FullBrightEnabled = not _G.FullBrightEnabled
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
Tabs.graphics:AddButton({
    Title = "FPS Booster",
    Description = "",
    Callback = function()
        Window:Dialog({
            Title = "FPS Booster?",
            Content = "ท่าเปิดแล้วจะปิดไม่ได้อยากปิดก็ต้องรีเซิฟ",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
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

Tabs.graphics:AddButton({
    Title = "RTX ON",
    Description = "",
    Callback = function()
        Window:Dialog({
            Title = "",
            Content = "",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
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














----------------------------------------------
do
    Fluent:Notify({
        Title = "Notification",
        Content = "This is a notification",
        SubContent = "SubContent", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })



    Tabs.Main:AddParagraph({
        Title = "Paragraph",
        Content = "This is a paragraph.\nSecond line!"
    })



    Tabs.Main:AddButton({
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



    local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Toggle", Default = false })

    Toggle:OnChanged(function()
        print("Toggle changed:", Options.MyToggle.Value)
    end)

    Options.MyToggle:SetValue(false)


    
    local Slider = Tabs.Main:AddSlider("Slider", {
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



    local Dropdown = Tabs.Main:AddDropdown("Dropdown", {
        Title = "Dropdown",
        Values = {"one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen"},
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue("four")

    Dropdown:OnChanged(function(Value)
        print("Dropdown changed:", Value)
    end)


    
    local MultiDropdown = Tabs.Main:AddDropdown("MultiDropdown", {
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



    local Colorpicker = Tabs.Main:AddColorpicker("Colorpicker", {
        Title = "Colorpicker",
        Default = Color3.fromRGB(96, 205, 255)
    })

    Colorpicker:OnChanged(function()
        print("Colorpicker changed:", Colorpicker.Value)
    end)
    
    Colorpicker:SetValueRGB(Color3.fromRGB(0, 255, 140))



    local TColorpicker = Tabs.Main:AddColorpicker("TransparencyColorpicker", {
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



    local Keybind = Tabs.Main:AddKeybind("Keybind", {
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


    local Input = Tabs.Main:AddInput("Input", {
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

Fluent:Notify({
    Title = "Fluent",
    Content = "The script has been loaded.",
    Duration = 8
})

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
