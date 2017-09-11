--
-- Created by IntelliJ IDEA.
-- User: chen0
-- Date: 20/8/2017
-- Time: 3:02 PM
-- To change this template use File | Settings | File Templates.
--

local network = {}
network.__index = network

network.FlowEdge = {}
network.FlowEdge.__index = network.FlowEdge

network.FlowNetwork = {}
network.FlowNetwork.__index = network.FlowNetwork

function network.FlowEdge.create(v, w, capacity)
    local s = {}
    setmetatable(s, network.FlowEdge)

    s.v = v
    s.w = w
    s.capacity = capacity
    s.flow = 0
    return s
end

function network.FlowNetwork.create(V)
    local s = {}
    setmetatable(s, network.FlowNetwork)

    s.V = V
    s.adjList = {}
    for v = 0,V-1 do
        s.adjList[v] = require('data.list').create()
    end
    return s
end

function network.FlowNetwork:addEdge(v, w, capacity)
    local e = network.FlowEdge.create(v, w, capacity)
    self.adjList[e.v] = e
    self.adjList[e.w] = e
end

function network.FlowNetwork:adj(v)
    return self.adjList[v]
end

function network.FlowEdge:residualCapacityTo(x)
    if x == self.v then
        return self.flow
    else
        return self.capacity - self.flow
    end
end

function network.FlowEdge:addFlowTo(x, inc)
    if x == self.v then
        self.flow = self.flow - inc
    else
        self.flow = self.flow + inc
    end

end

return network

