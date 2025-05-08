-- Execute shell command and capture output
---@param cmd string shell command
---@param raw? boolean true to disable formatting
---@return string, integer
function os.capture(cmd, raw)
	local f = assert(io.popen(cmd, "r"))
	local s = assert(f:read("*a"))
	local rc = { f:close() }
	if raw then return s, rc[3] end

	-- Formatting
	s = string.gsub(s, "^%s+", "")
	s = string.gsub(s, "%s+$", "")
	s = string.gsub(s, "[\n\r]+", " ")
	return s, rc[3]
end
