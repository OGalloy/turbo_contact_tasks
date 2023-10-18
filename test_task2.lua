--[[загрузка модуля task2 через require и loadfile не даст результатов.
Для получения доступа к функциям функция b дожна быть глобальной 
в модуле task2 или должна возврашаться в таблице в конце модуля
Пример: return {b = b}
И вложенная фукция c должна быть глобальной для того тобы её можно было вызвать
из фукции b
Или функция b должна выглядеть так:
local function b()
	local function c()
	end
	return c()
end
]]--

local env = {}
local task2 = loadfile('task2.lua')
setfenv(task2, env)
task2()
for k, v in pairs(env) do print(k, v) end



