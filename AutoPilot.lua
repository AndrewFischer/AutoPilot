-- assign logical name to macro keyboard
lmc_assign_keyboard('AUTOPILOT');

-- define callback for whole device
lmc_set_handler('AUTOPILOT',function(button, direction)
  if (direction == 1) then return end  -- ignore down
  if     (button == 13) then lmc_xpl_command('sim/autopilot/altitude_down')  -- Enter  either one --
  elseif (button == 37) then lmc_xpl_command('sim/autopilot/heading_down')   -- Upper Rotary ccw --
  elseif (button == 39) then lmc_xpl_command('sim/autopilot/heading_up')     -- Upper Rotary cw --
  elseif (button == 96) then lmc_xpl_command('sim/autopilot/servos_toggle')  -- Auto Pilot --
  elseif (button == 97) then lmc_xpl_command('sim/autopilot/autothrottle_toggle')  -- IAS --
  elseif (button == 98) then lmc_xpl_command('sim/autopilot/nose_down')	-- DN This should be VVI down if the AP supports it--
  elseif (button == 99) then lmc_xpl_command('sim/autopilot/nose_up')	-- UP --
  elseif (button == 100) then lmc_xpl_command('sim/autopilot/altitude_hold')	-- ALT --
  elseif (button == 101) then lmc_xpl_command('sim/autopilot/level_change')	-- LVL CHG --
  elseif (button == 102) then lmc_xpl_command('sim/autopilot/vertical_speed')	-- V/S --
  elseif (button == 103) then lmc_xpl_command('sim/autopilot/heading')   -- HDG --
  elseif (button == 104) then lmc_xpl_command('sim/autopilot/NAV') -- NAV --
  elseif (button == 105) then lmc_xpl_command('sim/autopilot/altitude_arm')  -- ATL SEL --
  elseif (button == 106) then lmc_xpl_command('sim/systems/yaw_damper_toggle') -- Uppper rotary push --
  elseif (button == 107) then lmc_xpl_command('sim/autopilot/altitude_up')   -- + key --
  elseif (button == 109) then lmc_xpl_command('sim/annunciator/clear_master_caution')	-- Lower rotary push --

  else lmc_xpl_text('LUA Button not assigned.') 
  end
end)

