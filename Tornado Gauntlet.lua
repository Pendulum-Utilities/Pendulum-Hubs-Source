Bypass = "death"
loadstring(game:GetObjects("rbxassetid://5325226148")[1].Source)()
for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(0,30,0)
wait(0.5)
end)
end
end
local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
for i,v in pairs (char:GetChildren()) do
	if v:IsA("Accessory") then
		v.Handle.Massless = true
		v.Handle.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
	end
end
hed.Massless = true
hed.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
torso.Massless = true
torso.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
rarm.Massless = true
rarm.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
larm.Massless = true
larm.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
lleg.Massless = true
lleg.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
rleg.Massless = true
rleg.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
warn("Netless Activated!")
Bypass = "Death"
plr = game.Players.LocalPlayer
dead = false
char = plr.Character

game.Workspace.non.Humanoid.WalkSpeed = 30

bullet = workspace[plr.Name]["HumanoidRootPart"]
bullet.Transparency = 1
bhandle = bullet
bullet.Massless = true

mouse = plr:GetMouse()
head = char.Head
camera = workspace.CurrentCamera
lt = true
ltt = false

local function IsFirstPerson()
     return (head.CFrame.p - camera.CFrame.p).Magnitude < 1
end

     bbv = Instance.new("BodyPosition",bhandle)
     bbv.Position = char.Torso.CFrame.p
   
     
     
     mouse.Button1Down:Connect(function()
         if dead == false then
        lt = false
        ltt = false
     bbav = Instance.new("BodyAngularVelocity",bhandle)
     bbav.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
     bbav.P = 1000000000000000000000000000
     bbav.AngularVelocity = Vector3.new(10000000000000000000000000000000,100000000000000000000000000,100000000000000000)
     game:GetService("Debris"):AddItem(bbav,0.1)
        if game.Players:GetPlayerFromCharacter(mouse.Target.Parent) then
            if mouse.Target.Parent.Name == char.Name or mouse.Target.Parent.Name == "non" then return end
              --repeat 
            game:GetService("RunService").RenderStepped:Wait()
            bbv.Position = (CFrame.new(mouse.Target.Parent.HumanoidRootPart.CFrame.p,char.Torso.CFrame.p) * CFrame.new(0,0,0)).p
            bhandle.Position = (CFrame.new(mouse.Target.Parent.HumanoidRootPart.CFrame.p,char.Torso.CFrame.p) * CFrame.new(0,0,0)).p
            wait(1)
            --until char.Humanoid.Health == 100 or char.Humanoid.Health == 0
        elseif game.Players:GetPlayerFromCharacter(mouse.Target.Parent.Parent) then
            if mouse.Target.Parent.Name == char.Name or mouse.Target.Parent.Name == "non" then return end
            --repeat 
            game:GetService("RunService").RenderStepped:Wait()
            bbv.Position = (CFrame.new(mouse.Target.Parent.Parent.HumanoidRootPart.CFrame.p,char.Torso.CFrame.p) * CFrame.new(0,0,0)).p
            bhandle.Position = (CFrame.new(mouse.Target.Parent.Parent.HumanoidRootPart.CFrame.p,char.Torso.CFrame.p) * CFrame.new(0,0,0)).p
            wait(1)
            --until char.Humanoid.Health == 100 or char.Humanoid.Health == 0
            
            else
       -- repeat 
        game:GetService("RunService").RenderStepped:Wait()
        wait(1)
        --until char.Humanoid.Health == 100 or char.Humanoid.Health == 0
        end
        wait()
        lt = true
         end
         end)
         
    spawn(
        function()
            while true do
                game:GetService("RunService").Heartbeat:Wait()
                bullet.Velocity = Vector3.new(0,26,0)
         end
    end)

 plr:GetMouse().Button1Down:Connect(function()
attackingwithhrp = true	
end)

 
plr:GetMouse().Button1Up:Connect(function()
attackingwithhrp = false
end)

plr:GetMouse().Button1Down:Connect(function()
repeat wait() until attackingwithhrp == true
repeat
game:GetService("RunService").Heartbeat:Wait()
if plr:GetMouse().Target ~= nil then
bullet.Position = game:GetService("Players").LocalPlayer:GetMouse().Hit.p
end
until attackingwithhrp == false
end)
loadstring(game:GetObjects("rbxassetid://5425999987")[1].Source)()
warn'Lunarist Loaded.'
warn'Do not leak this, or else.'
--- its obs smooth af do not touch 
plr = game.Players.LocalPlayer
char = game.Workspace.non
hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
t = char.Torso
h = char.Head
ra = char["Right Arm"]
la = char["Left Arm"]
rl = char["Right Leg"]
ll = char["Left Leg"]
tors = char.Torso
lleg = char["Left Leg"]
root = char.HumanoidRootPart
hed = char.Head
rleg = char["Right Leg"]
rarm = char["Right Arm"]
larm = char["Left Arm"]
vt = Vector3.new
bc = BrickColor.new
br = BrickColor.random
it = Instance.new
cf = CFrame.new

local sick = Instance.new("Sound",Character)
sick.SoundId = "rbxassetid://1351017179"
sick.Looped = true
sick.Pitch = 1
sick.Volume = 1
sick:Play()

function CameraShake(Times, Power)
coroutine.resume(coroutine.create(function()
FV = Instance.new("BoolValue", Character)
FV.Name = "CameraShake"
for ShakeNum=1,Times do
swait()
local ef=Power
  if ef>=1 then
   Humanoid.CameraOffset = Vector3.new(math.random(-ef,ef),math.random(-ef,ef),math.random(-ef,ef))
  else
   ef=Power*10
   Humanoid.CameraOffset = Vector3.new(math.random(-ef,ef)/10,math.random(-ef,ef)/10,math.random(-ef,ef)/10)
  end	
end
Humanoid.CameraOffset = Vector3.new(0,0,0)
FV:Destroy()
end))
end

CamShake=function(Part,Distan,Power,Times) 
local de=Part.Position
for i,v in pairs(workspace:children()) do
 if v:IsA("Model") and v:findFirstChild("Humanoid") then
for _,c in pairs(v:children()) do
if c.ClassName=="Part" and (c.Position - de).magnitude < Distan then
local Noob=v.Humanoid
if Noob~=nil then
if Noob:FindFirstChild("CamShake")==nil then-- and Noob == Character then
--[[local ss=script.CamShake:clone()
ss.Parent=Noob
ss.Power.Value=Power
ss.Times.Value=Times
ss.Disabled=false]]
CameraShake(Times, Power)
end
end
end
end
end
end
end

function chatfunc(text,color)
local chat = coroutine.wrap(function()
if Character:FindFirstChild("TalkingBillBoard")~= nil then
Character:FindFirstChild("TalkingBillBoard"):destroy()
end
local naeeym2 = Instance.new("BillboardGui",Character)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = Character.Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = "SciFi"
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = color
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
local tecks3 = Instance.new("TextLabel",naeeym2)
tecks3.BackgroundTransparency = 1
tecks3.BorderSizePixel = 0
tecks3.Text = ""
tecks3.Font = "SciFi"
tecks3.TextSize = 30
tecks3.TextStrokeTransparency = 0
tecks3.TextColor3 = Color3.new(0,0,0)
tecks3.TextStrokeColor3 = color
tecks3.Size = UDim2.new(1,0,0.5,0)
for i = 1,string.len(text),1 do
CFuncs["Sound"].Create("rbxassetid://274118116", char, 0.25, 0.115)
tecks2.Text = string.sub(text,1,i)
tecks3.Text = string.sub(text,1,i)
wait(0.01)
end
wait(1)
local randomrot = math.random(1,2)
if randomrot == 1 then
for i = 1, 50 do
swait()
tecks2.Rotation = tecks2.Rotation - .75
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks2.TextTransparency = tecks2.TextTransparency + .04
tecks3.Rotation = tecks2.Rotation + .75
tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks3.TextTransparency = tecks2.TextTransparency + .04
end
elseif randomrot == 2 then
	for i = 1, 50 do
swait()
tecks2.Rotation = tecks2.Rotation + .75
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks2.TextTransparency = tecks2.TextTransparency + .04
tecks3.Rotation = tecks2.Rotation - .75
tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks3.TextTransparency = tecks2.TextTransparency + .04
end
end
naeeym2:Destroy()
end)
chat()
end


local Create = LoadLibrary("RbxUtility").Create

CFuncs = {	
	["Part"] = {
		Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
			local Part = Create("Part"){
				Parent = Parent,
				Reflectance = Reflectance,
				Transparency = Transparency,
				CanCollide = false,
				Locked = true,
				BrickColor = BrickColor.new(tostring(BColor)),
				Name = Name,
				Size = Size,
				Material = Material,
			}
			RemoveOutlines(Part)
			return Part
		end;
	};
	
	["Mesh"] = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh){
				Parent = Part,
				Offset = OffSet,
				Scale = Scale,
			}
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end;
	};
	
	["Mesh"] = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh){
				Parent = Part,
				Offset = OffSet,
				Scale = Scale,
			}
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end;
	};
	
	["Weld"] = {
		Create = function(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld"){
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1,
			}
			return Weld
		end;
	};

	["Sound"] = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 10)
			end))
		end;
	};

["LongSound"] = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 30)
			end))
		end;
	};
	
	["ParticleEmitter"] = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local fp = Create("ParticleEmitter"){
				Parent = Parent,
				Color = ColorSequence.new(Color1, Color2),
				LightEmission = LightEmission,
				Size = Size,
				Texture = Texture,
				Transparency = Transparency,
				ZOffset = ZOffset,
				Acceleration = Accel,
				Drag = Drag,
				LockedToPart = LockedToPart,
				VelocityInheritance = VelocityInheritance,
				EmissionDirection = EmissionDirection,
				Enabled = Enabled,
				Lifetime = LifeTime,
				Rate = Rate,
				Rotation = Rotation,
				RotSpeed = RotSpeed,
				Speed = Speed,
				VelocitySpread = VelocitySpread,
			}
			return fp
		end;
	};

	CreateTemplate = {
	
	};
}



