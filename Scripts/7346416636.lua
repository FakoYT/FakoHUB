-- PopitTrading
if not game.CoreGui:FindFirstChild("FakoHubNotif") then
	local FakoHubNotif = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local Sample = Instance.new("Frame")
	local Top = Instance.new("TextLabel")
	local Bottom = Instance.new("TextLabel")
	local Line = Instance.new("Frame")

	FakoHubNotif.Name = "FakoHubNotif"
	FakoHubNotif.Parent = game.CoreGui
	FakoHubNotif.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = FakoHubNotif
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BackgroundTransparency = 1.000
	Frame.Position = UDim2.new(0.833214402, 0, 0, 0)
	Frame.AutomaticSize = Enum.AutomaticSize.Y
	Frame.Size = UDim2.new(0, 319,0, 941)

	UIListLayout.Parent = Frame
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
	UIListLayout.Padding = UDim.new(0.0149999997, 0)

	Sample.Name = "Sample"
	Sample.Parent = FakoHubNotif
	Sample.BackgroundColor3 = Color3.fromRGB(16, 16, 21)
	Sample.BackgroundTransparency = 1.000
	Sample.BorderSizePixel = 0
	Sample.Position = UDim2.new(0.83219713, 0, 0.914216936, 0)
	Sample.Size = UDim2.new(0, 322, 0, 92)

	Top.Name = "Top"
	Top.Parent = Sample
	Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Top.BackgroundTransparency = 1.000
	Top.Position = UDim2.new(0.00656146929, 0, 0, 0)
	Top.Size = UDim2.new(0, 319, 0, 34)
	Top.Font = Enum.Font.SourceSansBold
	Top.Text = "Top text"
	Top.TextColor3 = Color3.fromRGB(67, 67, 89)
	Top.TextScaled = true
	Top.TextSize = 14.000
	Top.TextTransparency = 1.000
	Top.TextWrapped = true

	Bottom.Name = "Bottom"
	Bottom.Parent = Sample
	Bottom.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Bottom.BackgroundTransparency = 1.000
	Bottom.Position = UDim2.new(0, 0, 0.449999988, 0)
	Bottom.Size = UDim2.new(0, 319, 0, 54)
	Bottom.Font = Enum.Font.SourceSans
	Bottom.Text = "Bottom text"
	Bottom.TextColor3 = Color3.fromRGB(67, 67, 89)
	Bottom.TextScaled = true
	Bottom.TextSize = 14.000
	Bottom.TextTransparency = 1.000
	Bottom.TextWrapped = true

	Line.Name = "Line"
	Line.Parent = Sample
	Line.BackgroundColor3 = Color3.fromRGB(5, 5, 7)
	Line.BackgroundTransparency = 1.000
	Line.BorderSizePixel = 0
	Line.Position = UDim2.new(0, 0, 0.370000005, 0)
	Line.Size = UDim2.new(0, 319, 0, 8)
end
function SendNotif(Title, message, duration)
	spawn(function()
		local TweenService = game:GetService("TweenService")
		local timee = 0.5 

		local newMessage = game.CoreGui.FakoHubNotif.Sample:Clone()
		newMessage.Parent = game.CoreGui.FakoHubNotif.Frame
		newMessage.Bottom.Text = message
		newMessage.Top.Text = Title
		newMessage.Name = Title
		local tween1 = TweenService:Create(newMessage, TweenInfo.new(timee), {BackgroundTransparency = 0})
		local tween2 = TweenService:Create(newMessage.Line, TweenInfo.new(timee), {BackgroundTransparency = 0})
		local tween3 = TweenService:Create(newMessage.Bottom, TweenInfo.new(timee), {TextTransparency = 0})
		local tween4 = TweenService:Create(newMessage.Top, TweenInfo.new(timee), {TextTransparency = 0})

		tween1:Play()
		tween2:Play()
		tween3:Play()
		tween4:Play()
		wait(duration)
		local tween1 = TweenService:Create(newMessage, TweenInfo.new(timee), {BackgroundTransparency = 1})
		local tween2 = TweenService:Create(newMessage.Line, TweenInfo.new(timee), {BackgroundTransparency = 1})
		local tween3 = TweenService:Create(newMessage.Bottom, TweenInfo.new(timee), {TextTransparency = 1})
		local tween4 = TweenService:Create(newMessage.Top, TweenInfo.new(timee), {TextTransparency = 1})
		tween1:Play()
		tween2:Play()
		tween3:Play()
		tween4:Play()
		wait(timee)
		newMessage:Destroy()
	end)
end
SendNotif("FakoHUB","Script comming soon", 5)
