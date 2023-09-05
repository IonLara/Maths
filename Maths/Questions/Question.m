//
//  AdditionQuestion.m
//  Maths
//
//  Created by Ion Sebastian Rodriguez Lara on 31/08/23.
//

#import "Question.h"

@implementation Question

- (NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval) answerTime {
    return round([_endTime timeIntervalSinceDate:_startTime]);
}

- (instancetype) init
{
    self = [super init];
    
    if(self)
    {
        _startTime = [NSDate date];
        
        _leftValue = arc4random_uniform(91) + 10;
        _rightValue = arc4random_uniform(91) + 10;
        
        _question = [NSString stringWithFormat:@"%ld + %ld = ?",(long)_leftValue, (long)_rightValue];
        _answer = (_leftValue + _rightValue);
    }
    return self;
}

- (void) generateQuestion {}

@end
