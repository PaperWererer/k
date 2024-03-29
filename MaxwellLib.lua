local assets = loadstring(game:HttpGet("https://raw.githubusercontent.com/PaperWererer/k/main/CreateAssetFolder", true))()
local Control = {}

function Control.Setup()
    local ui = assets.Maxwell:Clone()
    ui.Parent = game.CoreGui
    ui.Enabled = true
    
    game:GetService("UserInputService").InputBegan:Connect(function(key,istyping)
    	if istyping then return end
    	
    	if key.KeyCode == Enum.KeyCode.RightControl then
    		ui.Enabled = not ui.Enabled
    	end
    end)
    
    return ui
end
    
function Control.CreateNewTab(ui,tabname)
	local newtab = assets.TabTemplate:Clone()
	newtab.Parent = ui.Frame.Main
	newtab.Name = tabname
	newtab.Visible = false

	local tabbutton = assets.ButtonTemplate:Clone()
	tabbutton.Parent = ui.Frame.SidePanel.ScrollingFrame
	tabbutton.Text = tabname
	tabbutton.Visible = true
	
	local function fitAll()
		newtab.CanvasSize = UDim2.new(1, 0, 0, newtab.UI.AbsoluteContentSize.Y)
	end
	
	tabbutton.MouseButton1Click:Connect(function()
		for i,v in pairs(ui.Frame.Main:GetChildren()) do
			v.Visible = false
		end
		newtab.Visible = true
	end)
	
	newtab.ChildAdded:Connect(fitAll)
	newtab.ChildRemoved:Connect(fitAll)
	
	return {Tab = newtab,Button = tabbutton}
end

function Control.AddSpacer(tab,spacername)
	local newspace = assets.SpacerTemplate:Clone()
	newspace.Parent = tab
	newspace.Name = spacername
	newspace.Visible = true
	newspace.TextLabel.Text = spacername
end

function Control.CreateToggle(tab,name,func)
	local State = {
		Enabled = false,
    	Hovering = false,
		Debounce = false,
	}

	local temp = assets.ToggleTemplate:Clone()
	temp.Parent = tab
	temp.Visible = true
	temp.TextLabel.Text = name

	temp.Slider.Button.MouseEnter:Connect(function()
		if not State.Debounce then
			if State.Enabled then
				game.TweenService:Create(temp.Slider.Button,TweenInfo.new(0.15),{BackgroundColor3 = Color3.fromRGB(200,200,200)}):Play()
			elseif not State.Enabled then
				game.TweenService:Create(temp.Slider.Button,TweenInfo.new(0.15),{BackgroundColor3 = Color3.fromRGB(60,60,60)}):Play()
			end
		end
	end)

	temp.Slider.Button.MouseLeave:Connect(function()
		if State.Enabled then
			game.TweenService:Create(temp.Slider.Button,TweenInfo.new(0.15),{BackgroundColor3 = Color3.fromRGB(255,255,255)}):Play()
		elseif not State.Enabled then
			game.TweenService:Create(temp.Slider.Button,TweenInfo.new(0.15),{BackgroundColor3 = Color3.fromRGB(150,150,150)}):Play()
		end
	end)

	temp.Slider.Button.InputBegan:Connect(function(key)
		if key.UserInputType == Enum.UserInputType.MouseButton1 and not State.Debounce then
			State.Debounce = true
			task.delay(.5,function()
				State.Debounce = false
			end)

			State.Enabled = not State.Enabled

			if State.Enabled then
				game.TweenService:Create(temp.Slider.Button,TweenInfo.new(0.15),{
					BackgroundColor3 = Color3.fromRGB(255,255,255),
					Size = UDim2.new(1,0,1,0),
    				Position = UDim2.new(0,0,0,0),
    			}):Play()
    			task.wait(0.1)
    			game.TweenService:Create(temp.Slider.Button,TweenInfo.new(0.1),{
    				Size = UDim2.new(0.5,0,1,0),
    				Position = UDim2.new(.5,0,0,0),
    			}):Play()
			else
				game.TweenService:Create(temp.Slider.Button,TweenInfo.new(0.15),{
					BackgroundColor3 = Color3.fromRGB(150,150,150),
					Size = UDim2.new(1,0,1,0),
					Position = UDim2.new(0,0,0,0),
				}):Play()
				task.wait(0.1)
				game.TweenService:Create(temp.Slider.Button,TweenInfo.new(0.1),{
					Size = UDim2.new(0.5,0,1,0),
					Position = UDim2.new(0,0,0,0),
				}):Play()
			end
		end
	end)

	return {Button = temp,State = State}
end

function Control.CreateButton(tab,name,func)
	local temp = assets.ActivateTemplate:Clone()
	temp.Parent = tab
	temp.Visible = true
	temp.Text = name

	temp.MouseButton1Click:Connect(function()
		func()
	end)

	return {Button = temp}
end

function Control.CreateLabel(tab,name)
	local temp = assets.ActivateTemplate:Clone()
	temp.Parent = tab
	temp.Visible = true
	temp.Text = name

	temp.Button.BackgroundTransparency = 1

	return {Label = temp}
end

function Control.CreateDropDown(tab,refreshfunc)
	local State = {
		Selected = nil,
	}
	
	local drop = assets.DropDownTemplate:Clone()
	drop.Parent = tab
	drop.Visible = true
	
	local menu = drop.Menu
	local open = menu.Open.Value
	local selection = drop.Selection

	local function fitAll()
		menu.CanvasSize = UDim2.new(1, 0, 0, menu.UI.AbsoluteContentSize.Y)
	end

	local function trigger()
		if not open then
			menu:TweenSize(UDim2.new(1,-8,5,0), "Out", "Sine", 0.15, true)
			for _, button in pairs(menu:GetChildren()) do
				if button:IsA("TextButton") then
					button.Visible = true
				end
			end
			wait(0.15)
			fitAll()
			open = true
		else
			menu:TweenSize(UDim2.new(1,-8,0,0), "Out", "Sine", 0.15, true)
			wait(0.05)
			for _, button in pairs(menu:GetChildren()) do
				if button:IsA("TextButton") then
					button.Visible = false
				end
			end
			open = false
		end
	end
	
	local function RefreshOptions()
		for i,v in pairs(menu:GetChildren()) do
			if v:IsA("TextButton") then
				v:Destroy()
			end
		end
		
		local items = refreshfunc()
		if items == nil or not items then items = {} end
		
		for i,v in pairs(items) do
			local button = assets.Button2Template:Clone()
			button.Visible = true
			button.Parent = menu
			pcall(function()
				if v.Name then
					button.Text = v.Name
				else
					button.Text = v
				end
			end)
			
			button.MouseEnter:Connect(function()
				button.BackgroundTransparency = 0.8
			end)

			button.MouseLeave:Connect(function()
				button.BackgroundTransparency = 1
			end)

			button.MouseButton1Click:Connect(function()
				selection.Text = button.Text
				State.Selected = v
				trigger()
				RefreshOptions()
			end)
		end
	end
	
	RefreshOptions()
	
	selection.MouseButton1Click:Connect(trigger)
	
	return {Drop = drop,State = State}
end

return Control
