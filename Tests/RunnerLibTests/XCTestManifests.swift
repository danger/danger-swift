import XCTest

extension CliParserTests {
    static let __allTests = [
        ("testItReturnsNilIfTheJSONDoesntContainCliArgs", testItReturnsNilIfTheJSONDoesntContainCliArgs),
        ("testItReturnsTheCliArgsIfTheJSONIsCorrect", testItReturnsTheCliArgsIfTheJSONIsCorrect),
        ("testItReturnsTheCliArgsIfTheJSONIsCorrectButDoesntContainAllTheFields", testItReturnsTheCliArgsIfTheJSONIsCorrectButDoesntContainAllTheFields),
    ]
}

extension CreateConfigTests {
    static let __allTests = [
        ("testItCreatesTheCorrectConfig", testItCreatesTheCorrectConfig),
    ]
}

extension DangerCommandTests {
    static let __allTests = [
        ("testItReturnsTheCorrectCommandsListText", testItReturnsTheCorrectCommandsListText),
    ]
}

extension DangerFileGeneratorTests {
    static let __allTests = [
        ("testItGeneratesTheCorrectFileWhenOneOfTheImportedFilesIsMissing", testItGeneratesTheCorrectFileWhenOneOfTheImportedFilesIsMissing),
        ("testItGeneratesTheCorrectFileWhenThereAreNoImports", testItGeneratesTheCorrectFileWhenThereAreNoImports),
        ("testItGeneratesTheCorrectFileWhenThereIsAreMultipleImports", testItGeneratesTheCorrectFileWhenThereIsAreMultipleImports),
        ("testItGeneratesTheCorrectFileWhenThereIsASingleImport", testItGeneratesTheCorrectFileWhenThereIsASingleImport),
    ]
}

extension DangerJSVersionFinderTests {
    static let __allTests = [
        ("testItSendsTheCorrectCommandAndReturnsTheCorrectResult", testItSendsTheCorrectCommandAndReturnsTheCorrectResult),
    ]
}

extension DangerfilePathFinderTests {
    static let __allTests = [
        ("testItReturnsNilIfTheArgumentsDoesntContainTheDangerfileArg", testItReturnsNilIfTheArgumentsDoesntContainTheDangerfileArg),
        ("testItReturnsTheCorrectPathIfTheArgumentsContainsTheDangerfileArg", testItReturnsTheCorrectPathIfTheArgumentsContainsTheDangerfileArg),
    ]
}

extension GetDangerJSPathTests {
    static let __allTests = [
        ("testItSearchesForDangerJSIfTheDangerJSPathOptionIsNotPresent", testItSearchesForDangerJSIfTheDangerJSPathOptionIsNotPresent),
        ("testItUsesTheDangerJSPathOptionIfPresent", testItUsesTheDangerJSPathOptionIfPresent),
    ]
}

extension HelpMessagePresenterTests {
    static let __allTests = [
        ("testIsShowsTheCommandListWhenThereIsNoCommand", testIsShowsTheCommandListWhenThereIsNoCommand),
    ]
}

extension ImportsFinderTests {
    static let __allTests = [
        ("testItRetunsAnEmptyListWhenThePassedStringDoesntContainImports", testItRetunsAnEmptyListWhenThePassedStringDoesntContainImports),
        ("testItRetunsTheCorrectFilePathsWhenThePassedStringContainsImports", testItRetunsTheCorrectFilePathsWhenThePassedStringContainsImports),
    ]
}

extension SPMDangerTests {
    static let __allTests = [
        ("testItAcceptsAnythingStartsWithDangerDeps", testItAcceptsAnythingStartsWithDangerDeps),
        ("testItBuildsTheDependencies", testItBuildsTheDependencies),
        ("testItReturnsFalseWhenThePackageHasNotTheDangerLib", testItReturnsFalseWhenThePackageHasNotTheDangerLib),
        ("testItReturnsFalseWhenThereIsNoPackage", testItReturnsFalseWhenThereIsNoPackage),
        ("testItReturnsTheCorrectSwiftcDepsImport", testItReturnsTheCorrectSwiftcDepsImport),
        ("testItReturnsTheCorrectXcodeDepsFlagsWhenThereIsNoDangerLib", testItReturnsTheCorrectXcodeDepsFlagsWhenThereIsNoDangerLib),
        ("testItReturnsTheCorrectXcodeDepsFlagsWhenThereIsTheDangerLib", testItReturnsTheCorrectXcodeDepsFlagsWhenThereIsTheDangerLib),
        ("testItReturnsTrueWhenThePackageHasTheDangerLib", testItReturnsTrueWhenThePackageHasTheDangerLib),
    ]
}

#if !os(macOS)
    public func __allTests() -> [XCTestCaseEntry] {
        return [
            testCase(CliParserTests.__allTests),
            testCase(CreateConfigTests.__allTests),
            testCase(DangerCommandTests.__allTests),
            testCase(DangerFileGeneratorTests.__allTests),
            testCase(DangerJSVersionFinderTests.__allTests),
            testCase(DangerfilePathFinderTests.__allTests),
            testCase(GetDangerJSPathTests.__allTests),
            testCase(HelpMessagePresenterTests.__allTests),
            testCase(ImportsFinderTests.__allTests),
            testCase(SPMDangerTests.__allTests),
        ]
    }
#endif
