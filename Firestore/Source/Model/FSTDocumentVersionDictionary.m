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

#import "FSTDocumentVersionDictionary.h"

#import "FSTDocumentKey.h"
#import "FSTSnapshotVersion.h"

NS_ASSUME_NONNULL_BEGIN

@implementation FSTImmutableSortedDictionary (FSTDocumentVersionDictionary)

+ (instancetype)documentVersionDictionary {
  static FSTDocumentVersionDictionary *singleton;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    singleton = [FSTDocumentVersionDictionary dictionaryWithComparator:FSTDocumentKeyComparator];
  });
  return singleton;
}

@end

NS_ASSUME_NONNULL_END
