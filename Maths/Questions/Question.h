//
//  AdditionQuestion.h
//  Maths
//
//  Created by Ion Sebastian Rodriguez Lara on 31/08/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject

@property(nonatomic, readwrite) NSString* question;
@property(nonatomic, readwrite) NSInteger answer;
@property(nonatomic, readwrite) NSDate *startTime;
@property(nonatomic, readwrite) NSDate *endTime;

@property(nonatomic, readwrite) NSInteger leftValue;
@property(nonatomic, readwrite) NSInteger rightValue;

- (NSTimeInterval) answerTime;


@end

NS_ASSUME_NONNULL_END
