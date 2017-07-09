--
-- Created by IntelliJ IDEA.
-- User: chen0
-- Date: 9/7/2017
-- Time: 10:12 AM
-- To change this template use File | Settings | File Templates.
--

describe('BreadthFirstSearch()', function()
    local g = require('data.graph').create(6)
    g:addEdge(0, 5);
    g:addEdge(2, 4);
    g:addEdge(2, 3);
    g:addEdge(1, 2);
    g:addEdge(0, 1);
    g:addEdge(3, 4);
    g:addEdge(3, 5);
    g:addEdge(0, 2);
    local bfs = require('search.BreadthFirstSearch').create()
    local s = 0
    bfs:run(g, s)

    for v = 0, g.V-1 do
        if v ~= s and bfs:hasPathTo(v) then
            local path = bfs:getPathTo(v)
            local pathText = ''
            while path:isEmpty() == false do
                local x = path:pop()
                if pathText == '' then
                    pathText = pathText .. x
                else
                    pathText = pathText .. ' -> ' .. x
                end
            end
            print(pathText)

        end
    end


end)

