//
//  TASColorManager.m
//  Tagged Attributed String
//
//  Created by Samuel Voigt on 12/23/13.
//  Copyright (c) 2013 Sam Voigt. All rights reserved.
//

#import "TASColorManager.h"

@implementation TASColorManager

static TASColorManager *colorManager = nil;

+ (TASColorManager *)manager
{
    if (!colorManager)
    {
        colorManager = [[TASColorManager alloc] init];
    }
    return colorManager;
}


- (void)reset
{
    if (self.colors)
        [self.colors removeAllObjects];
}

- (void)addColor:(UIColor *)color
{
    if (!self.colors)
        self.colors = [[NSMutableArray alloc] init];
    
    [self.colors addObject:color];
}

- (UIColor *)colorForIndex:(NSInteger)index
{
    index--;
    if (index >= self.colors.count || index < 0) {
        return nil;
    }
    return self.colors[index];
}

@end
