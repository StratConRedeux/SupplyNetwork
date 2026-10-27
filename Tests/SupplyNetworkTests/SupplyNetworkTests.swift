import Testing
@testable import SupplyNetwork

@Test func reachableFollowsEdges() {
    let edges: [String: Set<String>] = ["a": ["b"], "b": ["a", "c"], "c": ["b"], "d": []]
    #expect(SupplyNetwork.reachable(from: ["a"], edges: edges) == ["a", "b", "c"])
}
