local maxwell_library = Instance.new("ModuleScript",game)
maxwell_library.Name = "MaxwellLibrary"

local assets = Instance.new("Folder")
assets.Name = "Assets"
assets.Parent = maxwell_library

local button_template = Instance.new("TextButton")
button_template.Font = Enum.Font.SourceSans
button_template.Text = "Home"
button_template.TextColor3 = Color3.new(1, 1, 1)
button_template.TextScaled = true
button_template.TextSize = 14
button_template.TextWrapped = true
button_template.BackgroundColor3 = Color3.new(1, 1, 1)
button_template.BackgroundTransparency = 1
button_template.BorderSizePixel = 0
button_template.Size = UDim2.new(1, 0, 0.100000001, 0)
button_template.Visible = false
button_template.Name = "ButtonTemplate"
button_template.Parent = assets

local uistroke = Instance.new("UIStroke")
uistroke.Parent = button_template

local toggletemplate = Instance.new("Frame")
toggletemplate.BackgroundColor3 = Color3.new(1, 1, 1)
toggletemplate.BackgroundTransparency = 1
toggletemplate.BorderSizePixel = 0
toggletemplate.Size = UDim2.new(1, 0, 0, 25)
toggletemplate.Visible = false
toggletemplate.Name = "ToggleTemplate"
toggletemplate.Parent = assets

local slider = Instance.new("Frame")
slider.BackgroundColor3 = Color3.new(0, 0, 0)
slider.BackgroundTransparency = 0.800000011920929
slider.Position = UDim2.new(0.857831299, 0, 0.0962341279, 0)
slider.Size = UDim2.new(0.118072271, 0, 0.807531714, 0)
slider.Visible = true
slider.Name = "Slider"
slider.Parent = toggletemplate

local uistroke_2 = Instance.new("UIStroke")
uistroke_2.Parent = slider

local uicorner = Instance.new("UICorner")
uicorner.CornerRadius = UDim.new(0.5, 0)
uicorner.Parent = slider

local button = Instance.new("Frame")
button.BackgroundColor3 = Color3.new(0.588235, 0.588235, 0.588235)
button.Size = UDim2.new(0.5, 0, 1, 0)
button.Visible = true
button.Name = "Button"
button.Parent = slider

local uistroke_3 = Instance.new("UIStroke")
uistroke_3.Parent = button

local uicorner_2 = Instance.new("UICorner")
uicorner_2.CornerRadius = UDim.new(0.5, 0)
uicorner_2.Parent = button

local uiaspect_ratio_constraint = Instance.new("UIAspectRatioConstraint")
uiaspect_ratio_constraint.AspectRatio = 2
uiaspect_ratio_constraint.Parent = slider

local text_label = Instance.new("TextLabel")
text_label.Font = Enum.Font.SourceSans
text_label.Text = "Autofarm"
text_label.TextColor3 = Color3.new(1, 1, 1)
text_label.TextScaled = true
text_label.TextSize = 14
text_label.TextWrapped = true
text_label.TextXAlignment = Enum.TextXAlignment.Left
text_label.BackgroundColor3 = Color3.new(1, 1, 1)
text_label.BackgroundTransparency = 1
text_label.Position = UDim2.new(0.0216867477, 0, 0.0962341279, 0)
text_label.Size = UDim2.new(0.78554219, 0, 0.807531714, 0)
text_label.Visible = true
text_label.Parent = toggletemplate

local activate_template = Instance.new("TextButton")
activate_template.Font = Enum.Font.SourceSans
activate_template.TextColor3 = Color3.new(1, 1, 1)
activate_template.TextScaled = true
activate_template.TextSize = 14
activate_template.TextWrapped = true
activate_template.BackgroundColor3 = Color3.new(1, 1, 1)
activate_template.BackgroundTransparency = 1
activate_template.BorderSizePixel = 0
activate_template.Size = UDim2.new(0.899999976, 0, 0, 20)
activate_template.Visible = false
activate_template.ZIndex = 2
activate_template.Name = "ActivateTemplate"
activate_template.Parent = assets

local uistroke_4 = Instance.new("UIStroke")
uistroke_4.Parent = activate_template

local button_2 = Instance.new("Frame")
button_2.BackgroundColor3 = Color3.new(0.0705882, 0.0705882, 0.0509804)
button_2.Size = UDim2.new(1, 0, 1, 0)
button_2.Visible = true
button_2.Name = "Button"
button_2.Parent = activate_template

local uicorner_3 = Instance.new("UICorner")
uicorner_3.CornerRadius = UDim.new(0.5, 0)
uicorner_3.Parent = button_2

