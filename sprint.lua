-- Made By SheenEatsGame(GitHub)

local TweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(
0.5, 
Enum.EasingStyle.Quad, 
Enum.EasingDirection.Out,
0, 
false, 
0 
)
 
local Player = game.Players.LocalPlayer.Character
local Button = script.Parent
local Camera = Workspace.Camera
 
local Active = false
local SprintSpeed = 20
local WalkSpeed = 13
 
local SprintFOV = 85
local WalkFOV = 70
 
local SprintTween = TweenService:Create(Camera, tweenInfo, { FieldOfView = SprintFOV })
local WalkTween = TweenService:Create(Camera, tweenInfo, { FieldOfView = WalkFOV })
 
Player.Humanoid.WalkSpeed = WalkSpeed
 
Button.MouseButton1Click:Connect(function()
    if Active then
        Player.Humanoid.WalkSpeed = WalkSpeed
        WalkTween:play()
        
        Active = false
    else
        Player.Humanoid.WalkSpeed = SprintSpeed
        SprintTween:play()
        
        Active = true
    end
end)