New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
local halocolor = BrickColor.new("Pastel light blue")
local halocolor2 = BrickColor.new("Cool yellow")
local starcolor = BrickColor.new("Bright yellow")
local lunacolor = BrickColor.new("Navy blue")
local lunacolor2 = BrickColor.new("Bright blue")
local wepcolor = BrickColor.new("Really black")
local m = Instance.new("Model",char)

function CreateParta(parent,transparency,reflectance,material,brickcolor)
local p = Instance.new("Part")
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = parent
p.Size = Vector3.new(1,1,1)
p.Transparency = transparency
p.Reflectance = reflectance
p.CanCollide = false
p.Locked = true
p.BrickColor = brickcolor
p.Material = material
return p
end

function CreateMesh(parent,meshtype,x1,y1,z1)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = meshtype
mesh.Scale = Vector3.new(x1,y1,z1)
return mesh
end

function CreateSpecialMesh(parent,meshid,x1,y1,z1)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = "FileMesh"
mesh.MeshId = meshid
mesh.Scale = Vector3.new(x1,y1,z1)
return mesh
end


function CreateSpecialGlowMesh(parent,meshid,x1,y1,z1)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = "FileMesh"
mesh.MeshId = meshid
mesh.TextureId = "http://www.roblox.com/asset/?id=269748808"
mesh.Scale = Vector3.new(x1,y1,z1)
mesh.VertexColor = Vector3.new(parent.BrickColor.r, parent.BrickColor.g, parent.BrickColor.b)
return mesh
end

function CreateWeld(parent,part0,part1,C1X,C1Y,C1Z,C1Xa,C1Ya,C1Za,C0X,C0Y,C0Z,C0Xa,C0Ya,C0Za)
local weld = Instance.new("Weld")
weld.Parent = parent
weld.Part0 = part0
weld.Part1 = part1
weld.C1 = CFrame.new(C1X,C1Y,C1Z)*CFrame.Angles(C1Xa,C1Ya,C1Za)
weld.C0 = CFrame.new(C0X,C0Y,C0Z)*CFrame.Angles(C0Xa,C0Ya,C0Za)
return weld
end


