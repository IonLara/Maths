//
//  AdditionQuestion.m
//  Maths
//
//  Created by Ion Sebastian Rodriguez Lara on 31/08/23.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype) init
{
    self = [super init];
    
    if(self)
    {
        NSInteger num1 = arc4random_uniform(91) + 10;
        NSInteger num2 = arc4random_uniform(91) + 10;
        
        _question = [NSString stringWithFormat:@"%ld + %ld = ?",(long)num1, (long)num2];
        _answer = (num1 + num2);
    }
    return self;
}

@end
