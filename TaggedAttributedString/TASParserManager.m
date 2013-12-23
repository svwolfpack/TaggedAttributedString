//
//  TASParserManager.m
//  Tagged Attributed String
//
//  Created by Samuel Voigt on 12/23/13.
//  Copyright (c) 2013 Sam Voigt. All rights reserved.
//

#import "TASParserManager.h"
#import "TASUnderlineParser.h"
#import "TASParagraphParser.h"
#import "TASColorParser.h"
#import "TASFontParser.h"


NSString *const kTASTextUnderlineKey = @"u";

NSString *const kTASForegroundColorKey1 = @"c";
NSString *const kTASForegroundColorKey2 = @"cf";
NSString *const kTASBackgroundColorKey = @"cb";

NSString *const kTASParagraphAlignmentKey = @"a";

NSString *const kTASFontFamilyKey = @"family";
NSString *const kTASFontFaceKey = @"font";
NSString *const kTASFontBoldKey = @"b";
NSString *const kTASFontItalicKey = @"i";
NSString *const kTASFontSizeKey = @"s";

@implementation TASParserManager

static TASParserManager *parserManager;

+ (instancetype)manager
{
    if (!parserManager)
    {
        parserManager = [[TASParserManager alloc] init];
        if (parserManager)
        {
            parserManager.openingTagParsersWitharguments = [TASParserManager formattedargumentParsers:@{kTASFontFamilyKey : [TASFontParser parserClassName],
                                                                                                    kTASFontFaceKey : [TASFontParser parserClassName],
                                                                                                    kTASFontSizeKey : [TASFontParser parserClassName],
                                                                                                    kTASParagraphAlignmentKey : [TASParagraphParser parserClassName],
                                                                                                    kTASForegroundColorKey1 : [TASColorParser parserClassName],
                                                                                                    kTASForegroundColorKey2 : [TASColorParser parserClassName],
                                                                                                    kTASBackgroundColorKey : [TASColorParser parserClassName]}];
            
            parserManager.openingTagParsersWithoutarguments = @{kTASFontBoldKey : [TASFontParser parserClassName],
                                                                  kTASFontItalicKey : [TASFontParser parserClassName],
                                                                  kTASTextUnderlineKey : [TASUnderlineParser parserClassName]};
            
            parserManager.closingTagParsers = @{kTASFontBoldKey : [TASFontParser parserClassName],
                                                  kTASFontItalicKey : [TASFontParser parserClassName],
                                                  kTASFontFamilyKey : [TASFontParser parserClassName],
                                                  kTASFontFaceKey : [TASFontParser parserClassName],
                                                  kTASFontSizeKey : [TASFontParser parserClassName],
                                                  kTASParagraphAlignmentKey : [TASParagraphParser parserClassName],
                                                  kTASBackgroundColorKey : [TASColorParser parserClassName],
                                                  kTASForegroundColorKey1 : [TASColorParser parserClassName],
                                                  kTASForegroundColorKey2 : [TASColorParser parserClassName],
                                                  kTASTextUnderlineKey : [TASUnderlineParser parserClassName]};
        }
    }
    return parserManager;
}

+ (NSDictionary *)formattedargumentParsers:(NSDictionary *)parsers
{
    NSMutableDictionary *formattedParsers = [[NSMutableDictionary alloc] init];
    
    for (NSString *key in parsers)
    {
        [formattedParsers setObject:parsers[key] forKey:[key stringByAppendingString:@"="]];
    }
    
    return formattedParsers;
}

- (NSDictionary *)allOpeningParsers
{
    NSMutableDictionary *allParsers = [[NSMutableDictionary alloc] initWithDictionary:self.openingTagParsersWitharguments];
    [allParsers setValuesForKeysWithDictionary:self.openingTagParsersWithoutarguments];
    return allParsers;
}

@end
