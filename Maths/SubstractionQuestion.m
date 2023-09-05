//
//  SubstractionQuestion.m
//  Maths
//
//  Created by Ion Sebastian Rodriguez Lara on 03/09/23.
//

#import "SubstractionQuestion.h"

@implementation SubstractionQuestion

-(instancetype) init {
    self = [super init];
    
    if(self) {
        [self generateQuestion];
    }
    return self;
}

-(void) generateQuestion {
    super.question = [NSString stringWithFormat:@"%ld - %ld = ?",(long)super.leftValue, (long)super.rightValue];
    super.answer = (super.leftValue - super.rightValue);
}

@end
