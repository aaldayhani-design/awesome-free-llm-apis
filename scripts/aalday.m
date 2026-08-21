//
//  aalday.m
//  
//
//  Created by عبدالله فهد الديحاني on 01/10/2026.
//

#import <XCTest/XCTest.h>

@interface aalday : XCTestCase

@end

@implementation aalday

+ (BOOL)runsForEachTargetApplicationUIConfiguration {
    return YES;
}

- (void)setUp {
    self.continueAfterFailure = NO;
}

- (void)testLaunch {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app launch];

    // Insert steps here to perform after app launch but before taking a screenshot,
    // such as logging into a test account or navigating somewhere in the app
    // XCUIAutomation Documentation
    // https://developer.apple.com/documentation/xcuiautomation

    XCTAttachment *attachment = [XCTAttachment attachmentWithScreenshot:XCUIScreen.mainScreen.screenshot];
    attachment.name = @"Launch Screen";
    attachment.lifetime = XCTAttachmentLifetimeKeepAlways;
    [self addAttachment:attachment];
}

@end
