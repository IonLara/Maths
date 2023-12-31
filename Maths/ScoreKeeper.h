//
//  ScoreKeeper.h
//  Maths
//
//  Created by Ion Sebastian Rodriguez Lara on 31/08/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject

@property (nonatomic, readwrite) NSInteger rights;
@property (nonatomic, readwrite) NSInteger wrongs;

- (void)getScore;

@end

NS_ASSUME_NONNULL_END
