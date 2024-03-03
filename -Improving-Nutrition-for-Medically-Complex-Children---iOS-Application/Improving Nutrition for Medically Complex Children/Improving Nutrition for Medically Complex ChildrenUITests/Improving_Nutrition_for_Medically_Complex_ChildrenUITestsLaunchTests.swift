//
//  Improving_Nutrition_for_Medically_Complex_ChildrenUITestsLaunchTests.swift
//  Improving Nutrition for Medically Complex ChildrenUITests
//
//  Created by Gill on 2024-03-01.
//

import XCTest

final class Improving_Nutrition_for_Medically_Complex_ChildrenUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
