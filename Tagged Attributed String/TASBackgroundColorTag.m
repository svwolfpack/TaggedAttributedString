//
//  TASBackgroundColorTag.m
//  Tagged Attributed String
//
//  Created by Samuel Voigt on 12/23/13.
//  Copyright (c) 2013 Sam Voigt. All rights reserved.
//

#import "TASBackgroundColorTag.h"

@implementation TASBackgroundColorTag

- (TASAttribute *)attributeForTag
{
    return [TASAttribute TASAttributeWithKey:NSBackgroundColorAttributeName
                                       value:self.color
                                       range:[self rangeForTag]];
}

@end