local sorb = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
CreateWeld(sorb,rarm,sorb,0,1.15,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local sorb2 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
CreateWeld(sorb2,larm,sorb2,0,1.15,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local ga = CreateParta(m,0,0,"SmoothPlastic",lunacolor)
CreateMesh(ga,"Brick",1.05,1.55,1.05)
CreateWeld(ga,rarm,ga,0,-0.25,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gal = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(gal,"Brick",1.075,1.575,0.75)
CreateWeld(gal,rarm,gal,0,-0.25,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gal = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(gal,"Brick",1.0725,1.6,0.775)
CreateWeld(gal,rarm,gal,0,-0.25,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gal = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(gal,"Brick",0.1,1.25,0.1)
CreateWeld(gal,rarm,gal,-0.495,0,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local gal = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(gal,"Brick",1.07,1.625,0.8)
CreateWeld(gal,rarm,gal,0,-0.25,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))


gan = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(gan,"Brick",1.075,0.1,1.075)
CreateWeld(gan,rarm,gan,0,0.5,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gan = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(gan,"Brick",1.075,0.1,1.075)
CreateWeld(gan,rarm,gan,0,0.75,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))



gan = CreateParta(m,0,0,"Neon",halocolor2)
CreateMesh(gan,"Brick",1.095,0.035,1.095)
CreateWeld(gan,rarm,gan,0,0.5,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gan = CreateParta(m,0,0,"Neon",halocolor2)
CreateMesh(gan,"Brick",1.095,0.035,1.095)
CreateWeld(gan,rarm,gan,0,0.75,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local gane = CreateParta(m,0,0,"SmoothPlastic",lunacolor2)
CreateMesh(gane,"Brick",1.0625,0.2,1.0625)
CreateWeld(gane,rarm,gane,0,0.6,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local star = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateSpecialMesh(star,"http://www.roblox.com/asset/?id=45428961",2.5,2.5,2.5)
CreateWeld(star,rarm,star,0,-0.475,0.6,math.rad(90),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local starl = CreateParta(m,0,0,"SmoothPlastic",starcolor)
CreateSpecialMesh(starl,"http://www.roblox.com/asset/?id=45428961",1.95,2.55,1.95)
CreateWeld(starl,rarm,starl,0,-0.475,0.6,math.rad(90),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local stara = CreateParta(m,0,0,"SmoothPlastic",starcolor)
CreateSpecialMesh(stara,"http://www.roblox.com/asset/?id=45428961",1.5,2.45,1.5)
CreateWeld(stara,rarm,stara,0,-0.475,-0.7,math.rad(90),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local stara1 = CreateParta(m,0,0,"SmoothPlastic",lunacolor)
CreateSpecialMesh(stara1,"http://www.roblox.com/asset/?id=45428961",1.65,2.425,1.65)
CreateWeld(stara1,rarm,stara1,0,-0.475,-0.7,math.rad(90),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local starb = CreateParta(m,0,0,"SmoothPlastic",starcolor)
CreateSpecialMesh(starb,"http://www.roblox.com/asset/?id=45428961",1.25,2.45,1.25)
CreateWeld(starb,rarm,starb,0,-0.475,-0.3,math.rad(90),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local starb1 = CreateParta(m,0,0,"SmoothPlastic",lunacolor)
CreateSpecialMesh(starb1,"http://www.roblox.com/asset/?id=45428961",1.5,2.425,1.5)
CreateWeld(starb1,rarm,starb1,0,-0.475,-0.3,math.rad(90),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local starc = CreateParta(m,0,0,"SmoothPlastic",starcolor)
CreateSpecialMesh(starc,"http://www.roblox.com/asset/?id=45428961",1,2.45,1)
CreateWeld(starc,rarm,starc,0,-0.475,0.1,math.rad(90),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local starc1 = CreateParta(m,0,0,"SmoothPlastic",lunacolor)
CreateSpecialMesh(starc1,"http://www.roblox.com/asset/?id=45428961",1.15,2.425,1.15)
CreateWeld(starc1,rarm,starc1,0,-0.475,0.1,math.rad(90),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))


--  First
dot = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dot,"Sphere",0.1,0.1,0.1)
CreateWeld(dot,rarm,dot,-0.495,0,0.325,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))


dot = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dot,"Sphere",0.1,0.1,0.1)
CreateWeld(dot,rarm,dot,-0.495,0.2,0.325,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))


dot = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dot,"Sphere",0.1,0.1,0.1)
CreateWeld(dot,rarm,dot,-0.495,0.4,0.325,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dot = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dot,"Sphere",0.1,0.1,0.1)
CreateWeld(dot,rarm,dot,-0.495,-0.2,0.325,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dot = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dot,"Sphere",0.1,0.1,0.1)
CreateWeld(dot,rarm,dot,-0.495,-0.4,0.325,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dot = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dot,"Sphere",0.1,0.1,0.1)
CreateWeld(dot,rarm,dot,-0.495,-0.6,0.325,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dot = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dot,"Sphere",0.1,0.1,0.1)
CreateWeld(dot,rarm,dot,-0.495,-0.8,0.325,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dot = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dot,"Sphere",0.1,0.1,0.1)
CreateWeld(dot,rarm,dot,-0.495,-1,0.325,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

--- Second

dot = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dot,"Sphere",0.1,0.1,0.1)
CreateWeld(dot,rarm,dot,-0.495,0,-0.325,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))


dot = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dot,"Sphere",0.1,0.1,0.1)
CreateWeld(dot,rarm,dot,-0.495,0.2,-0.325,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))


dot = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dot,"Sphere",0.1,0.1,0.1)
CreateWeld(dot,rarm,dot,-0.495,0.4,-0.325,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dot = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dot,"Sphere",0.1,0.1,0.1)
CreateWeld(dot,rarm,dot,-0.495,-0.2,-0.325,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dot = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dot,"Sphere",0.1,0.1,0.1)
CreateWeld(dot,rarm,dot,-0.495,-0.4,-0.325,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dot = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dot,"Sphere",0.1,0.1,0.1)
CreateWeld(dot,rarm,dot,-0.495,-0.6,-0.325,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dot = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dot,"Sphere",0.1,0.1,0.1)
CreateWeld(dot,rarm,dot,-0.495,-0.8,-0.325,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dot = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dot,"Sphere",0.1,0.1,0.1)
CreateWeld(dot,rarm,dot,-0.495,-1,-0.325,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

-- Third section A

dotsec = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotsec,"Sphere",0.1,0.1,0.15)
CreateWeld(dotsec,rarm,dotsec,0,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotseca = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(dotseca,"Sphere",0.2,0.2,0.1)
CreateWeld(dotseca,rarm,dotseca,0,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotsecb = CreateParta(m,0,0,"SmoothPlastic",lunacolor)
CreateMesh(dotsecb,"Sphere",0.15,0.15,0.125)
CreateWeld(dotsecb,rarm,dotsecb,0,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dotsec = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotsec,"Sphere",0.1,0.1,0.15)
CreateWeld(dotsec,rarm,dotsec,0.2,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotseca = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(dotseca,"Sphere",0.2,0.2,0.1)
CreateWeld(dotseca,rarm,dotseca,0.2,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotsecb = CreateParta(m,0,0,"SmoothPlastic",lunacolor)
CreateMesh(dotsecb,"Sphere",0.15,0.15,0.125)
CreateWeld(dotsecb,rarm,dotsecb,0.2,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dotsec = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotsec,"Sphere",0.1,0.1,0.15)
CreateWeld(dotsec,rarm,dotsec,0.4,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotseca = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(dotseca,"Sphere",0.2,0.2,0.1)
CreateWeld(dotseca,rarm,dotseca,0.4,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotsecb = CreateParta(m,0,0,"SmoothPlastic",lunacolor)
CreateMesh(dotsecb,"Sphere",0.15,0.15,0.125)
CreateWeld(dotsecb,rarm,dotsecb,0.4,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dotsec = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotsec,"Sphere",0.1,0.1,0.15)
CreateWeld(dotsec,rarm,dotsec,-0.2,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotseca = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(dotseca,"Sphere",0.2,0.2,0.1)
CreateWeld(dotseca,rarm,dotseca,-0.2,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotsecb = CreateParta(m,0,0,"SmoothPlastic",lunacolor)
CreateMesh(dotsecb,"Sphere",0.15,0.15,0.125)
CreateWeld(dotsecb,rarm,dotsecb,-0.2,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dotsec = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotsec,"Sphere",0.1,0.1,0.15)
CreateWeld(dotsec,rarm,dotsec,-0.4,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotseca = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(dotseca,"Sphere",0.2,0.2,0.1)
CreateWeld(dotseca,rarm,dotseca,-0.4,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotsecb = CreateParta(m,0,0,"SmoothPlastic",lunacolor)
CreateMesh(dotsecb,"Sphere",0.15,0.15,0.125)
CreateWeld(dotsecb,rarm,dotsecb,-0.4,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

-- Third section B

dotsec = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotsec,"Sphere",0.1,0.1,0.15)
CreateWeld(dotsec,rarm,dotsec,0,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotseca = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(dotseca,"Sphere",0.2,0.2,0.1)
CreateWeld(dotseca,rarm,dotseca,0,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotsecb = CreateParta(m,0,0,"SmoothPlastic",lunacolor)
CreateMesh(dotsecb,"Sphere",0.15,0.15,0.125)
CreateWeld(dotsecb,rarm,dotsecb,0,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dotsec = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotsec,"Sphere",0.1,0.1,0.15)
CreateWeld(dotsec,rarm,dotsec,0.2,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotseca = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(dotseca,"Sphere",0.2,0.2,0.1)
CreateWeld(dotseca,rarm,dotseca,0.2,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotsecb = CreateParta(m,0,0,"SmoothPlastic",lunacolor)
CreateMesh(dotsecb,"Sphere",0.15,0.15,0.125)
CreateWeld(dotsecb,rarm,dotsecb,0.2,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dotsec = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotsec,"Sphere",0.1,0.1,0.15)
CreateWeld(dotsec,rarm,dotsec,0.4,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotseca = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(dotseca,"Sphere",0.2,0.2,0.1)
CreateWeld(dotseca,rarm,dotseca,0.4,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotsecb = CreateParta(m,0,0,"SmoothPlastic",lunacolor)
CreateMesh(dotsecb,"Sphere",0.15,0.15,0.125)
CreateWeld(dotsecb,rarm,dotsecb,0.4,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dotsec = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotsec,"Sphere",0.1,0.1,0.15)
CreateWeld(dotsec,rarm,dotsec,-0.2,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotseca = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(dotseca,"Sphere",0.2,0.2,0.1)
CreateWeld(dotseca,rarm,dotseca,-0.2,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotsecb = CreateParta(m,0,0,"SmoothPlastic",lunacolor)
CreateMesh(dotsecb,"Sphere",0.15,0.15,0.125)
CreateWeld(dotsecb,rarm,dotsecb,-0.2,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dotsec = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotsec,"Sphere",0.1,0.1,0.15)
CreateWeld(dotsec,rarm,dotsec,-0.4,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotseca = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(dotseca,"Sphere",0.2,0.2,0.1)
CreateWeld(dotseca,rarm,dotseca,-0.4,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotsecb = CreateParta(m,0,0,"SmoothPlastic",lunacolor)
CreateMesh(dotsecb,"Sphere",0.15,0.15,0.125)
CreateWeld(dotsecb,rarm,dotsecb,-0.4,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))



---Lines


gal = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(gal,"Brick",0.05,0.95,0.075)
CreateWeld(gal,rarm,gal,0,0,0.495,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gal = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(gal,"Brick",0.05,0.95,0.075)
CreateWeld(gal,rarm,gal,0.2,0,0.495,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gal = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(gal,"Brick",0.05,0.95,0.075)
CreateWeld(gal,rarm,gal,-0.2,0,0.495,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gala = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(gala,"Brick",0.65,0.65,0.075)
CreateWeld(gala,rarm,gala,0,-0.35,0.495,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gala = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(gala,"Brick",0.595,0.595,0.095)
CreateWeld(gala,rarm,gala,0,-0.35,0.495,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))


starz = CreateParta(m,0,0,"SmoothPlastic",starcolor)
CreateSpecialMesh(starz,"http://www.roblox.com/asset/?id=45428961",1.25,2.45,1.25)
CreateWeld(starz,rarm,starz,0,-0.485,-0.35,math.rad(90),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
starz1 = CreateParta(m,0,0,"SmoothPlastic",lunacolor)
CreateSpecialMesh(starz1,"http://www.roblox.com/asset/?id=45428961",1.5,2.425,1.5)
CreateWeld(starz1,rarm,starz1,0,-0.485,-0.35,math.rad(90),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dotbo = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotbo,"Sphere",0.1,0.1,0.15)
CreateWeld(dotbo,rarm,dotbo,0.425,0,0.475,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dotbo = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotbo,"Sphere",0.1,0.1,0.15)
CreateWeld(dotbo,rarm,dotbo,0.425,-0.2,0.475,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dotbo = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotbo,"Sphere",0.1,0.1,0.15)
CreateWeld(dotbo,rarm,dotbo,0.425,-0.4,0.475,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dotbo = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotbo,"Sphere",0.1,0.1,0.15)
CreateWeld(dotbo,rarm,dotbo,0.425,-0.6,0.475,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

-----------

dotbo = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotbo,"Sphere",0.1,0.1,0.15)
CreateWeld(dotbo,rarm,dotbo,-0.425,0,0.475,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dotbo = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotbo,"Sphere",0.1,0.1,0.15)
CreateWeld(dotbo,rarm,dotbo,-0.425,-0.2,0.475,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dotbo = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotbo,"Sphere",0.1,0.1,0.15)
CreateWeld(dotbo,rarm,dotbo,-0.425,-0.4,0.475,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dotbo = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotbo,"Sphere",0.1,0.1,0.15)
CreateWeld(dotbo,rarm,dotbo,-0.425,-0.6,0.475,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

-- Second Lines



gal = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(gal,"Brick",0.05,0.95,0.075)
CreateWeld(gal,rarm,gal,0,0,-0.495,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gal = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(gal,"Brick",0.05,0.95,0.075)
CreateWeld(gal,rarm,gal,0.2,0,-0.495,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gal = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(gal,"Brick",0.05,0.95,0.075)
CreateWeld(gal,rarm,gal,-0.2,0,-0.495,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gala = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(gala,"Brick",0.65,0.65,0.075)
CreateWeld(gala,rarm,gala,0,-0.35,-0.495,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gala = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(gala,"Brick",0.595,0.595,0.095)
CreateWeld(gala,rarm,gala,0,-0.35,-0.495,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

starz = CreateParta(m,0,0,"SmoothPlastic",starcolor)
CreateSpecialMesh(starz,"http://www.roblox.com/asset/?id=45428961",1.25,2.45,1.25)
CreateWeld(starz,rarm,starz,0,0.485,-0.35,math.rad(90),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
starz1 = CreateParta(m,0,0,"SmoothPlastic",lunacolor)
CreateSpecialMesh(starz1,"http://www.roblox.com/asset/?id=45428961",1.5,2.425,1.5)
CreateWeld(starz1,rarm,starz1,0,0.485,-0.35,math.rad(90),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))


dotbo = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotbo,"Sphere",0.1,0.1,0.15)
CreateWeld(dotbo,rarm,dotbo,0.425,0,-0.475,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dotbo = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotbo,"Sphere",0.1,0.1,0.15)
CreateWeld(dotbo,rarm,dotbo,0.425,-0.2,-0.475,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dotbo = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotbo,"Sphere",0.1,0.1,0.15)
CreateWeld(dotbo,rarm,dotbo,0.425,-0.4,-0.475,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dotbo = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotbo,"Sphere",0.1,0.1,0.15)
CreateWeld(dotbo,rarm,dotbo,0.425,-0.6,-0.475,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

-----------

dotbo = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotbo,"Sphere",0.1,0.1,0.15)
CreateWeld(dotbo,rarm,dotbo,-0.425,0,-0.475,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dotbo = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotbo,"Sphere",0.1,0.1,0.15)
CreateWeld(dotbo,rarm,dotbo,-0.425,-0.2,-0.475,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dotbo = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotbo,"Sphere",0.1,0.1,0.15)
CreateWeld(dotbo,rarm,dotbo,-0.425,-0.4,-0.475,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dotbo = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotbo,"Sphere",0.1,0.1,0.15)
CreateWeld(dotbo,rarm,dotbo,-0.425,-0.6,-0.475,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))



---- HERES THE RING

gan = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(gan,"Brick",1.075,0.1,1.075)
CreateWeld(gan,larm,gan,0,0.5,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gan = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(gan,"Brick",1.075,0.1,1.075)
CreateWeld(gan,larm,gan,0,0.75,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))



gan = CreateParta(m,0,0,"Neon",halocolor2)
CreateMesh(gan,"Brick",1.095,0.035,1.095)
CreateWeld(gan,larm,gan,0,0.5,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gan = CreateParta(m,0,0,"Neon",halocolor2)
CreateMesh(gan,"Brick",1.095,0.035,1.095)
CreateWeld(gan,larm,gan,0,0.75,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gane = CreateParta(m,0,0,"SmoothPlastic",lunacolor2)
CreateMesh(gane,"Brick",1.0625,0.2,1.0625)
CreateWeld(gane,larm,gane,0,0.6,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

star = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateSpecialMesh(star,"http://www.roblox.com/asset/?id=45428961",2.5,2.5,2.5)
CreateWeld(star,larm,star,0,0.475,0.6,math.rad(90),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
starl = CreateParta(m,0,0,"SmoothPlastic",starcolor)
CreateSpecialMesh(starl,"http://www.roblox.com/asset/?id=45428961",1.95,2.55,1.95)
CreateWeld(starl,larm,starl,0,0.475,0.6,math.rad(90),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

-- S section A

dotsec = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotsec,"Sphere",0.1,0.1,0.15)
CreateWeld(dotsec,larm,dotsec,0,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotseca = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(dotseca,"Sphere",0.2,0.2,0.1)
CreateWeld(dotseca,larm,dotseca,0,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotsecb = CreateParta(m,0,0,"SmoothPlastic",lunacolor)
CreateMesh(dotsecb,"Sphere",0.15,0.15,0.125)
CreateWeld(dotsecb,larm,dotsecb,0,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dotsec = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotsec,"Sphere",0.1,0.1,0.15)
CreateWeld(dotsec,larm,dotsec,0.2,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotseca = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(dotseca,"Sphere",0.2,0.2,0.1)
CreateWeld(dotseca,larm,dotseca,0.2,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotsecb = CreateParta(m,0,0,"SmoothPlastic",lunacolor)
CreateMesh(dotsecb,"Sphere",0.15,0.15,0.125)
CreateWeld(dotsecb,larm,dotsecb,0.2,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dotsec = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotsec,"Sphere",0.1,0.1,0.15)
CreateWeld(dotsec,larm,dotsec,0.4,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotseca = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(dotseca,"Sphere",0.2,0.2,0.1)
CreateWeld(dotseca,larm,dotseca,0.4,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotsecb = CreateParta(m,0,0,"SmoothPlastic",lunacolor)
CreateMesh(dotsecb,"Sphere",0.15,0.15,0.125)
CreateWeld(dotsecb,larm,dotsecb,0.4,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dotsec = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotsec,"Sphere",0.1,0.1,0.15)
CreateWeld(dotsec,larm,dotsec,-0.2,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotseca = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(dotseca,"Sphere",0.2,0.2,0.1)
CreateWeld(dotseca,larm,dotseca,-0.2,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotsecb = CreateParta(m,0,0,"SmoothPlastic",lunacolor)
CreateMesh(dotsecb,"Sphere",0.15,0.15,0.125)
CreateWeld(dotsecb,larm,dotsecb,-0.2,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dotsec = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotsec,"Sphere",0.1,0.1,0.15)
CreateWeld(dotsec,larm,dotsec,-0.4,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotseca = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(dotseca,"Sphere",0.2,0.2,0.1)
CreateWeld(dotseca,larm,dotseca,-0.4,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotsecb = CreateParta(m,0,0,"SmoothPlastic",lunacolor)
CreateMesh(dotsecb,"Sphere",0.15,0.15,0.125)
CreateWeld(dotsecb,larm,dotsecb,-0.4,0.635,-0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

-- S section B

dotsec = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotsec,"Sphere",0.1,0.1,0.15)
CreateWeld(dotsec,larm,dotsec,0,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotseca = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(dotseca,"Sphere",0.2,0.2,0.1)
CreateWeld(dotseca,larm,dotseca,0,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotsecb = CreateParta(m,0,0,"SmoothPlastic",lunacolor)
CreateMesh(dotsecb,"Sphere",0.15,0.15,0.125)
CreateWeld(dotsecb,larm,dotsecb,0,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dotsec = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotsec,"Sphere",0.1,0.1,0.15)
CreateWeld(dotsec,larm,dotsec,0.2,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotseca = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(dotseca,"Sphere",0.2,0.2,0.1)
CreateWeld(dotseca,larm,dotseca,0.2,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotsecb = CreateParta(m,0,0,"SmoothPlastic",lunacolor)
CreateMesh(dotsecb,"Sphere",0.15,0.15,0.125)
CreateWeld(dotsecb,larm,dotsecb,0.2,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dotsec = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotsec,"Sphere",0.1,0.1,0.15)
CreateWeld(dotsec,larm,dotsec,0.4,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotseca = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(dotseca,"Sphere",0.2,0.2,0.1)
CreateWeld(dotseca,larm,dotseca,0.4,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotsecb = CreateParta(m,0,0,"SmoothPlastic",lunacolor)
CreateMesh(dotsecb,"Sphere",0.15,0.15,0.125)
CreateWeld(dotsecb,larm,dotsecb,0.4,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dotsec = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotsec,"Sphere",0.1,0.1,0.15)
CreateWeld(dotsec,larm,dotsec,-0.2,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotseca = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(dotseca,"Sphere",0.2,0.2,0.1)
CreateWeld(dotseca,larm,dotseca,-0.2,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotsecb = CreateParta(m,0,0,"SmoothPlastic",lunacolor)
CreateMesh(dotsecb,"Sphere",0.15,0.15,0.125)
CreateWeld(dotsecb,larm,dotsecb,-0.2,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

dotsec = CreateParta(m,0,0,"Neon",halocolor)
CreateMesh(dotsec,"Sphere",0.1,0.1,0.15)
CreateWeld(dotsec,larm,dotsec,-0.4,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotseca = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(dotseca,"Sphere",0.2,0.2,0.1)
CreateWeld(dotseca,larm,dotseca,-0.4,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
dotsecb = CreateParta(m,0,0,"SmoothPlastic",lunacolor)
CreateMesh(dotsecb,"Sphere",0.15,0.15,0.125)
CreateWeld(dotsecb,larm,dotsecb,-0.4,0.635,0.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

------


function RemoveOutlines(part)
  part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreatePart(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
  local Part = Create("Part")({
    Parent = Parent,
    Reflectance = Reflectance,
    Transparency = Transparency,
    CanCollide = false,
    Locked = true,
    BrickColor = BrickColor.new(tostring(BColor)),
    Name = Name,
    Size = Size,
    Material = Material
  })
  Part.CustomPhysicalProperties = PhysicalProperties.new(0.001, 0.001, 0.001, 0.001, 0.001)
  RemoveOutlines(Part)
  return Part
end
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
  local Msh = Create(Mesh)({
    Parent = Part,
    Offset = OffSet,
    Scale = Scale
  })
  if Mesh == "SpecialMesh" then
    Msh.MeshType = MeshType
    Msh.MeshId = MeshId
  end
  return Msh
end
function CreateWeld(Parent, Part0, Part1, C0, C1)
  local Weld = Create("Weld")({
    Parent = Parent,
    Part0 = Part0,
    Part1 = Part1,
    C0 = C0,
    C1 = C1
  })
  return Weld
end

Player=game:GetService("Players").LocalPlayer
Character=game.Workspace.non 
PlayerGui=Player.PlayerGui 
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
MMouse=nil
combo=0
mana=0
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
local sine = 0
local change = 1
player=nil 

mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
player=Player 
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 

local Stats=Instance.new("BoolValue")
Stats.Name="Stats"
Stats.Parent=Character
local Atk=Instance.new("NumberValue")
Atk.Name="Damage"
Atk.Parent=Stats
Atk.Value=0
local Def=Instance.new("NumberValue")
Def.Name="Defense"
Def.Parent=Stats
Def.Value=1
local Speed=Instance.new("NumberValue")
Speed.Name="Speed"
Speed.Parent=Stats
Speed.Value=1
local Mvmt=Instance.new("NumberValue")
Mvmt.Name="Movement"
Mvmt.Parent=Stats
Mvmt.Value=1

local donum=0
 

function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp=it("Part")
fp.formFactor=formfactor 
fp.Parent=parent
fp.Reflectance=reflectance
fp.Transparency=transparency
fp.CanCollide=false 
fp.Locked=true
fp.BrickColor=brickcolor
fp.Name=name
fp.Size=size
fp.Position=Torso.Position 
NoOutline(fp)
fp.Material="SmoothPlastic"
fp:BreakJoints()
return fp 
end 
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh=it(Mesh) 
mesh.Parent=part
if Mesh=="SpecialMesh" then
mesh.MeshType=meshtype
if meshid~="nil" then
mesh.MeshId="http://www.roblox.com/asset/?id="..meshid
end
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end
 
function weld(parent,part0,part1,c0)
local weld=it("Weld") 
weld.Parent=parent
weld.Part0=part0 
weld.Part1=part1 
weld.C0=c0
return weld
end
 
local Color1=Torso.BrickColor

local bodvel=Instance.new("BodyVelocity")
local bg=Instance.new("BodyGyro")

function swait(num)
if num==0 or num==nil then
game:service'RunService'.Stepped:wait(0)
else
for i=0,num do
game:service'RunService'.Stepped:wait(0)
end
end
end
 
 
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end
 
function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new("Really red")
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
local l1 = Instance.new("PointLight",w1)
l1.Color = Color3.new(170,0,0)
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new("Really red")
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
local l2 = Instance.new("PointLight",w2)
l2.Color = Color3.new(170,0,0)
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end
 

function Damagefunc(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
  if hit.Parent == nil then
    return
  end
  local h = hit.Parent:FindFirstChild("Humanoid")
  for _, v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
    end
  end
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return
    end
    local c = Create("ObjectValue")({
      Name = "creator",
      Value = game:service("Players").LocalPlayer,
      Parent = h
    })
    game:GetService("Debris"):AddItem(c, 0.5)
    if HitSound ~= nil and HitPitch ~= nil then
      CFuncs.Sound.Create(HitSound, hit, 1, HitPitch)
    end
    local Damage = math.random(minim, maxim)
    local blocked = false
    local block = hit.Parent:findFirstChild("Block")
    if block ~= nil and block.className == "IntValue" and block.Value > 0 then
      blocked = true
      block.Value = block.Value - 1
      print(block.Value)
    end
    if blocked == false then
      HitHealth = h.Health
      h.Health = h.Health - Damage
      if HitHealth ~= h.Health and HitHealth ~= 0 and 0 >= h.Health and h.Parent.Name ~= "Hologram" then
        print("gained kill")
      end
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
    else
      h.Health = h.Health - Damage / 2
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
    end
    if Type == "Knockdown" then
      local hum = hit.Parent.Humanoid
      hum.PlatformStand = true
      coroutine.resume(coroutine.create(function(HHumanoid)
        swait(1)
        HHumanoid.PlatformStand = false
      end), hum)
      local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
      local bodvol = Create("BodyVelocity")({
        velocity = angle * knockback,
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      local rl = Create("BodyAngularVelocity")({
        P = 3000,
        maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
        angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodvol, 0.5)
      game:GetService("Debris"):AddItem(rl, 0.5)
    elseif Type == "Normal" then
      local vp = Create("BodyVelocity")({
        P = 500,
        maxForce = Vector3.new(math.huge, 0, math.huge),
        velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
      })
      if knockback > 0 then
        vp.Parent = hit.Parent.Torso
      end
      game:GetService("Debris"):AddItem(vp, 0.5)
    elseif Type == "Up" then
      local bodyVelocity = Create("BodyVelocity")({
        velocity = Vector3.new(0, 20, 0),
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodyVelocity, 0.5)
      local bodyVelocity = Create("BodyVelocity")({
        velocity = Vector3.new(0, 20, 0),
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodyVelocity, 1)
    elseif Type == "Leech" then
      local hum = hit.Parent.Humanoid
      if hum ~= nil then
        for i = 0, 2 do
          Effects.Sphere.Create(BrickColor.new("Bright red"), hit.Parent.Torso.CFrame * cn(0, 0, 0) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 15, 1, 0, 5, 0, 0.02)
        end
        Humanoid.Health = Humanoid.Health + 10
      end
    elseif Type == "UpKnock" then
      local hum = hit.Parent.Humanoid
      hum.PlatformStand = true
      if hum ~= nil then
        hitr = true
      end
      coroutine.resume(coroutine.create(function(HHumanoid)
        swait(5)
        HHumanoid.PlatformStand = false
        hitr = false
      end), hum)
      local bodyVelocity = Create("BodyVelocity")({
        velocity = Vector3.new(0, 20, 0),
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodyVelocity, 0.5)
      local bodyVelocity = Create("BodyVelocity")({
        velocity = Vector3.new(0, 20, 0),
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodyVelocity, 1)
    elseif Type == "Snare" then
      local bp = Create("BodyPosition")({
        P = 2000,
        D = 100,
        maxForce = Vector3.new(math.huge, math.huge, math.huge),
        position = hit.Parent.Torso.Position,
        Parent = hit.Parent.Torso
      })
      game:GetService("Debris"):AddItem(bp, 1)
    elseif Type == "Slashnare" then
      Effects.Block.Create(BrickColor.new("Pastel Blue"), hit.Parent.Torso.CFrame * cn(0, 0, 0), 15*4, 15*4, 15*4, 3*4, 3*4, 3*4, 0.07)
      for i = 1, math.random(4, 5) do
        Effects.Sphere.Create(BrickColor.new("Teal"), hit.Parent.Torso.CFrame * cn(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 15, 1, 0, 5, 0, 0.02)
      end
      local bp = Create("BodyPosition")({
        P = 2000,
        D = 100,
        maxForce = Vector3.new(math.huge, math.huge, math.huge),
        position = hit.Parent.Torso.Position,
        Parent = hit.Parent.Torso
      })
      game:GetService("Debris"):AddItem(bp, 1)
    elseif Type == "Spike" then
      CreateBigIceSword(hit.Parent.Torso.CFrame)
      local bp = Create("BodyPosition")({
        P = 2000,
        D = 100,
        maxForce = Vector3.new(math.huge, math.huge, math.huge),
        position = hit.Parent.Torso.Position,
        Parent = hit.Parent.Torso
      })
      game:GetService("Debris"):AddItem(bp, 1)
    elseif Type == "Freeze" then
      local BodPos = Create("BodyPosition")({
        P = 50000,
        D = 1000,
        maxForce = Vector3.new(math.huge, math.huge, math.huge),
        position = hit.Parent.Torso.Position,
        Parent = hit.Parent.Torso
      })
      local BodGy = Create("BodyGyro")({
        maxTorque = Vector3.new(400000, 400000, 400000) * math.huge,
        P = 20000,
        Parent = hit.Parent.Torso,
        cframe = hit.Parent.Torso.CFrame
      })
      hit.Parent.Torso.Anchored = true
      coroutine.resume(coroutine.create(function(Part)
        swait(1.5)
        Part.Anchored = false
      end), hit.Parent.Torso)
      game:GetService("Debris"):AddItem(BodPos, 3)
      game:GetService("Debris"):AddItem(BodGy, 3)
    end
    local debounce = Create("BoolValue")({
      Name = "DebounceHit",
      Parent = hit.Parent,
      Value = true
    })
    game:GetService("Debris"):AddItem(debounce, Delay)
    c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = Player
    c.Parent = h
    game:GetService("Debris"):AddItem(c, 0.5)
  end
end
function ShowDamage(Pos, Text, Time, Color)
  local Rate = 0.03333333333333333
  local Pos = Pos or Vector3.new(0, 0, 0)
  local Text = Text or ""
  local Time = Time or 2
  local Color = Color or Color3.new(1, 0, 1)
  local EffectPart = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
  EffectPart.Anchored = true
  local BillboardGui = Create("BillboardGui")({
    Size = UDim2.new(3, 0, 3, 0),
    Adornee = EffectPart,
    Parent = EffectPart
  })
  local TextLabel = Create("TextLabel")({
    BackgroundTransparency = 1,
    Size = UDim2.new(1, 0, 1, 0),
    Text = Text,
    TextColor3 = Color,
    TextScaled = true,
    Font = Enum.Font.ArialBold,
    Parent = BillboardGui
  })
  game.Debris:AddItem(EffectPart, Time + 0.1)
  EffectPart.Parent = game:GetService("Workspace")
  delay(0, function()
    local Frames = Time / Rate
    for Frame = 1, Frames do
      wait(Rate)
      local Percent = Frame / Frames
      EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
      TextLabel.TextTransparency = Percent
    end
    if EffectPart and EffectPart.Parent then
      EffectPart:Destroy()
    end
  end)
end
function MagniDamage(Part, magni, mindam, maxdam, knock, Type)
  for _, c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if magni >= mag and c.Name ~= Player.Name then
          Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "rbxassetid://231917784", 1)
        end
      end
    end
  end
end

function MagniDamageWithEffect(Part, magni, mindam, maxdam, knock, Type)
  for _, c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if magni >= mag and c.Name ~= Player.Name then
	MagicBlock(BrickColor.new("Pastel light blue"),head.CFrame,5,5,5,1,1,1,0.05)
          Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "rbxassetid://231917784", 1)
        end
      end
    end
  end
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

function SkullEffect(brickcolor,cframe,x1,y1,z1,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=4770583",vt(0,0,0),vt(x1,y1,z1))
--http://www.roblox.com/asset/?id=4770560
game:GetService("Debris"):AddItem(prt,2)
CF=prt.CFrame
coroutine.resume(coroutine.create(function(Part,Mesh,TehCF) 
for i=0,1,0.2 do
wait()
Part.CFrame=CF*cf(0,0,-0.4)
end
for i=0,1,delay do
wait()
--Part.CFrame=CF*cf((math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5)
Mesh.Scale=Mesh.Scale
end
for i=0,1,0.1 do
wait()
Part.Transparency=i
end
Part.Parent=nil
end),prt,msh,CF)
end
 
function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
prt.CFrame=prt.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicBlockSteady(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicSphere(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
prt.CFrame=prt.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicBlockSteady(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicShock(brickcolor,cframe,x1,y1,x3,y3,delay,rottype)
local prt=part(3,char,1,1,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
local dec = decal(prt.Color,"http://www.roblox.com/asset/?id=874580939","Front",prt)
local dec2 = decal(prt.Color,"http://www.roblox.com/asset/?id=874580939","Front",prt)
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,0.01))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
dec.Transparency=i
dec2.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,0)
end
Part.Parent=nil
end),prt,msh)
end

function MagicShockAlt(brickcolor,cframe,x1,y1,x3,y3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,0.01))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
prt.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,0)
end
Part.Parent=nil
end),prt,msh)
end

function MagicShockAltCircle(brickcolor,cframe,x1,z1,x3,z3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0.1,0)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,-0.1,0)
end
prt.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,0,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicShockTrailAlt(brickcolor,cframe,x1,y1,z1,x3,y3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
prt.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,0)
end
Part.Parent=nil
end),prt,msh)
end

function MagicShockTrailAlt2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
prt.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicBlock2(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=false
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
local wld=weld(prt,prt,Parent,cframe)
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
for i=0,1,delay do
wait()
Weld.C0=euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cframe
--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,wld)
end
 
function MagicBlock3(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=false
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
local wld=weld(prt,prt,Parent,euler(0,0,0)*cf(0,0,0))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
for i=0,1,delay do
wait()
Weld.C0=euler(i*20,0,0)
--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,wld)
end
 
function MagicCircle2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
local prt2=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt2.Anchored=true
prt2.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh2=mesh("SpecialMesh",prt2,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
game:GetService("Debris"):AddItem(prt2,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
wait()
Part.CFrame=Part.CFrame*cf(0,0.5,0)
end
Part.Parent=nil
end),prt2,msh2)
end
for i=0,1,delay*2 do
wait()
Part.CFrame=Part.CFrame
Mesh.Scale=vt((x1+x3)-(x1+x3)*i,(y1+y3)-(y1+y3)*i,(z1+z3)-(z1+z3)*i)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function BreakEffect(brickcolor,cframe,x1,y1,z1)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,CF,Numbb,randnumb) 
CF=Part.CFrame
Numbb=0
randnumb=math.random()/10
rand1=math.random()/10
for i=0,1,rand1 do
wait()
CF=CF*cf(0,math.random()/2,0)
--Part.CFrame=Part.CFrame*euler(0.5,0,0)*cf(0,1,0)
Part.CFrame=CF*euler(Numbb,0,0)
Part.Transparency=i
Numbb=Numbb+randnumb
end
Part.Parent=nil
end),prt,CF,Numbb,randnumb)
end
 
function MagicWaveThing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1051557",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*euler(0,0.7,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function WaveEffect(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*cf(0,y3/2,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function StravEffect(brickcolor,cframe,x,y,z,x1,y1,z1,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*cf(x,y,z)
msh=mesh("SpecialMesh",prt,"FileMesh","rbxassetid://168892363",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,ex,why,zee) 
local num=math.random()
local num2=math.random(-3,2)+math.random()
local numm=0
for i=0,1,delay*2 do
swait()
Part.CFrame=cframe*euler(0,numm*num*10,0)*cf(ex,why,zee)*cf(-i*10,num2,0)
Part.Transparency=i
numm=numm+0.01
end
Part.Parent=nil
Mesh.Parent=nil
end),prt,msh,x,y,z)
end

function dmgstart(dmg,what)
	hitcon = what.Touched:connect(function(hit)
		local hum = hit.Parent:FindFirstChild("Humanoid")
		if hum and not hum:IsDescendantOf(Character) then
			hum:TakeDamage(dmg)
		end
	end)
end

function dmgstop()
	hitcon:disconnect()
end

function Cloak()
Face.Parent=nil
cloaked=true
        for _,v in pairs(Torso.Parent:children()) do
                if v.className=="Part" and v.Name~="HumanoidRootPart" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.2 do
                wait()
                v.Transparency=i
                end
                v.Transparency=1
                end))
                end
                if v.className=="Hat" then
                hatp=v.Handle
                coroutine.resume(coroutine.create(function(derp) 
                for i=0,1,0.2 do
                wait()
                derp.Transparency=i
                end
                derp.Transparency=1
                end),hatp)
                end
        end
        for _,v in pairs(m:children()) do
                if v.className=="Part" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.2 do
                wait()
                v.Transparency=i
                end
                v.Transparency=1
                end))
                end
        end
end
 
function UnCloak()
so("http://roblox.com/asset/?id=2767090",Torso,1,1.1) 
Face.Parent=Head 
cloaked=false
        for _,v in pairs(Torso.Parent:children()) do
                if v.className=="Part" and v.Name~="HumanoidRootPart" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.1 do
                wait()
                v.Transparency=v.Transparency-0.1
                end
                v.Transparency=0
                end))
                end
                if v.className=="Hat" then
                hatp=v.Handle
                coroutine.resume(coroutine.create(function(derp) 
                for i=0,1,0.1 do
                wait()
                derp.Transparency=derp.Transparency-0.1
                end
                derp.Transparency=0
                end),hatp)
                end
        end
        for _,v in pairs(m:children()) do
                if v.className=="Part" and v.Name~="hitbox" and v.Name~='tip' then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.1 do
                wait()
                v.Transparency=v.Transparency-0.1
                end
                v.Transparency=0
                end))
                v.Transparency=0
                end
        end
end

local origcolor = BrickColor.new("Pastel light blue")
---- This section of explosions.
function Explode(rad,par,pitch,vol,mindam,maxdam)
	local expart = Instance.new("Part",char)
	local expart2 = Instance.new("Part",char)
	local rin = Instance.new("Part",char)
	local rin2 = Instance.new("Part",char)
	local partMesh = Instance.new("SpecialMesh",expart)
	partMesh.MeshType = "Sphere"
	local partMesh2 = Instance.new("SpecialMesh",expart2)
	partMesh2.MeshType = "Sphere"
	local partMesh3 = Instance.new("SpecialMesh",rin)
	partMesh3.MeshType = "Brick"
	local partMesh4 = Instance.new("SpecialMesh",rin2)
	partMesh4.MeshType = "Brick"
	CFuncs["Sound"].Create("rbxassetid://165970126", expart,vol, pitch)
	partMesh.Scale = vt(rad,rad,rad)
	expart.Size = vt(1,1,1)
	expart.Transparency = 0
	expart.Anchored = true
	expart.Material = "Neon"
	expart.BrickColor = bc("White")
	expart.CFrame = par.CFrame
	partMesh2.Scale = vt(rad,rad,rad)
	expart2.Size = vt(1.15,1.15,1.15)
	expart2.Transparency = 0.5
	expart2.Anchored = true
	expart2.Material = "Neon"
	expart2.BrickColor = par.BrickColor
	expart2.CFrame = par.CFrame
	rin.Size = vt(1.15,1.15,1.15)
	rin.Transparency = 1
	rin.Anchored = true
	rin.Material = "Neon"
	rin.BrickColor = par.BrickColor
	rin.CFrame = par.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
	rin2.Size = vt(1.15,1.15,1.15)
	rin2.Transparency = 1
	rin2.Anchored = true
	rin2.Material = "Neon"
	rin2.BrickColor = par.BrickColor
	rin2.CFrame = par.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
	partMesh3.Scale = vt(0,1,0)
	partMesh4.Scale = vt(0,1,0)
local dec2 = Instance.new("Decal", rin)
dec2.Face = "Top"
dec2.Texture = "http://www.roblox.com/asset/?id=874580939"
dec2.Parent = rin
local dec2b = dec2:Clone()
dec2b.Face = "Bottom"
dec2b.Parent = rin

local dec2a = Instance.new("Decal", rin2)
dec2a.Face = "Top"
dec2a.Texture = "http://www.roblox.com/asset/?id=874580939"
dec2a.Parent = rin2
local dec2ab = dec2a:Clone()
dec2ab.Face = "Bottom"
dec2ab.Parent = rin2
expart.CanCollide = false
expart2.CanCollide = false
rin.CanCollide = false
rin2.CanCollide = false
MagniDamage(par, rad*5, mindam, maxdam, 0, "Normal")
        local value = 1*rad/6.5
	for i = 0, 199 do
                partMesh.Scale = partMesh.Scale + vt(value,value,value)
		expart.CFrame = expart.CFrame
                partMesh2.Scale = partMesh2.Scale + vt(value,value,value)
		expart2.CFrame = expart.CFrame
                value = value - 0.035*rad/30
                if value < 7.5 then
	partMesh3.Scale = partMesh3.Scale + vt(rad/5,0,rad/5)
		rin.CFrame = rin.CFrame*CFrame.Angles(0,math.rad(1),0)
	partMesh4.Scale = partMesh4.Scale + vt(rad/7.5,0,rad/7.5)
		rin2.CFrame = rin2.CFrame*CFrame.Angles(0,math.rad(-1),0)
		end
                if value < 0 then
dec2.Transparency = dec2.Transparency + 0.025
dec2a.Transparency = dec2a.Transparency + 0.025
dec2b.Transparency = dec2b.Transparency + 0.025
dec2ab.Transparency = dec2ab.Transparency + 0.025
		expart.Transparency = expart.Transparency + 0.025
		expart2.Transparency = expart2.Transparency + 0.025
		rin.Transparency = rin.Transparency + 0.025
		rin2.Transparency = rin2.Transparency + 0.025
                end
		swait()
	end
game:GetService("Debris"):AddItem(expart, 1)
game:GetService("Debris"):AddItem(expart2, 1)
game:GetService("Debris"):AddItem(rin, 1)
game:GetService("Debris"):AddItem(rin2, 1)
end

function ExplodeShort(rad,par,pitch,vol,mindam,maxdam)
	local expart = Instance.new("Part",char)
	local expart2 = Instance.new("Part",char)
	local partMesh = Instance.new("SpecialMesh",expart)
	partMesh.MeshType = "Sphere"
	local partMesh2 = Instance.new("SpecialMesh",expart2)
	partMesh2.MeshType = "Sphere"
	CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=142070127", expart,vol, pitch)
	partMesh.Scale = vt(rad,rad,rad)
	expart.Size = vt(1,1,1)
	expart.Transparency = 0
	expart.Anchored = true
	expart.Material = "Neon"
	expart.BrickColor = bc("White")
	expart.CFrame = par.CFrame
	partMesh2.Scale = vt(rad,rad,rad)
	expart2.Size = vt(1.15,1.15,1.15)
	expart2.Transparency = 0.5
	expart2.Anchored = true
	expart2.Material = "Neon"
	expart2.BrickColor = par.BrickColor
	expart2.CFrame = par.CFrame
expart.CanCollide = false
expart2.CanCollide = false
MagniDamage(par, rad*2.5, mindam, maxdam, 0, "Normal")
        local value = 1*rad/6.5
	for i = 0, 75 do
                partMesh.Scale = partMesh.Scale + vt(value,value,value)
		expart.CFrame = expart.CFrame
                partMesh2.Scale = partMesh2.Scale + vt(value,value,value)
		expart2.CFrame = expart.CFrame
                value = value - 0.035*rad/5
                if value < 0 then
value = 0
		expart.Transparency = expart.Transparency + 0.05
		expart2.Transparency = expart2.Transparency + 0.05
                end
		swait()
	end
game:GetService("Debris"):AddItem(expart, 1)
game:GetService("Debris"):AddItem(expart2, 1)
end

function AreaDanger(rad,par,mindam,maxdam)
	local expart = Instance.new("Part",char)
	local partMesh = Instance.new("SpecialMesh",expart)
	CFuncs["Sound"].Create("rbxassetid://231917784", expart,1.5,1.15)
	partMesh.MeshType = "Sphere"
	partMesh.Scale = vt(rad,rad,rad)
	expart.Size = vt(1,1,1)
	expart.Transparency = 0.5
	expart.Anchored = true
	expart.Material = "Neon"
	expart.CanCollide = false
	expart.BrickColor = par.BrickColor
	expart.CFrame = par.CFrame
        local value = 1*rad/5
MagicBlock(origcolor,expart.CFrame,0,0,0,rad/2,rad/2,rad/2,0.1)
	for i = 0, 14 do
		wait()
                partMesh.Scale = partMesh.Scale + vt(value,value,value)
		expart.CFrame = expart.CFrame
                value = value - 0.035*rad
                if value < 0 then
	value = 0
end
	end
	wait(0.25)
CFuncs["Sound"].Create("rbxassetid://588738544", expart,1.5,1)
wait(0.5)
CFuncs["Sound"].Create("rbxassetid://588737825", expart,1.5,1)
CFuncs["Sound"].Create("rbxassetid://231917784", expart,1.5,0.75)
MagniDamageWithEffect(par, rad, mindam, maxdam, 0, "Normal")
MagicBlock(origcolor,expart.CFrame,rad*2,rad*2,rad*2,0.1,0.1,0.1,0.025)
for i = 0, 14 do
		wait()
                partMesh.Scale = partMesh.Scale + vt(value,value,value)
		expart.CFrame = expart.CFrame
                value = value - 0.035*rad/2
end
expart.Transparency = 1
game:GetService("Debris"):AddItem(expart, 5)
end

function Swarmsplosions(negrad,rad,par,mindam,maxdam)
		CFuncs["Sound"].Create("rbxassetid://588737825", par, 2.5, 2)
	CFuncs["Sound"].Create("rbxassetid://231917784", par, 2.5,1)
	CFuncs["Sound"].Create("rbxassetid://231917744", par, 2.5,1)
	CFuncs["Sound"].Create("rbxassetid://233856106", par, 2.5, 1)
			MagniDamageWithEffect(par, 253, 533,133, 0, "Normal")
			MagicBlock(origcolor,par.CFrame,5,5,5,5,5,5,0.025)
	for i = 0, 24 do
		MagicShockTrailAlt2(origcolor,par.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),10/5,10/5,5,-0.05/5,-0.05/5,25,0.005,math.random(1,2))
	end
	for i = 0, 24 do
	local expart = Instance.new("Part",char)
	expart.Transparency = 1
	expart.Anchored = true
	expart.CanCollide = false
	expart.CFrame = par.CFrame*CFrame.new(math.random(negrad,rad),math.random(negrad,rad),math.random(negrad,rad))
CFuncs["Sound"].Create("rbxassetid://588737825", expart,1,2)
CFuncs["Sound"].Create("rbxassetid://231917784", expart,1.5,1.15)
MagniDamage(expart, rad/2, mindam, maxdam, 20, "Normal")
MagicBlock(origcolor,expart.CFrame,rad,rad,rad,0.1,0.1,0.1,0.025)
for i = 0, 9 do
		MagicShockTrailAlt2(origcolor,expart.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),10/5,10/5,5,-0.05/5,-0.05/5,5,0.05,math.random(1,2))
	end
game:GetService("Debris"):AddItem(expart, 2)
wait(0.1)
	end
end

function EXterPlosion(par)
		CFuncs["Sound"].Create("rbxassetid://919941001", par, 10, 1)
	CFuncs["Sound"].Create("rbxassetid://138213851", par, 5,0.85)
	CFuncs["Sound"].Create("rbxassetid://157878578", par, 5,0.2)
	CFuncs["Sound"].Create("rbxassetid://233856106", par, 2.5, 1)
			MagniDamageWithEffect(par, 500, 830,933, 0, "Normal")
			MagicBlock(origcolor,par.CFrame,5,5,5,5,5,5,0.005)
			MagicBlock(origcolor,par.CFrame,0,0,0,150,150,150,0.1)
	for i = 0, 24 do
		MagicShockTrailAlt2(origcolor,par.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),10*5,10*5,5,-0.05*10,-0.05*10,500,0.1,math.random(1,2))
	end
	for i = 0, 24 do
		MagicShockTrailAlt2(origcolor,par.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),10*5,10*5,5,-0.05*5,-0.05*5,50,0.005,math.random(1,2))
	end
end
----


function ring(type,pos,scale,value)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, 0)
end
rng:Destroy()
end))
end


function wave(type,pos,scale,value)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=20329976"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, scaler2)
end
rng:Destroy()
end))
end

function wind(type,pos,scale,value,speed)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=1051557"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.CFrame = rng.CFrame*CFrame.Angles(0,0.025*speed,0)
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, scaler2)
end
rng:Destroy()
end))
end

function groundwind(type,pos,scale,value,speed)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=1051557"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.CFrame = rng.CFrame*CFrame.Angles(0,0.025*speed,0)
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2/5, scaler2)
end
rng:Destroy()
end))
end

function sphere(type,pos,scale,value)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, scaler2)
end
rng:Destroy()
end))
end

function beam(type,pos,scale,value)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
rngm.Scale = scale
rngm.Scale = rngm.Scale + Vector3.new(0,10000,0)
local scaler2 = 0.5
if type == "Add" then
scaler2 = 0.5*value
elseif type == "Divide" then
scaler2 = 0.5/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, scaler2)
end
rng:Destroy()
end))
end

function first()
	attack = true
	for i = 0,3,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-10),math.rad(0),math.rad(-20)),0.1)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(20)),.1)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(50)), 0.1)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.1)
	end
sphere("Divide",sorb.CFrame*CFrame.Angles(0,0,0),Vector3.new(1,1,1),10)
local lookvalue = 15
coroutine.resume(coroutine.create(function()
local rat = Instance.new("Part")
rat.Parent = char
rat.CFrame = root.CFrame
rat.Transparency = 1
rat.CanCollide = false
rat.Anchored = true
for i = 0, 4 do
				 local lb = Instance.new("Part")
CFuncs["Sound"].Create("rbxassetid://142070127", lb, 1, 1)
CFuncs["Sound"].Create("rbxassetid://255679373", lb, 1, 1)
  lb.Parent = char
    lb.BrickColor = origcolor
     lb.CanCollide = false
lb.Material = "Neon"
     lb.Anchored = true
lb.TopSurface = 0
        lb.BottomSurface = 0
     lb.Transparency = 1
     lb.Size = vt(0.5,0.5,0.5)
     lb.CFrame = rat.CFrame + rat.CFrame.lookVector*lookvalue
lb.CFrame = lb.CFrame + Vector3.new(0,-3,0)
game:GetService("Debris"):AddItem(lb, 3)
beam("Divide",lb.CFrame*CFrame.Angles(0,0,0),Vector3.new(0,0,0),3.5)
sphere("Divide",lb.CFrame*CFrame.Angles(0,0,0),Vector3.new(1,1,1),3.5)
ring("Divide",lb.CFrame*CFrame.Angles(math.rad(90),0,0),Vector3.new(1,1,10),2.5)
wave("Divide",lb.CFrame*CFrame.Angles(math.rad(0),0,0),Vector3.new(1,0.25,1),3.5)
lookvalue = lookvalue + 15
MagniDamage(lb, 153, 7113, 0, "Normal")
wait(0.25)
end
rat:Destroy()
end))
	for i = 0,1,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-1)* angles(math.rad(20),math.rad(0),math.rad(80)),0.5)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-80)),.5)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(20)), 0.5)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-70)), 0.5)
	end
	attack = false
end

local dashing = false

function dash()
dashing = true
attack = true
  local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = root.CFrame.lookVector*200
  bv.Parent = root
CFuncs["Sound"].Create("rbxassetid://200632211", root, 1, 0.5)
ring("Divide",root.CFrame*CFrame.Angles(math.rad(0),0,0),Vector3.new(1,1,10),1.5)
wave("Divide",root.CFrame*CFrame.Angles(math.rad(90),0,0),Vector3.new(1,0.05,1),2.5)
for i = 0,1,0.1 do
		swait()
bv.velocity = root.CFrame.lookVector*200
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(50),math.rad(0),math.rad(0)),0.5)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(0)),.5)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(-80), math.rad(0), math.rad(50)), 0.5)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(-80), math.rad(0), math.rad(-50)), 0.5)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-20)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(20)),.1)
	end
