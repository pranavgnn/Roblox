-- Player Kill Script, by pranvexploder
-- Place it in StarterPlayer > StarterCharacterScripts

local hitbox = script.Parent:FindFirstChild("Hitbox") or script.Parent:WaitForChild("Hitbox")

for _,p in pairs(hitbox:GetDescendants()) do
	if not p:IsA("BasePart") then continue end
	p.Touched:Connect(function(hit)
		if not hit:FindFirstChild("KillPartObject") then return end
		local hum = script.Parent:FindFirstChild("Humanoid")
		if not hum then return end
		hum.Health = 0
	end)
end