local tabtemplate = Instance.new("ScrollingFrame")
tabtemplate.CanvasSize = UDim2.new(0, 0, 0, 0)
tabtemplate.ScrollBarThickness = 2
tabtemplate.Active = true
tabtemplate.BackgroundColor3 = Color3.new(1, 1, 1)
tabtemplate.BackgroundTransparency = 1
tabtemplate.BorderColor3 = Color3.new(0, 0, 0)
tabtemplate.BorderSizePixel = 0
tabtemplate.Size = UDim2.new(1, 0, 1, 0)
tabtemplate.Visible = false
tabtemplate.Name = "TabTemplate"
tabtemplate.Parent = assets

local ui = Instance.new("UIListLayout")
ui.Padding = UDim.new(0, 5)
ui.HorizontalAlignment = Enum.HorizontalAlignment.Center
ui.SortOrder = Enum.SortOrder.LayoutOrder
ui.Name = "UI"
ui.Parent = tabtemplate

local dropdown_template = Instance.new("Frame")
dropdown_template.BackgroundColor3 = Color3.new(0.0705882, 0.0705882, 0.0509804)
dropdown_template.BorderSizePixel = 0
dropdown_template.Position = UDim2.new(0.025301205, 0, 0.104821809, 0)
dropdown_template.Size = UDim2.new(0.949999988, 0, 0, 20)
dropdown_template.Visible = false
dropdown_template.Name = "DropDownTemplate"
dropdown_template.Parent = assets

local selection = Instance.new("TextButton")
selection.Font = Enum.Font.SourceSans
selection.Text = "CHOOSE AN OPTION..."
selection.TextColor3 = Color3.new(1, 1, 1)
selection.TextScaled = true
selection.TextSize = 14
selection.TextWrapped = true
selection.BackgroundColor3 = Color3.new(1, 1, 1)
selection.BackgroundTransparency = 1
selection.Size = UDim2.new(1, 0, 1, 0)
selection.Visible = true
selection.Name = "Selection"
selection.Parent = dropdown_template

local menu = Instance.new("ScrollingFrame")
menu.ScrollBarImageTransparency = 1
menu.ScrollBarThickness = 8
menu.BackgroundColor3 = Color3.new(0.0705882, 0.0705882, 0.0509804)
menu.BorderSizePixel = 0
menu.Position = UDim2.new(0, 4, 0.999998629, 0)
menu.Size = UDim2.new(1, -8, 1.37971574e-06, 0)
menu.Visible = true
menu.ZIndex = 5
menu.Name = "Menu"
menu.Parent = dropdown_template

local open = Instance.new("BoolValue")
open.Name = "Open"
open.Parent = menu

local ui_2 = Instance.new("UIListLayout")
ui_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
ui_2.SortOrder = Enum.SortOrder.LayoutOrder
ui_2.Name = "UI"
ui_2.Parent = menu

local uicorner_4 = Instance.new("UICorner")
uicorner_4.CornerRadius = UDim.new(0, 4)
uicorner_4.Parent = dropdown_template

local maxwell = Instance.new("ScreenGui")
maxwell.DisplayOrder = 2147483647
maxwell.IgnoreGuiInset = false
maxwell.ResetOnSpawn = true
maxwell.ZIndexBehavior = Enum.ZIndexBehavior.Global
maxwell.Name = "Maxwell"
maxwell.Parent = assets

local frame = Instance.new("Frame")
frame.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0705882)
frame.BorderSizePixel = 0
frame.ClipsDescendants = true
frame.Position = UDim2.new(0.309171587, 0, 0.301745623, 0)
frame.Size = UDim2.new(0.380917162, 0, 0.396508723, 0)
frame.Visible = true
frame.ZIndex = 0
frame.Parent = maxwell

local side_panel = Instance.new("Frame")
side_panel.BackgroundColor3 = Color3.new(0.313726, 0.313726, 0.313726)
side_panel.BackgroundTransparency = 1
side_panel.BorderSizePixel = 0
side_panel.Size = UDim2.new(0.192233011, 0, 1, 0)
side_panel.Visible = true
side_panel.Name = "SidePanel"
side_panel.Parent = frame

local frame_2 = Instance.new("Frame")
frame_2.BackgroundColor3 = Color3.new(1, 1, 1)
frame_2.BorderSizePixel = 0
frame_2.Position = UDim2.new(1, 0, 0.0500000007, 0)
frame_2.Size = UDim2.new(0, 1, 0.899999976, 0)
frame_2.Visible = true
frame_2.Parent = side_panel

