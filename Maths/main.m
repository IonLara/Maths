//
//  main.m
//  Maths
//
//  Created by Ion Sebastian Rodriguez Lara on 31/08/23.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Welcome to Maths!");
        while (true)
        {
            //Get question:
            
            
            //Get user Input
            char inputChar[255];
            fgets(inputChar, 255, stdin);
            NSString *inputString = [NSString stringWithUTF8String:inputChar];
            NSCharacterSet *newlineCharacterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
            NSString *parsedString = [inputString stringByTrimmingCharactersInSet:newlineCharacterSet];
            
        }
    }
    return 0;
}
