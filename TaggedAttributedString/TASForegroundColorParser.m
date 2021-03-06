//
//  TASForegroundColorParser.m
//  Tagged Attributed String
//
//  Created by Samuel Voigt on 1/3/14.
//  Copyright (c) 2014 Sam Voigt. All rights reserved.
//

#import "TASForegroundColorParser.h"
#import "TASForegroundColorTag.h"
#import "TASColorManager.h"

@implementation TASForegroundColorParser

+ (TASParseResult *)parseOpeningCommand:(NSString *)command argument:(NSString *)argument openTag:(TASTag *)openTag
{
    TASForegroundColorTag *tag = [[TASForegroundColorTag alloc] init];
    return [[TASColorManager manager] parseResultForArgument:argument tag:tag openTag:openTag];
}

@end