bv:Destroy()
attack = false
dashing = false
end

function Spiraling()
	attack = true
CFuncs["Sound"].Create("rbxassetid://214876666", root, 1, 1)
sphere("Divide",root.CFrame*CFrame.Angles(0,0,0),Vector3.new(1,1,1),2.5)
	for i = 0,5,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),0.1)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(0)),.1)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(90)), 0.1)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-90)), 0.1)
	end
CFuncs["Sound"].Create("rbxassetid://138079095", root, 1.5, 0.4)
CFuncs["Sound"].Create("rbxassetid://154723542", root, 2.5, 1)
coroutine.resume(coroutine.create(function()
beam("Divide",root.CFrame*CFrame.Angles(0,0,0),Vector3.new(0,0,0),2)
sphere("Divide",root.CFrame*CFrame.Angles(0,0,0),Vector3.new(1,1,1),1.5)
for i = 0, 4 do
wait(0.1)
MagniDamage(root, 603, 113,183, 0, "Normal")
groundwind("Add",root.CFrame*CFrame.Angles(0,math.rad(math.random(-360,360)),0),Vector3.new(1,1,1),math.random(2,4),5)
end
end))
for z = 0, 2 do
	for i = 0,1,0.5 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),0.5)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.5)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.5)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.5)
	end
	for i = 0,1,0.5 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(180)),0.5)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.5)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.5)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.5)
	end
	for i = 0,1,0.5 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(270)),0.5)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.5)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.5)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.5)
	end
	for i = 0,1,0.5 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(360)),0.5)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.5)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.5)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.5)
	end
