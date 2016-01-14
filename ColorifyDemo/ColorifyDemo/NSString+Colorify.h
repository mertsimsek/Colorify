//
//  NSString_Colorify.h
//  ColorifyDemo
//
//  Created by Orhun Mert Şimşek on 14/01/16.
//  Copyright © 2016 4pps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (Colorify)

- (NSAttributedString*) colorifyIt:(NSArray*)colors randomized:(BOOL)isRandomized;
- (NSAttributedString*) randomColorifyIt;
- (NSAttributedString*) rainbowColorifyIt;

@end
