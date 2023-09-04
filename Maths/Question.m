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
        
        NSInteger num1 = arc4random_uniform(91) + 10;
        NSInteger num2 = arc4random_uniform(91) + 10;
        
        _question = [NSString stringWithFormat:@"%ld + %ld = ?",(long)num1, (long)num2];
        _answer = (num1 + num2);
    }
    return self;
}

@end
