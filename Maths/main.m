//
//  main.m
//  Maths
//
//  Created by Ion Sebastian Rodriguez Lara on 31/08/23.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Welcome to Maths!");
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        while (true)
        {
            //Get question:
            AdditionQuestion *addQuest = [[AdditionQuestion alloc] init];
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
        }
    }
    return 0;
}
