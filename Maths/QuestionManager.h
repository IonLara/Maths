//
//  QuestionManager.h
//  Maths
//
//  Created by Ion Sebastian Rodriguez Lara on 03/09/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject

@property(nonatomic, readwrite) NSMutableArray* questions;
- (instancetype)init;
- (NSString*) timeOutput;

@end

NS_ASSUME_NONNULL_END
