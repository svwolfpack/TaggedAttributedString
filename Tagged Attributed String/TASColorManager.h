//
//  TASColorManager.h
//  Tagged Attributed String
//
//  Created by Samuel Voigt on 12/23/13.
//  Copyright (c) 2013 Sam Voigt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TASColorManager : NSObject

+ (TASColorManager *)manager;
- (void)reset;
- (void)addColor:(UIColor *)color;
- (UIColor *)colorForIndex:(NSInteger)index;

@property (nonatomic, strong) NSMutableArray *colors;

@end