end
	attack = false
end

function SkyBeam()
local currentws = hum.WalkSpeed
attack = true
hum.WalkSpeed = 0
CFuncs["Sound"].Create("rbxassetid://138079095", cahr, 0.5, 0.4)
sphere("Divide",root.CFrame*CFrame.Angles(0,0,0),Vector3.new(1,1,1),2.5)
	for i = 0,3,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),0.1)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(30),math.rad(0),math.rad(0)),.1)
             RW.C0 = clerp(RW.C0, CFrame.new(1.15, 0.5, -0.5) * angles(math.rad(10), math.rad(0), math.rad(-80)), 0.1)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.15, 0.5, -0.5) * angles(math.rad(10), math.rad(0), math.rad(80)), 0.1)
	end
local rng = Instance.new("Part", char)
CFuncs["Sound"].Create("rbxassetid://343211019", char, 1, 0.6)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 1
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = root.CFrame + Vector3.new(0,-2.5,0)
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Brick"
local dec = Instance.new("Decal",rng)
dec.Texture = "http://www.roblox.com/asset/?id=852097462"
dec.Face = "Top"
local dec2 = dec:Clone()
dec2.Parent = rng
dec2.Face = "Bottom"

local scaler2 = 1
scaler2 = 1*3
for i = 0,10,0.1 do
swait()
scaler2 = scaler2 - 0.01*3
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, 0, scaler2)
end
groundwind("Add",root.CFrame*CFrame.Angles(math.rad(0),0,0),Vector3.new(1,0.1,1),math.random(3,4),math.random(2,10))
wind("Add",root.CFrame*CFrame.Angles(math.rad(0),0,0),Vector3.new(1,0.1,1),math.random(2,3),math.random(2,10))
CFuncs["Sound"].Create("rbxassetid://136007472", char, 0.5, 0.7)
for i = 0,14,0.1 do
		swait()
