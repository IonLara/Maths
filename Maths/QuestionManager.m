//
//  QuestionManager.m
//  Maths
//
//  Created by Ion Sebastian Rodriguez Lara on 03/09/23.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype)init {
    self = [super init];
    
    _questions = [[NSMutableArray alloc] init];
    
    return self;
}
- (NSString*) timeOutput {
    NSInteger total = 0;
    NSInteger average = 0;
    for (Question *obj in _questions) {
      total += [obj answerTime];
    }
    average = (total / _questions.count);
    return [NSString stringWithFormat:@"Total Time: %ld, Average Time: %ld", total, average];
}

@end
