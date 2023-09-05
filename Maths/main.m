//
//  main.m
//  Maths
//
//  Created by Ion Sebastian Rodriguez Lara on 31/08/23.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSLog(@"Welcome to Maths!");
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        QuestionFactory *factory = [[QuestionFactory alloc] init];
        while (true)
        {
            //Get question:
            Question *quest = [factory generateQuestion];
            [questionManager.questions addObject:quest];
            NSLog(quest.question);
            
            //Get user Input
            NSString *parsedString = [InputHandler receiveInput];

            //Check answer
            if([parsedString isEqualToString: @"quit"])
            {
                break;
            } else
            {
                NSInteger num = [parsedString integerValue];
                
                if (num == quest.answer)
                {
                    NSLog(@"Correct!");
                    score.rights++;
                } else
                {
                    NSLog(@"Wrong!");
                    score.wrongs++;
                }
            }
            [score getScore];
            NSLog([questionManager timeOutput]);
        }
    }
    return 0;
}
