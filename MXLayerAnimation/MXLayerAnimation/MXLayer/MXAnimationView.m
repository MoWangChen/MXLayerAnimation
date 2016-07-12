//
//  MXAnimationView.m
//  MXLayerAnimation
//
//  Created by 谢鹏翔 on 16/6/19.
//  Copyright © 2016年 ime. All rights reserved.
//

#import "MXAnimationView.h"
#import "CircleLayer.h"
#import "TriangleLayer.h"

@interface MXAnimationView()

@property (nonatomic, strong) CircleLayer *circleLayer;
@property (nonatomic, strong) TriangleLayer *triangleLayer;

@end

@implementation MXAnimationView

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        [self addCircleLayer];
    }
    
    return self;
}

- (void)addCircleLayer
{
//    [self.layer addSublayer:self.circleLayer];
//    [_circleLayer contractAnimation];
    
    [self.layer addSublayer:self.triangleLayer];
    [_triangleLayer triangleAnimate];
}

#pragma mark - lazy load
-(CircleLayer *)circleLayer
{
    if (!_circleLayer) {
        _circleLayer = [[CircleLayer alloc] init];
    }
    
    return _circleLayer;
}

-(TriangleLayer *)triangleLayer
{
    if (!_triangleLayer) {
        _triangleLayer = [[TriangleLayer alloc] init];
    }
    
    return _triangleLayer;
}

@end
