--example1
--[[
В первом примере вызов функций будет давать разный результат.
Ключи в таблице могут указывать на разные функции, 
которые могут быть определены по-разному.
]]--
local H = {}

H.getRequestParametr = function(arg) return "200" end
H.GetRequestParametr = function(arg) return "404" end

print("Example 1")
print(H.getRequestParametr("foo"))
print(H.GetRequestParametr("foo"))

T = nil
T = {handler = function(arg) return "400" end}

T.getRequestParametr = T.handler
T.GetRequestParametr = T.handler

print("Example2")
print(T.getRequestParametr("foo"))
print(T.GetRequestParametr("foo"))