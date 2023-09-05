//
//  QuestionFactory.h
//  Maths
//
//  Created by Ion Sebastian Rodriguez Lara on 04/09/23.
//

#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionFactory : NSObject
-(Question*) generateQuestion;
@end

NS_ASSUME_NONNULL_END
