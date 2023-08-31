//
//  ScoreKeeper.m
//  Maths
//
//  Created by Ion Sebastian Rodriguez Lara on 31/08/23.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (void)getScore
{
    NSInteger percentage = (100 * _rights)/(_rights + _wrongs);
    NSLog(@"Score: %ld right, %ld wrong ---- %ld%%",_rights, _wrongs, (long)percentage);
}

@end
