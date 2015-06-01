//
//  ScratchView.m
//  ObjectDraw
//
//  Created by Whitney Lauren on 6/1/15.
//  Copyright (c) 2015 Whitney Lauren. All rights reserved.
//

#import "ScratchView.h"


@implementation ScratchView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
}


@end


@interface Scratch : NSObject

@property (nonatomic) NSMutableArray * points;
@property (nonatomic) UIColor * fillColor;
@property(nonatomic) UIColor * strokeColor;
@property(nonatomic) CGFloat * strokeSize;
@end