MagicBlock(origcolor,sorb.CFrame,1,1,1,1,1,1,0.25)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),0.1)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-30),math.rad(0),math.rad(0)),.1)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(180), math.rad(0), math.rad(10)), 0.1)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-10)), 0.1)
	end
for i = 0,2,0.1 do
		swait()
MagicBlock(origcolor,sorb.CFrame,1,1,1,1,1,1,0.25)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(0)),0.5)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.5)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(10)), 0.5)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-10)), 0.5)
	end
MagniDamage(root, 165, 252,452, 0, "Normal")
CFuncs["Sound"].Create("rbxassetid://157878578", char, 0.5, 0.5)
CFuncs["Sound"].Create("rbxassetid://919941001", char, 1, 1)
CFuncs["Sound"].Create("rbxassetid://162271116", char, 0.5, 0.65)
CFuncs["Sound"].Create("rbxassetid://151304356", char, 0.5, 0.35)
CFuncs["Sound"].Create("rbxassetid://31762335", char, 0.5, 0.5)
beam("Add",root.CFrame*CFrame.Angles(0,0,0),Vector3.new(0,0,0),5)
coroutine.resume(coroutine.create(function()
for i = 0, 9 do
wait(0.1)
groundwind("Add",root.CFrame*CFrame.Angles(math.rad(0),0,0),Vector3.new(1,0.1,1),math.random(3,4),math.random(2,10))
wind("Add",root.CFrame*CFrame.Angles(math.rad(0),0,0),Vector3.new(1,0.1,1),math.random(2,3),math.random(2,10))
end
end))
wave("Add",root.CFrame*CFrame.Angles(math.rad(0),0,0),Vector3.new(1,0.1,1),5)
wave("Add",root.CFrame*CFrame.Angles(math.rad(0),0,0),Vector3.new(100,0,100),5)
ring("Add",root.CFrame*CFrame.Angles(math.rad(90),0,0),Vector3.new(1,1,100),7.5)
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
scaler2 = scaler2 - 0.01*3
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, 0, scaler2)
end
rng:Destroy()
end))
attack = false
hum.WalkSpeed = currentws
end

