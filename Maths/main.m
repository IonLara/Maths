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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Welcome to Maths!");
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        while (true)
        {
            //Get question:
            Question *addQuest = [[Question alloc] init];
            [questionManager.questions addObject:addQuest];
            NSLog(addQuest.question);
            
            //Get user Input
//            char inputChar[255];
//            fgets(inputChar, 255, stdin);
//            NSString *inputString = [NSString stringWithUTF8String:inputChar];
//            NSCharacterSet *newlineCharacterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
            NSString *parsedString = [InputHandler receiveInput];
//
            //Check answer
            if([parsedString isEqualToString: @"quit"])
            {
                break;
            } else
            {
                NSInteger num = [parsedString integerValue];
                
                if (num == addQuest.answer)
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
