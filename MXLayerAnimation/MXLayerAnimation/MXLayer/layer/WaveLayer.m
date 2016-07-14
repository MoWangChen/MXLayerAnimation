//
//  WaveLayer.m
//  MXLayerAnimation
//
//  Created by 谢鹏翔 on 16/7/14.
//  Copyright © 2016年 ime. All rights reserved.
//

#import "WaveLayer.h"
#import "UIColor+Hex.h"

@interface WaveLayer ()

@property (nonatomic, strong) UIBezierPath *wavePathPre;
@property (nonatomic, strong) UIBezierPath *wavePathStarting;
@property (nonatomic, strong) UIBezierPath *wavePathLow;
@property (nonatomic, strong) UIBezierPath *wavePathMid;
@property (nonatomic, strong) UIBezierPath *wavePathHigh;
@property (nonatomic, strong) UIBezierPath *wavePathComplete;

@end

static const NSTimeInterval KAnimationDuration = 0.18;

@implementation WaveLayer

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.fillColor = [UIColor colorWithHexString:@"#40e0b0"].CGColor;
        self.path = self.wavePathStarting.CGPath;
    }
    return self;
}

-(UIBezierPath *)wavePathPre
{
    if (!_wavePathPre) {
        _wavePathPre = [[UIBezierPath alloc] init];
        [_wavePathPre moveToPoint:CGPointMake(0.0, 100.0)];
        [_wavePathPre addLineToPoint:CGPointMake(0.0, 99.0)];
        [_wavePathPre addLineToPoint:CGPointMake(100.0, 99.0)];
        [_wavePathPre addLineToPoint:CGPointMake(0.0, 100.0)];
        [_wavePathPre closePath];
    }
    return _wavePathPre;
}

-(UIBezierPath *)wavePathStarting
{
    if (!_wavePathStarting) {
        _wavePathStarting = [[UIBezierPath alloc] init];
        [_wavePathStarting moveToPoint:CGPointMake(0.0, 100.0)];
        [_wavePathStarting addLineToPoint:CGPointMake(0.0, 80.0)];
        [_wavePathStarting addCurveToPoint:CGPointMake(100.0, 80.0) controlPoint1:CGPointMake(30.0, 70.0) controlPoint2:CGPointMake(40.0, 90.0)];
        [_wavePathStarting addLineToPoint:CGPointMake(100.0, 100.0)];
        [_wavePathStarting addLineToPoint:CGPointMake(0.0, 100.0)];
    }
    return _wavePathStarting;
}

-(UIBezierPath *)wavePathLow
{
    if (!_wavePathLow) {
        _wavePathLow = [[UIBezierPath alloc] init];
    }
    return _wavePathLow;
}

- (UIBezierPath *)wavePathMid
{
    if (!_wavePathMid) {
        _wavePathMid = [[UIBezierPath alloc] init];
    }
    return _wavePathMid;
}

-(UIBezierPath *)wavePathHigh
{
    if (!_wavePathHigh) {
        _wavePathHigh = [[UIBezierPath alloc] init];
    }
    return _wavePathHigh;
}

-(UIBezierPath *)wavePathComplete
{
    if (!_wavePathComplete) {
        _wavePathComplete = [[UIBezierPath alloc] init];
    }
    return _wavePathComplete;
}




@end
