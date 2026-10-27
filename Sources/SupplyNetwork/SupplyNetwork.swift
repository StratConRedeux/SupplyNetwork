/// Finds which nodes are connected to a set of sources through an undirected graph.
public enum SupplyNetwork {
    /// Returns every node reachable from `sources` by following `edges`.
    public static func reachable<Node: Hashable>(
        from sources: Set<Node>,
        edges: [Node: Set<Node>]
    ) -> Set<Node> {
        var visited = sources
        var frontier = Array(sources)
        while let node = frontier.popLast() {
            for next in edges[node, default: []] where visited.insert(next).inserted {
                frontier.append(next)
            }
        }
        return visited
    }
}
