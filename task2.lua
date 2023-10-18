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
local function a()
    print("function id: a")
end

local function b()
    print("function id: b")
    local function c()
        print("function id: c")
    end
end

return nil
