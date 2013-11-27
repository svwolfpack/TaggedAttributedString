//
//  TASColorTag.m
//  Tagged Attributed String
//
//  Created by Samuel Voigt on 12/23/13.
//  Copyright (c) 2013 Sam Voigt. All rights reserved.
//

#import "TASColorTag.h"
#import "TASColorParser.h"

@implementation TASColorTag

- (NSString *)tagParsingClassName
{
    return NSStringFromClass([TASColorParser class]);
}

@end