--- Above is skillmoves to function.
--- I swear im watching you.
--- Dont leak this one...
-------------- Attack Combo Section -------------

function attackone()
attack = true
for i = 0,2,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),0.2)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-90)),.2)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.2)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
	end

local a = Instance.new("Part",Character)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = bc("Bright red")
a.Material = "Neon"
a.Transparency = 1
	a.CanCollide = false
	local ray = Ray.new(
	    sorb.CFrame.p,                           -- origin
	    (mouse.Hit.p - sorb.CFrame.p).unit * 500 -- direction
	) 
	local ignore = Character
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	local distance = (root.CFrame.p - position).magnitude
	a.Size = Vector3.new(0.1, 0.1, 0.1)
	a.CFrame = CFrame.new(sorb.CFrame.p, position) * CFrame.new(0, 0, 0)
				 local lb = Instance.new("Part")
				CFuncs["Sound"].Create("rbxassetid://260433721", lb, 1, 1)
  lb.Parent = char
    lb.BrickColor = origcolor
     lb.CanCollide = false
lb.Material = "Neon"
     lb.Anchored = true
lb.TopSurface = 0
        lb.BottomSurface = 0
     lb.Transparency = 0
     lb.Size = vt(2,2,2)
     lb.CFrame = a.CFrame
lb.Anchored = false
local thingery = Instance.new("SpecialMesh",lb)
     thingery.MeshType = "Sphere"
