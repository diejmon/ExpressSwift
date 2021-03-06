#if !canImport(ObjectiveC)
import XCTest

extension LayerTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__LayerTests = [
        ("testLayerByMethod", testLayerByMethod),
        ("testLayerByPath", testLayerByPath),
    ]
}

extension RouterPerformanceTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__RouterPerformanceTests = [
        ("testCaseSensitivePerformance", testCaseSensitivePerformance),
    ]
}

extension RouterTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__RouterTests = [
        ("testDeepRouter", testDeepRouter),
        ("testInnerRouter", testInnerRouter),
        ("testRouter", testRouter),
        ("testRouter2", testRouter2),
        ("testWideRouter", testWideRouter),
        ("testWithParameters", testWithParameters),
    ]
}

public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(LayerTests.__allTests__LayerTests),
        testCase(RouterPerformanceTests.__allTests__RouterPerformanceTests),
        testCase(RouterTests.__allTests__RouterTests),
    ]
}
#endif
