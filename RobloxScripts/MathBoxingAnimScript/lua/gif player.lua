if _G.CanOpenGP == nil or _G.CanOpenGP == 'Y' then
	_G.CanOpenGP = 'N'

	local parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	pcall(function()
		parent = game.CoreGui
	end)
	if gethui then
		parent = gethui()
		local VulkanUI = gethui():FindFirstChild("VulkanUI")
		if VulkanUI then --Anti lag for Vulkan exec
			local contents = VulkanUI.AspectFrame.DragFrame.Contents
			contents.Pages.Console.Parent = nil
			contents.Buttons.ScrollingFrame.Console.Parent = nil
		end
	end

	local GifPlayer = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UIGradient = Instance.new("UIGradient")
	local Anim = Instance.new("TextBox")
	local UICorner = Instance.new("UICorner")
	local UICorner_2 = Instance.new("UICorner")
	local close = Instance.new("TextButton")
	local UICorner_3 = Instance.new("UICorner")
	local Play = Instance.new("TextButton")
	local UICorner_4 = Instance.new("UICorner")
	local TextLabel = Instance.new("TextLabel")
	local Speed = Instance.new("TextBox")
	local UICorner_5 = Instance.new("UICorner")

	GifPlayer.Name = "GifPlayer"
	GifPlayer.Parent = parent
	GifPlayer.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = GifPlayer
	Frame.Active = true
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Draggable = true
	Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame.Size = UDim2.new(0.287237287, 0, 0.299999982, 0)

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(65, 65, 65)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
	UIGradient.Rotation = 142.91810607910156
	UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.15), NumberSequenceKeypoint.new(1.00, 0.15)}
	UIGradient.Parent = Frame

	Anim.Name = "Anim"
	Anim.Parent = Frame
	Anim.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Anim.BackgroundTransparency = 0.500
	Anim.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Anim.BorderSizePixel = 0
	Anim.Position = UDim2.new(0.0565060899, 0, 0.0334470682, 0)
	Anim.Size = UDim2.new(0.801507115, 0, 0.739295781, 0)
	Anim.ClearTextOnFocus = false
	Anim.Font = Enum.Font.SourceSans
	Anim.MultiLine = true
	Anim.PlaceholderColor3 = Color3.fromRGB(200, 200, 200)
	Anim.PlaceholderText = "JSON"
	Anim.Text = ""
	Anim.TextColor3 = Color3.fromRGB(0, 0, 0)
	Anim.TextScaled = true
	Anim.TextSize = 14.000
	Anim.TextWrapped = true

	UICorner.Parent = Anim

	UICorner_2.Parent = Frame

	close.Name = "close"
	close.Parent = Frame
	close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	close.BorderColor3 = Color3.fromRGB(0, 0, 0)
	close.BorderSizePixel = 0
	close.Position = UDim2.new(0.900929511, 0, 0.0383972973, 0)
	close.Size = UDim2.new(0.0799999982, 0, 0.0799999982, 0)
	close.SizeConstraint = Enum.SizeConstraint.RelativeXX
	close.Font = Enum.Font.SourceSans
	close.Text = "X"
	close.TextColor3 = Color3.fromRGB(0, 0, 0)
	close.TextScaled = true
	close.TextSize = 14.000
	close.TextWrapped = true

	UICorner_3.Parent = close

	Play.Name = "Play"
	Play.Parent = Frame
	Play.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	Play.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Play.BorderSizePixel = 0
	Play.Position = UDim2.new(0.0549664199, 0, 0.826922894, 0)
	Play.Size = UDim2.new(0.0820000023, 0, 0.0820000023, 0)
	Play.SizeConstraint = Enum.SizeConstraint.RelativeXX
	Play.Font = Enum.Font.SourceSans
	Play.Text = ""
	Play.TextColor3 = Color3.fromRGB(0, 0, 0)
	Play.TextScaled = true
	Play.TextSize = 14.000
	Play.TextWrapped = true

	UICorner_4.Parent = Play

	TextLabel.Parent = Play
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(1.00000036, 0, 0.0661802664, 0)
	TextLabel.Size = UDim2.new(1.74804807, 0, 1, 0)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = "Play"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true

	Speed.Name = "Speed"
	Speed.Parent = Frame
	Speed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Speed.BackgroundTransparency = 0.500
	Speed.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Speed.BorderSizePixel = 0
	Speed.Position = UDim2.new(0.304627329, 0, 0.821504891, 0)
	Speed.Size = UDim2.new(0.305264562, 0, 0.135449484, 0)
	Speed.ClearTextOnFocus = false
	Speed.Font = Enum.Font.SourceSans
	Speed.MultiLine = true
	Speed.PlaceholderColor3 = Color3.fromRGB(200, 200, 200)
	Speed.PlaceholderText = "Delay"
	Speed.Text = "0.1"
	Speed.TextColor3 = Color3.fromRGB(0, 0, 0)
	Speed.TextScaled = true
	Speed.TextSize = 14.000
	Speed.TextWrapped = true

	UICorner_5.Parent = Speed

	local function EFZDS_fake_script()
		local script = Instance.new('LocalScript', UIGradient)

		script.Parent.Parent.Draggable = true

		local RunService = game:GetService("RunService")
		local ROTATE_SPEED = 22.5
		local uiGradient = script.Parent

		local function onRenderStep(deltaTime)
			local currentRotation = uiGradient.Rotation
			uiGradient.Rotation = (currentRotation + ROTATE_SPEED * deltaTime) % 360
		end

		RunService.RenderStepped:Connect(onRenderStep)
	end
	coroutine.wrap(EFZDS_fake_script)()
	local function VQLRJ_fake_script()
		local script = Instance.new('LocalScript', close)

		local button = script.Parent

		button.MouseButton1Click:Connect(function()
			_G.CanOpenGP = 'Y'
			script.Parent.Parent.Parent:Destroy()
		end)
	end
	coroutine.wrap(VQLRJ_fake_script)()
	local function TLNHM_fake_script()
		local script = Instance.new('LocalScript', Play)

		local button = script.Parent
		local TweenService = game:GetService("TweenService")
		local frame = button.Parent
		local speedText = frame.Speed
		local jsonText = frame.Anim
		local ticked = false
		local answer = game.ReplicatedStorage.Events.Answer
		local hs = game:GetService("HttpService")
		local decodedAnim = {}

		local function changeButtonColor(tickValue)
			local targetColor = tickValue and Color3.new(0, 1, 0) or Color3.new(1, 0, 0)
			local colorTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
			TweenService:Create(button, colorTweenInfo, {BackgroundColor3 = targetColor}):Play()
		end

		button.MouseButton1Click:Connect(function()
			ticked = not ticked
			changeButtonColor(ticked)
		end)

		while wait() do
			if ticked then
				decodedAnim = hs:JSONDecode(jsonText.Text)
				for _,v in pairs(decodedAnim) do
					answer:FireServer(v)
					wait(tonumber(speedText.Text))
				end
			end
		end
	end
	coroutine.wrap(TLNHM_fake_script)()
end