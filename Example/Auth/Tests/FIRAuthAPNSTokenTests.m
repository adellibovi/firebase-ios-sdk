/*
 * Copyright 2017 Google
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import <XCTest/XCTest.h>

#import "FIRAuthAPNSToken.h"

NS_ASSUME_NONNULL_BEGIN

/** @class FIRAuthAPNSTokenTests
    @brief Unit tests for @c FIRAuthAPNSToken .
 */
@interface FIRAuthAPNSTokenTests : XCTestCase
@end
@implementation FIRAuthAPNSTokenTests

/** @fn testInitializer
    @brief Tests the initializer of the class.
 */
- (void)testInitializer {
  NSData *data = [@"asdf" dataUsingEncoding:NSUTF8StringEncoding];
  FIRAuthAPNSToken *token = [[FIRAuthAPNSToken alloc] initWithData:data
                                                              type:FIRAuthAPNSTokenTypeProd];
  XCTAssertEqualObjects(token.data, data);
  XCTAssertEqual(token.type, FIRAuthAPNSTokenTypeProd);
}

@end

NS_ASSUME_NONNULL_END