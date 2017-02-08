-- Create a linked list from user input
-- print each element of linked list
local list={}
local root = list
print "input a number"
i = tonumber(io.read())
while i do
    print "input a number"
    list.n={}
    list.v=i
    list = list.n
    i = tonumber(io.read())
end
list = root
while list.v do
    print (list.v)
    list = list.n
end
