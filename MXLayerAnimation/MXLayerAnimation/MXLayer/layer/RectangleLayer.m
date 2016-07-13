//
//  RectangleLayer.m
//  MXLayerAnimation
//
//  Created by 谢鹏翔 on 16/7/13.
//  Copyright © 2016年 ime. All rights reserved.
//

#import "RectangleLayer.h"

@interface RectangleLayer ()

@property (nonatomic, strong) UIBezierPath *rectangleFullPath;

@end

static const CGFloat KLineWidth = 5.0;

@implementation RectangleLayer

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.fillColor = [UIColor clearColor].CGColor;
        self.lineWidth = KLineWidth;
        self.path = self.rectangleFullPath.CGPath;
    }
    return self;
}

-(UIBezierPath *)rectangleFullPath
{
    if (!_rectangleFullPath) {
        _rectangleFullPath = [[UIBezierPath alloc] init];
        [_rectangleFullPath moveToPoint:CGPointMake(0.0, 100.0)];
        [_rectangleFullPath addLineToPoint:CGPointMake(0.0, -KLineWidth)];
        [_rectangleFullPath addLineToPoint:CGPointMake(100.0, -KLineWidth)];
        [_rectangleFullPath addLineToPoint:CGPointMake(100.0, 100.0)];
        [_rectangleFullPath addLineToPoint:CGPointMake(-KLineWidth/2, 100.0)];
        [_rectangleFullPath closePath];
    }
    return _rectangleFullPath;
}

- (void)strokeChangeWithColor:(UIColor *)color
{
    self.strokeColor = color.CGColor;
    CABasicAnimation *strokeAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    strokeAnimation.fromValue = @0.0;
    strokeAnimation.toValue = @1.0;
    strokeAnimation.duration = 0.4;
    [self addAnimation:strokeAnimation forKey:nil];
}

@end
