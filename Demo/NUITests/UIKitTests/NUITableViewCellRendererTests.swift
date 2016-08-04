//
//  NUITableViewCellRendererTests.swift
//  NUIDemo
//
//  Created by Sergej Jaskiewicz on 04/08/16.
//  Copyright © 2016 Tom Benner. All rights reserved.
//

import XCTest
@testable import NUIDemo

class NUITableViewCellRendererTests: XCTestCase {
    
    var sut: UITableViewCell!
    
    override func setUp() {
        super.setUp()
        NUISettings.initWithStylesheet("TestTheme.NUI")
        self.sut = UITableViewCell(style: .default, reuseIdentifier: "test")
        sut.applyNUI()
    }
    
    override func tearDown() {
        self.sut = nil
        super.tearDown()
    }
    
    func testContentViewBackgroundColor() {
        XCTAssertEqual(self.sut.contentView.backgroundColor, .orange, "NUI should set content view background color")
    }
    
    func testTintColor() {
        XCTAssertEqual(sut.tintColor, .green, "NUI should set tintColor")
    }
}
