local Setting = { CorrectKey = "JarmonKey" }
local GUI = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local __ = Instance.new("UICorner")
local ___2 = Instance.new("UIGradient")
local Text = Instance.new("TextLabel")
local Input = Instance.new("TextBox")
local ___3 = Instance.new("UICorner")
local Submit = Instance.new("TextButton")
local ___4 = Instance.new("UICorner")
local GetKey = Instance.new("TextButton")
local ___5 = Instance.new("UICorner")
local Close = Instance.new("TextButton")
local ___6 = Instance.new("UICorner")
GUI.Name = "\0GUI"
GUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
GUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Main.Name = "Main"
Main.Parent = GUI
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.499656349, 0, 0.5, 0)
Main.Size = UDim2.new(0, 368, 0, 178)
__.CornerRadius = UDim.new(0, 10)
__.Name = "__"
__.Parent = Main
___2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(24, 24, 24)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(38, 38, 38))}
___2.Rotation = -120
___2.Name = "__"
___2.Parent = Main
Text.Name = "Text"
Text.Parent = Main
Text.AnchorPoint = Vector2.new(0.5, 0.5)
Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text.BackgroundTransparency = 10.000
Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
Text.BorderSizePixel = 0
Text.Position = UDim2.new(0.5, 0, 0.157303378, 0)
Text.Size = UDim2.new(0, 368, 0, 56)
Text.Font = Enum.Font.GothamBold
Text.Text = "Una Hub"
Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Text.TextSize = 26.000
Input.Name = "Input"
Input.Parent = Main
Input.AnchorPoint = Vector2.new(0.5, 0.5)
Input.BackgroundColor3 = Color3.fromRGB(89, 89, 89)
Input.BackgroundTransparency = 0.800
Input.BorderColor3 = Color3.fromRGB(0, 0, 0)
Input.BorderSizePixel = 0
Input.Position = UDim2.new(0.498641312, 0, 0.407303363, 0)
Input.Size = UDim2.new(0, 351, 0, 33)
Input.ClearTextOnFocus = false
Input.Font = Enum.Font.Gotham
Input.PlaceholderText = "Paste your key here"
Input.Text = ""
Input.TextColor3 = Color3.fromRGB(255, 245, 203)
Input.TextSize = 18.000
Input.TextWrapped = true
___3.CornerRadius = UDim.new(0, 100)
___3.Name = "__"
___3.Parent = Input
Submit.Name = "Submit"
Submit.Parent = Main
Submit.AnchorPoint = Vector2.new(0.5, 0.5)
Submit.BackgroundColor3 = Color3.fromRGB(89, 89, 89)
Submit.BackgroundTransparency = 0.800
Submit.BorderColor3 = Color3.fromRGB(0, 0, 0)
Submit.BorderSizePixel = 0
Submit.Position = UDim2.new(0.501358688, 0, 0.651685417, 0)
Submit.Size = UDim2.new(0, 295, 0, 28)
Submit.Font = Enum.Font.GothamBold
Submit.Text = "Submit"
Submit.TextColor3 = Color3.fromRGB(111, 255, 0)
Submit.TextSize = 18.000
___4.CornerRadius = UDim.new(0, 100)
___4.Name = "__"
___4.Parent = Submit
GetKey.Name = "GetKey"
GetKey.Parent = Main
GetKey.AnchorPoint = Vector2.new(0.5, 0.5)
GetKey.BackgroundColor3 = Color3.fromRGB(89, 89, 89)
GetKey.BackgroundTransparency = 0.800
GetKey.BorderColor3 = Color3.fromRGB(0, 0, 0)
GetKey.BorderSizePixel = 0
GetKey.Position = UDim2.new(0.501358688, 0, 0.848314583, 0)
GetKey.Size = UDim2.new(0, 295, 0, 28)
GetKey.Font = Enum.Font.GothamBold
GetKey.Text = "Get Key"
GetKey.TextColor3 = Color3.fromRGB(0, 255, 234)
GetKey.TextSize = 18.000
___5.CornerRadius = UDim.new(0, 100)
___5.Name = "__"
___5.Parent = GetKey
Close.Name = "Close"
Close.Parent = Main
Close.AnchorPoint = Vector2.new(0.5, 0.5)
Close.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.974184811, 0, 0.061797753, 0)
Close.Size = UDim2.new(0, 36, 0, 36)
Close.Font = Enum.Font.FredokaOne
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextSize = 26.000
Close.TextWrapped = true
___6.CornerRadius = UDim.new(0, 100)
___6.Name = "__"
___6.Parent = Close
Close.MouseButton1Click:Connect(function()
	GUI:Destroy()
end)
Submit.MouseButton1Click:Connect(function()
    local key = tostring(Input.Text)
    if key == tostring(Setting.CorrectKey) then
		GUI:Destroy()
loadstring(game:HttpGet"https://raw.githubusercontent.com/jarmonxd/unahub/main/script.lua")()
    else
        print("Incorrect")
    end
end)
GetKey.MouseButton1Click:Connect(function()
	setclipboard("JarmonKey")
end)
