if _G.CanAOHD == 'Y' or _G.CanAOHD == nil then
	_G.CanAOHD = 'N'
	local ScreenGui = Instance.new("ScreenGui")
	local lil = Instance.new("Frame")
	local SearchFrame = Instance.new("Frame")
	local TextBox = Instance.new("TextBox")
	local Execute = Instance.new("TextButton")
	local TextLabel = Instance.new("TextLabel")
	local DragBar = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local Close = Instance.new("TextButton")
	local TextLabel_2 = Instance.new("TextLabel")
	local MainFrame = Instance.new("Frame")

	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	lil.Name = "lil"
	lil.Parent = ScreenGui
	lil.Active = true
	lil.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	lil.BackgroundTransparency = 1.000
	lil.BorderColor3 = Color3.fromRGB(65, 65, 65)
	lil.BorderSizePixel = 0
	lil.ClipsDescendants = true
	lil.Draggable = true
	lil.Position = UDim2.new(0, 24, 1, -104)
	lil.Size = UDim2.new(0, 315, 0, 70)
	lil.ZIndex = 0

	SearchFrame.Name = "SearchFrame"
	SearchFrame.Parent = lil
	SearchFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	SearchFrame.BorderSizePixel = 0
	SearchFrame.Position = UDim2.new(0.0199999996, 0, 0.5, 0)
	SearchFrame.Size = UDim2.new(0.680000007, 0, 0.400000006, 0)

	TextBox.Parent = SearchFrame
	TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.BackgroundTransparency = 1.000
	TextBox.Position = UDim2.new(0.0299999993, 1, 0.150000006, 0)
	TextBox.Size = UDim2.new(0.939999998, 0, 0.699999988, 0)
	TextBox.ClearTextOnFocus = false
	TextBox.Font = Enum.Font.SourceSansSemibold
	TextBox.PlaceholderColor3 = Color3.fromRGB(100, 100, 100)
	TextBox.PlaceholderText = "Enter command"
	TextBox.Text = ""
	TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.TextScaled = true
	TextBox.TextSize = 14.000
	TextBox.TextWrapped = true
	TextBox.TextXAlignment = Enum.TextXAlignment.Left

	Execute.Name = "Execute"
	Execute.Parent = lil
	Execute.BackgroundColor3 = Color3.fromRGB(0, 135, 202)
	Execute.BackgroundTransparency = 0.100
	Execute.BorderSizePixel = 0
	Execute.Position = UDim2.new(0.730000019, 0, 0.5, 0)
	Execute.Size = UDim2.new(0.25, 0, 0.400000006, 0)
	Execute.Font = Enum.Font.SciFi
	Execute.Text = ""
	Execute.TextColor3 = Color3.fromRGB(0, 0, 0)
	Execute.TextSize = 16.000

	TextLabel.Parent = Execute
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0.100000001, 0, 0.119999997, 0)
	TextLabel.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
	TextLabel.ZIndex = 2
	TextLabel.Font = Enum.Font.Highway
	TextLabel.Text = "EXECUTE"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true

	DragBar.Name = "DragBar"
	DragBar.Parent = lil
	DragBar.BackgroundColor3 = Color3.fromRGB(0, 100, 150)
	DragBar.BorderSizePixel = 0
	DragBar.Size = UDim2.new(1, 0, 0.400000006, 0)

	Title.Name = "Title"
	Title.Parent = DragBar
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0.0196031835, 0, 0.0999995619, 0)
	Title.Size = UDim2.new(0.600000024, 0, 0.800000012, 0)
	Title.ZIndex = -994
	Title.Font = Enum.Font.Highway
	Title.Text = "All / others hack"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextScaled = true
	Title.TextSize = 18.000
	Title.TextWrapped = true
	Title.TextXAlignment = Enum.TextXAlignment.Left

	Close.Name = "Close"
	Close.Parent = DragBar
	Close.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Close.BackgroundTransparency = 0.500
	Close.BorderSizePixel = 0
	Close.Position = UDim2.new(0.995000005, 0, 0.0500000007, 0)
	Close.Size = UDim2.new(-0.0799999982, 0, 0.899999976, 0)
	Close.ZIndex = -993
	Close.AutoButtonColor = false
	Close.Font = Enum.Font.SciFi
	Close.Text = ""
	Close.TextColor3 = Color3.fromRGB(0, 0, 0)
	Close.TextSize = 16.000

	TextLabel_2.Parent = Close
	TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.BackgroundTransparency = 1.000
	TextLabel_2.Position = UDim2.new(0.150000006, 0, 0.150000006, 0)
	TextLabel_2.Size = UDim2.new(0.699999988, 0, 0.699999988, 0)
	TextLabel_2.ZIndex = -992
	TextLabel_2.Font = Enum.Font.Arial
	TextLabel_2.Text = "X"
	TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.TextSize = 14.000

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = lil
	MainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	MainFrame.BackgroundTransparency = 0.150
	MainFrame.BorderSizePixel = 0
	MainFrame.Size = UDim2.new(1, 0, 1, 0)
	MainFrame.ZIndex = 0

	local function ZVNS_fake_script()
		local script = Instance.new('LocalScript', Execute)

		local AdminPrefix = ";"
		local button = script.Parent
		local textBox = button.Parent.SearchFrame.TextBox
		local searchTerm = ''
		local message = ''
		local lp = game.Players.LocalPlayer
		local execCmd = game.ReplicatedStorage.HDAdminClient.Signals.RequestCommand
		local textLabel = button.TextLabel

		local plrgui = lp.PlayerGui
		local hdadmin = plrgui:FindFirstChild("HDAdminGUIs")
		if hdadmin then
			local hdadmin2 = hdadmin.MainFrame.Pages.Settings
			local c = hdadmin2.Custom["AE1 Prefix"].SettingValue.TextBox
			c:CaptureFocus()
			task.wait(0.1)
			c.Text = AdminPrefix
			task.wait(0.1)
			local vs = game:GetService("VirtualUser")
			vs:SetKeyDown("0x0D")
			task.wait()
			vs:SetKeyUp("0x0D")
		end

		local hider = [[




























		]]
		button.MouseButton1Click:Connect(function()
			textLabel.Text = "Loading"
			message = hider..AdminPrefix..textBox.text..' '
			if string.find(message, ' all ') then
				searchTerm = ' all '
				for _, plr in pairs(game.Players:GetPlayers()) do
					local replacedMessage = string.gsub(message, searchTerm, ' '..plr.Name..' ')
					execCmd:InvokeServer(replacedMessage)
				end
			elseif string.find(message, ' others ') then
				searchTerm = ' others '
				for _, plr in pairs(game.Players:GetPlayers()) do
					if plr ~= lp then
						local replacedMessage = string.gsub(message, searchTerm, ' '..plr.Name..' ')
						execCmd:InvokeServer(replacedMessage)
					end
				end
			else
				execCmd:InvokeServer(message)
			end
			textLabel.Text = "EXECUTE"
		end)
	end
	coroutine.wrap(ZVNS_fake_script)()
	local function BJMS_fake_script()
		local script = Instance.new('LocalScript', Close)

		local button = script.Parent
		
		button.MouseButton1Click:Connect(function()
			_G.CanAOHD = 'Y'
			script.Parent.Parent.Parent.Parent:Destroy()
		end)
	end
	coroutine.wrap(BJMS_fake_script)()
	local function SHQO_fake_script()
		local script = Instance.new('LocalScript', lil)
		while wait() do
			if game.StarterGui:GetCoreGuiEnabled("Chat") == false then
				game:GetService("StarterGui"):SetCoreGuiEnabled('Chat', true)
			end
		end
	end
	coroutine.wrap(SHQO_fake_script)()
end