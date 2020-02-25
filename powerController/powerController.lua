local os = require "os"
local component = require "component"
local cell = component.energy_device
local red = component.redstone
function obtainPower ()
  return ((cell.getEnergyStored()/cell.getMaxEnergyStored())*100)
end
local loop = true
repeat
  if obtainPower() <= 70 then
    red.setOutput(15)
  elseif obtainPower() >= 90 then
    red.setOutput(0)
  end
until loop != true
