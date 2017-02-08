-- create a binary tree from user input return tree
-- and print it out
function binarytree()
    root = {d=0}
    i = tonumber(io.read())
    while i do
        local node = root
        local d = node.d
        while node.v do
            if i < node.v then
                node = node.left
            else
                node = node.right
            end
            d = d + 1
        end
        node.left={}
        node.right={}
        node.v=i
        node.d= d + 1
        i = tonumber(io.read())
    end
    return root
end

function bfs(root)
    if not root then
        return
    end
    local queue = {}
    local i,j,d = 1,2,0
    queue[i] = root
    while i < j do
        local node = queue[i]
        if d < node.d then
            io.write('\n')
            d = node.d
        else
            io.write(' ')
        end
        io.write(node.v)
        if node.left.v then 
            queue[j] = node.left
            j = j + 1
        end
        if node.right.v then
            queue[j] = node.right
            j = j + 1
        end
        i = i + 1
    end
end

bfs(binarytree())
