//
//  Colorify.m
//  ColorifyDemo
//
//  Created by Orhun Mert Şimşek on 14/01/16.
//  Copyright © 2016 4pps. All rights reserved.
//

#import "NSString+Colorify.h"
#import <Security/Security.h>

@implementation NSString (Colorify)

- (NSAttributedString*) colorifyIt:(NSArray*)colors randomized:(BOOL)isRandomized
{
    NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc] initWithString:self];
    int length = (int)attrStr.length;
    uint32_t randomNum = 0;
    
    for (int i = 0; i < length; i++) {
        if(isRandomized) {
            SecRandomCopyBytes(kSecRandomDefault, 4, (uint8_t*) &randomNum);
            [attrStr addAttribute:NSForegroundColorAttributeName value:(UIColor*)colors[randomNum%(colors.count)] range:NSMakeRange(i, 1)];
        } else {
            [attrStr addAttribute:NSForegroundColorAttributeName value:(UIColor*)colors[i%(colors.count)] range:NSMakeRange(i, 1)];
        }
        
    }
    
    return attrStr;
}

- (NSAttributedString*) randomColorifyIt
{
    NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc] initWithString:self];
    NSMutableArray *colors = [NSMutableArray array];
    
    float INCREMENT = 0.01;
    for (float hue = 0.0; hue < 1.0; hue += INCREMENT) {
        UIColor *color = [UIColor colorWithHue:hue
                                    saturation:1.0
                                    brightness:0.85
                                         alpha:1.0];
        [colors addObject:color];
        
        
    }
    
    int length = (int)attrStr.length;
    
    uint32_t randomNum = 0;
    
    
    for (int i = 0; i < length; i++) {
        SecRandomCopyBytes(kSecRandomDefault, 4, (uint8_t*) &randomNum);
        [attrStr addAttribute:NSForegroundColorAttributeName value:(UIColor*)colors[randomNum % colors.count] range:NSMakeRange(i, 1)];
    }
    
    return attrStr;
}

- (NSAttributedString*) rainbowColorifyIt
{
    NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc] initWithString:self];
    NSMutableArray *colors = [NSMutableArray array];
    
    float INCREMENT = 0.02;
    for (float hue = 0.0; hue < 1.0; hue += INCREMENT) {
        UIColor *color = [UIColor colorWithHue:hue
                                            saturation:1.0
                                            brightness:0.85
                                                 alpha:1.0];
        [colors addObject:color];
        
        
    }
    
    int length = (int)attrStr.length;
    
    for (int i = 0; i < length; i++) {
        [attrStr addAttribute:NSForegroundColorAttributeName value:(UIColor*)colors[i % colors.count] range:NSMakeRange(i, 1)];
    }
    
    return attrStr;
}

@end
