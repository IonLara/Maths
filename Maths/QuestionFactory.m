//
//  QuestionFactory.m
//  Maths
//
//  Created by Ion Sebastian Rodriguez Lara on 04/09/23.
//

#import "QuestionFactory.h"
#import "Question.h"
#import "AdditionQuestion.h"
#import "SubstractionQuestion.h"
#import "DivisionQuestion.h"
#import "MultiplicationQuestion.h"

@implementation QuestionFactory

-(Question*) generateQuestion {
    NSArray *questionSubclasses = @[@"AdditionQuestion",@"SubstractionQuestion",@"DivisionQuestion",@"MultiplicationQuestion"];
    NSInteger index = arc4random_uniform(4);
    return [[NSClassFromString(questionSubclasses[index]) alloc] init];
}

@end
