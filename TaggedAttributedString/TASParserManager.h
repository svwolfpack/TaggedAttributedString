//
//  TASParserManager.h
//  Tagged Attributed String
//
//  Created by Samuel Voigt on 12/23/13.
//  Copyright (c) 2013 Sam Voigt. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const kTASTextUnderlineKey;
extern NSString *const kTASTextStrikethroughKey;

extern NSString *const kTASForegroundColorKey1;
extern NSString *const kTASForegroundColorKey2;
extern NSString *const kTASBackgroundColorKey;
extern NSString *const kTASStrikethroughColorKey;

extern NSString *const kTASParagraphAlignmentKey;

extern NSString *const kTASFontFamilyKey;
extern NSString *const kTASFontFaceKey;
extern NSString *const kTASFontBoldKey;
extern NSString *const kTASFontItalicKey;
extern NSString *const kTASFontSizeKey;


@interface TASParserManager : NSObject

+ (instancetype)manager;

@property (nonatomic, strong) NSDictionary *openingTagParsersWitharguments;
@property (nonatomic, strong) NSDictionary *openingTagParsersWithoutarguments;

- (NSDictionary *)allOpeningParsers;

@property (nonatomic, strong) NSDictionary *closingTagParsers;

@end
