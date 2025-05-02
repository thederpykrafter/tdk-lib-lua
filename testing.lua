#!/usr/bin/env lua
require "tdk"

local cmd = "ls ~"
local out = os.capture(cmd)
local rc = os.capture("echo $?")

print("Cmd: <" .. cmd)
print("Out: " .. out)
print("Ret:" .. rc)
Cprint(46, 93, "Hello")
