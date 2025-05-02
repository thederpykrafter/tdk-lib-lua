function EnterBuffer() print("\x1b[?1049h") end

function ExitBuffer() print("\x1b[?1049l") end

function Sleep(seconds)
	local time = tonumber(os.clock() + seconds)
	while os.clock() < time do
	end
end

function Cprint(fg, bg, text)
	local fg_c = "\x1b[" .. fg .. "m"
	local bg_c = "\x1b[" .. bg .. "m"
	local text_c = text .. "\x1b[m"

	print(fg_c .. bg_c .. text_c)
end

EnterBuffer()
Cprint("46", "94", "Fuck")
Sleep(6)
ExitBuffer()
