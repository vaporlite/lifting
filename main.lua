local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "Gergos Lifting Simulator",
	LoadingTitle = "Vapor Artworks",
	LoadingSubtitle = "by rekt",
	ConfigurationSaving = {
		Enabled = false,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "Big Hub"
	},
        Discord = {
        	Enabled = false,
        	Invite = "34tJXDPzvq", -- The Discord invite code, do not include discord.gg/
        	RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
	KeySystem = false, -- Set this to true to use our key system
	KeySettings = {
		Title = "Vapor Artowkrs",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/34tJXDPzvq)",
		FileName = "SiriusKey",
		SaveKey = false,
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = "Hello"
	}
})

local a = false
local b = false
local c = false

local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image
local Section = Tab:CreateSection("stuff")

local Toggle = Tab:CreateToggle({
	Name = "AutoFarm Strength",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)

		a = Value

        while a == true and task.wait() do

            if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool") ~= nil then

                game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").GetMuscle.GetMuscle:FireServer()

            end

        end

	end,
})

local Toggle2 = Tab:CreateToggle({
	Name = "Auto Sell",
	CurrentValue = false,
	Flag = "Toggle2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)

		b = Value

        while b == true and task.wait() do

            game:GetService("ReplicatedStorage").Sell:FireServer()

        end

	end,
})

local Toggle3 = Tab:CreateToggle({
	Name = "Auto Equip Tool",
	CurrentValue = false,
	Flag = "Toggle3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)

		c = Value

        while c == true and task.wait() do

            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChildOfClass("Tool") ~= nil then

                game:GetService("Players").LocalPlayer.Backpack:FindFirstChildOfClass("Tool").Parent = game:GetService("Players").LocalPlayer.Character

            end

        end

	end,
})