local scrolling_frame = Instance.new("ScrollingFrame")
scrolling_frame.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
scrolling_frame.CanvasSize = UDim2.new(0, 0, 0, 0)
scrolling_frame.ScrollBarImageColor3 = Color3.new(0, 0, 0)
scrolling_frame.ScrollBarImageTransparency = 0.8999999761581421
scrolling_frame.ScrollBarThickness = 1
scrolling_frame.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
scrolling_frame.Active = true
scrolling_frame.BackgroundColor3 = Color3.new(1, 1, 1)
scrolling_frame.BackgroundTransparency = 1
scrolling_frame.BorderSizePixel = 0
scrolling_frame.Position = UDim2.new(0, 0, 0.248113289, 0)
scrolling_frame.Size = UDim2.new(1, 0, 0.6767295, 0)
scrolling_frame.Visible = true
scrolling_frame.Parent = side_panel

local uilist_layout = Instance.new("UIListLayout")
uilist_layout.SortOrder = Enum.SortOrder.LayoutOrder
uilist_layout.Parent = scrolling_frame

local logo = Instance.new("ImageLabel")
logo.Image = "http://www.roblox.com/asset/?id=213201560"
logo.ImageColor3 = Color3.new(10.0196, 10.0196, 10.0196)
logo.BackgroundColor3 = Color3.new(1, 1, 1)
logo.Position = UDim2.new(0.176051289, 0, 0.0311320573, 0)
logo.Size = UDim2.new(0.627866805, 0, 0.198113188, 0)
logo.Visible = true
logo.Name = "Logo"
logo.Parent = side_panel

local uicorner_5 = Instance.new("UICorner")
uicorner_5.CornerRadius = UDim.new(0.5, 0)
uicorner_5.Parent = logo

local uistroke_5 = Instance.new("UIStroke")
uistroke_5.Parent = logo

local text_label_2 = Instance.new("TextLabel")
text_label_2.Font = Enum.Font.Garamond
text_label_2.Text = "M"
text_label_2.TextColor3 = Color3.new(0.0627451, 0.0627451, 0.0470588)
text_label_2.TextScaled = true
text_label_2.TextSize = 14
text_label_2.TextWrapped = true
text_label_2.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0705882)
text_label_2.BackgroundTransparency = 1
text_label_2.Position = UDim2.new(0.0482634678, 0, 0.0476190522, 0)
text_label_2.Size = UDim2.new(0.887385249, 0, 0.887385309, 0)
text_label_2.Visible = true
text_label_2.Parent = logo

local uiaspect_ratio_constraint_2 = Instance.new("UIAspectRatioConstraint")
uiaspect_ratio_constraint_2.Parent = logo

local uicorner_6 = Instance.new("UICorner")
uicorner_6.CornerRadius = UDim.new(0, 4)
uicorner_6.Parent = frame

local frame_3 = Instance.new("Frame")
frame_3.BackgroundColor3 = Color3.new(1, 1, 1)
frame_3.BorderSizePixel = 0
frame_3.Position = UDim2.new(0.0155339809, 0, 0.949999928, 0)
frame_3.Size = UDim2.new(0.965048552, 0, 0, 1)
frame_3.Visible = true
frame_3.Parent = frame

local main = Instance.new("Frame")
main.BackgroundColor3 = Color3.new(1, 1, 1)
main.BackgroundTransparency = 1
main.BorderSizePixel = 0
main.Position = UDim2.new(0.194174752, 0, 0.0500000753, 0)
main.Size = UDim2.new(0.805825233, 0, 0.899999917, 0)
main.Visible = true
main.Name = "Main"
main.Parent = frame

local uistroke_6 = Instance.new("UIStroke")
uistroke_6.Parent = frame

local image_label = Instance.new("ImageLabel")
image_label.Image = "http://www.roblox.com/asset/?id=4576475446"
image_label.ImageTransparency = 0.30000001192092896
image_label.BackgroundColor3 = Color3.new(1, 1, 1)
image_label.BackgroundTransparency = 1
image_label.Position = UDim2.new(-0.10555657, 0, -0.106918238, 0)
image_label.Size = UDim2.new(1.21069181, 0, 1.21069181, 0)
image_label.Visible = true
image_label.ZIndex = 0
image_label.Parent = frame

local uicorner_7 = Instance.new("UICorner")
uicorner_7.CornerRadius = UDim.new(0, 4)
uicorner_7.Parent = image_label

local uiaspect_ratio_constraint_3 = Instance.new("UIAspectRatioConstraint")
uiaspect_ratio_constraint_3.AspectRatio = 1.6194968223571777
uiaspect_ratio_constraint_3.Parent = frame

