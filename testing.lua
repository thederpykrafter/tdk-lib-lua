#!/usr/bin/env lua
require "command"
--- testing
cmd = "ls ~"
out = os.capture(cmd)
rc = os.capture("echo $?")

print("Command: <" .. cmd .. "> exited with code " .. rc)
print("Output: " .. out)
