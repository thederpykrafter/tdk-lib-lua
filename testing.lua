#!/usr/bin/env lua
require "tdk"

-- local list_files = {
-- 	cmd = "ls",
-- 	out = "",
-- 	rc = "",
-- }

local cmd = "ls ~"
local out, rc = os.capture(cmd)

print("CMD: <" .. cmd)
print("OUT: " .. out)
print("RC:" .. rc)

EnterBuffer()
Cprint("46", "94", "using quotes for Cprint")
Cprint(46, 93, "using integers for Cprint")
Sleep(6)
ExitBuffer()