local spacer_template = Instance.new("Frame")
spacer_template.BackgroundColor3 = Color3.new(1, 1, 1)
spacer_template.BackgroundTransparency = 1
spacer_template.BorderSizePixel = 0
spacer_template.Size = UDim2.new(1, 0, 0, 20)
spacer_template.Visible = true
spacer_template.Name = "SpacerTemplate"
spacer_template.Parent = assets

local toggletemplate_2 = Instance.new("Frame")
toggletemplate_2.BackgroundColor3 = Color3.new(1, 1, 1)
toggletemplate_2.BorderSizePixel = 0
toggletemplate_2.Size = UDim2.new(0.975000024, 0, 0, 1)
toggletemplate_2.Visible = true
toggletemplate_2.Name = "ToggleTemplate"
toggletemplate_2.Parent = spacer_template

local text_label_3 = Instance.new("TextLabel")
text_label_3.Font = Enum.Font.SourceSans
text_label_3.Text = "Main"
text_label_3.TextColor3 = Color3.new(1, 1, 1)
text_label_3.TextScaled = true
text_label_3.TextSize = 14
text_label_3.TextWrapped = true
text_label_3.TextXAlignment = Enum.TextXAlignment.Left
text_label_3.TextYAlignment = Enum.TextYAlignment.Bottom
text_label_3.BackgroundColor3 = Color3.new(1, 1, 1)
text_label_3.BackgroundTransparency = 1
text_label_3.Position = UDim2.new(0, 9, 0, 1)
text_label_3.Size = UDim2.new(0.978313267, 0, 1, -1)
text_label_3.Visible = true
text_label_3.Parent = spacer_template

local button2_template = Instance.new("TextButton")
button2_template.Font = Enum.Font.SourceSans
button2_template.Text = "Test"
button2_template.TextColor3 = Color3.new(1, 1, 1)
button2_template.TextScaled = true
button2_template.TextSize = 14
button2_template.TextWrapped = true
button2_template.BackgroundColor3 = Color3.new(0, 0, 0)
button2_template.BackgroundTransparency = 1
button2_template.BorderSizePixel = 0
button2_template.Size = UDim2.new(1, 0, 0, 20)
button2_template.Visible = false
button2_template.ZIndex = 5
button2_template.Name = "Button2Template"
button2_template.Parent = assets

--// Modules

local modules = {
	[maxwell_library] = function()
		local Control = {}
		
		Control.SetUp = function()
			local ui = script.Assets.Maxwell:Clone()
			ui.Name = game.HttpService:GenerateGUID(false)
			ui.Enabled = true
			
			if game:GetService("RunService"):IsStudio() then
				ui.Parent = game.Players.LocalPlayer.PlayerGui
			else
				ui.Parent = game.CoreGui
			end
			
			game:GetService("UserInputService").InputBegan:Connect(function(key,istyping)
				if istyping then return end
				
				if key.KeyCode == Enum.KeyCode.RightControl then
					ui.Enabled = not ui.Enabled
				end
			end)
			
			return ui
		end
		
		Control.AddSpacer = function(tab,spacername)
			local newspace = script.Assets.SpacerTemplate:Clone()
			newspace.Parent = tab
			newspace.Name = spacername
			newspace.Visible = true
			newspace.TextLabel.Text = spacername
		end
		
		Control.CreateNewTab = function(ui,tabname)
			local newtab = script.Assets.TabTemplate:Clone()
			newtab.Parent = ui.Frame.Main
			newtab.Name = tabname
			newtab.Visible = false
		
			local tabbutton = script.Assets.ButtonTemplate:Clone()
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
		
		Control.CreateToggle = function(tab,name,func)
			local State = {
				Enabled = false,
				Hovering = false,
				Debounce = false,
			}
		
			local temp = script.Assets.ToggleTemplate:Clone()
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
		
		Control.CreateButton = function(tab,name,func)
			local temp = script.Assets.ActivateTemplate:Clone()
			temp.Parent = tab
			temp.Visible = true
			temp.Text = name
		
			temp.MouseButton1Click:Connect(function()
				func()
			end)
		
			return {Button = temp}
		end
		
		Control.CreateDropDown = function(tab,refreshfunc)
			local State = {
				Selected = nil,
			}
			
			local drop = script.Assets.DropDownTemplate:Clone()
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
					local button = script.Assets.Button2Template:Clone()
					button.Visible = true
					button.Parent = menu
					pcall(function()
						button.Text = v.Name
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
	end
}