game:GetService("Debris"):AddItem(lb, 5)
  local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = a.CFrame.lookVector*100
  bv.Parent = lb
local hitted = false
game:GetService("Debris"):AddItem(a, 0.1)
coroutine.resume(coroutine.create(function()
while wait(0.5) do
if hitted == false or lb.Parent ~= nil then
wave("Divide",lb.CFrame*CFrame.Angles(math.rad(90),0,0),Vector3.new(1,0.05,1),10)
end
if hitted == true or lb.Parent == nil then
break
end
end
end))
wait(0.01)
lb.Touched:connect(function(hit) 
Damagefunc(lb, hit, 522, 12, 0, "Normal", RootPart, 0.3, "588733541", 0.8)
end)
attack = false
end

function attacktwo()
attack = true
for i = 0,2,0.1 do
MagicBlock(origcolor,sorb2.CFrame,1,1,1,0.1,0.1,0.1,0.25)
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-90)),0.2)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(90)),.2)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.2)
	end

local a = Instance.new("Part",Character)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = bc("Bright red")
a.Material = "Neon"
a.Transparency = 1
	a.CanCollide = false
	local ray = Ray.new(
	    sorb2.CFrame.p,                           -- origin
	    (mouse.Hit.p - sorb2.CFrame.p).unit * 500 -- direction
	) 
	local ignore = Character
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	local distance = (root.CFrame.p - position).magnitude
	a.Size = Vector3.new(0.1, 0.1, 0.1)
	a.CFrame = CFrame.new(sorb2.CFrame.p, position) * CFrame.new(0, 0, 0)
				 local lb = Instance.new("Part")
				CFuncs["Sound"].Create("rbxassetid://260433721", lb, 1, 1)
  lb.Parent = char
    lb.BrickColor = origcolor
     lb.CanCollide = false
lb.Material = "Neon"
     lb.Anchored = true
lb.TopSurface = 0
        lb.BottomSurface = 0
     lb.Transparency = 0
     lb.Size = vt(2,2,2)
     lb.CFrame = a.CFrame
lb.Anchored = false
local thingery = Instance.new("SpecialMesh",lb)
     thingery.MeshType = "Sphere"
game:GetService("Debris"):AddItem(lb, 5)
  local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = a.CFrame.lookVector*100
  bv.Parent = lb
local hitted = false
game:GetService("Debris"):AddItem(a, 0.1)
coroutine.resume(coroutine.create(function()
while wait(0.5) do
if hitted == false or lb.Parent ~= nil then
wave("Divide",lb.CFrame*CFrame.Angles(math.rad(90),0,0),Vector3.new(1,0.05,1),10)
end
if hitted == true or lb.Parent == nil then
break
end
end
end))
wait(0.01)
lb.Touched:connect(function(hit) 
Damagefunc(lb, hit, 522, 120, 0, "Normal", RootPart, 0.3, "588733541", 0.8)
end)
attack = false
end


function attackthree()
	attack = true
	for i = 0,1,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),0.1)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(0)),.1)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(90)), 0.1)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-90)), 0.1)
	end
CFuncs["Sound"].Create("rbxassetid://138079095", root, 0.5, 0.4)
CFuncs["Sound"].Create("rbxassetid://154723542", root, 1.5, 1.15)
coroutine.resume(coroutine.create(function()
for i = 0, 4 do
wait(0.1)
MagniDamage(root, 222, 522,1222, 0, "Normal")
wind("Divide",root.CFrame*CFrame.Angles(0,math.rad(math.random(-360,360)),0),Vector3.new(1,1,1),math.random(1,2),5)
end
end))
	for i = 0,1,0.5 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),0.5)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.5)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.5)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.5)
	end
	for i = 0,1,0.5 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(180)),0.5)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.5)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.5)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.5)
	end
	for i = 0,1,0.5 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(270)),0.5)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.5)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.5)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.5)
	end
	for i = 0,1,0.5 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(360)),0.5)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.5)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.5)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.5)
	end
	attack = false
end


function attackfour()
local currentws = hum.WalkSpeed
hum.WalkSpeed = 0
dashing = true
attack = true
for i = 0,2,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-5),math.rad(0),math.rad(0)),0.1)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(0)),.1)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(10)), 0.1)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.1)
RH.C0=clerp(RH.C0,cf(1,-0.35,-0.65)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.1)
	end
for i = 0,1,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(0)),0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(0)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(20)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,-0.65)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(5)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
	end
MagniDamage(root, 150, 90,130, 0, "Normal")
CFuncs["Sound"].Create("rbxassetid://142070127", root, 0.25, 1.15)
CFuncs["Sound"].Create("rbxassetid://157878578", root, 1, 1.25)
wave("Divide",rleg.CFrame*CFrame.Angles(math.rad(0),0,0),Vector3.new(1,0.1,1),3.5)
ring("Divide",rleg.CFrame*CFrame.Angles(math.rad(90),0,0),Vector3.new(1,1,25),1.5)
dashing = false
attack = false
hum.WalkSpeed = currentws
end

-- Functions are ready.

local attacktype = 1
mouse.Button1Down:connect(function()
  if attack == false and attacktype == 1 then
    attacktype = 2
    attackone()
  elseif attack == false and attacktype == 2 then
    attacktype = 3
    attacktwo()
  elseif attack == false and attacktype == 3 then
    attacktype = 4
    attackthree()
  elseif attack == false and attacktype == 4 then
    attacktype = 1
    attackfour()
  end
end)
mouse.KeyDown:connect(function(k)
        if k == "z" and attack == false then
                first()
        end
        if k == "x" and attack == false then
                dash()
        end
        if k == "c" and attack == false then
                Spiraling()
        end
        if k == "v" and attack == false then
                SkyBeam()
        end
end)
Humanoid.Animator.Parent = nil
idleanim=.4
while true do
swait()
MagicBlock(origcolor,sorb.CFrame,1,1,1,0.1,0.1,0.1,0.25)
  sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-20)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(20)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 25))*angles(math.rad(-10),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-5),math.rad(0),math.rad(25)),.1)
LW.C0=clerp(LW.C0,cf(-1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-5),math.rad(0),math.rad(-25)),.1)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-20)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(20)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 25))*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-20),math.rad(0),math.rad(50)),.1)
LW.C0=clerp(LW.C0,cf(-1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-20),math.rad(0),math.rad(-50)),.1)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if dashing == false then
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.1)
end
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 25))*angles(math.rad(0),math.rad(0),math.rad(40)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5 - 2.5 * math.cos(sine / 25)),math.rad(0),math.rad(-40)),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(2.5),math.rad(0),math.rad(20 - 0.5 * math.cos(sine / 25))),.1)
LW.C0=clerp(LW.C0,cf(-1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-2.5),math.rad(0),math.rad(-10 + 1.5 * math.cos(sine / 25))),.1)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if dashing == false then
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 25 * math.cos(sine / 12.5))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 25 * math.cos(sine / 12.5))),.1)
end
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(0 - 10 * math.cos(sine / 12.5))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5),math.rad(0),math.rad(0 + 10 * math.cos(sine / 12.5))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0 - 40 * math.cos(sine / 12.5)),math.rad(0),math.rad(10)),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0 + 40 * math.cos(sine / 12.5)),math.rad(0),math.rad(-10)),.1)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if dashing == false then
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 75 * math.cos(sine / 3))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 75 * math.cos(sine / 3))),.3)
end
if attack==false then
	          RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-0.25 + 0.05 * math.cos(sine / 32))* angles(math.rad(35),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-50),math.rad(-60),math.rad(25)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-50),math.rad(0),math.rad(-25)),.3)
end
end
end
end
