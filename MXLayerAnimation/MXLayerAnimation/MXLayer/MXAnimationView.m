//
//  MXAnimationView.m
//  MXLayerAnimation
//
//  Created by 谢鹏翔 on 16/6/19.
//  Copyright © 2016年 ime. All rights reserved.
//

#import "MXAnimationView.h"
#import "CircleLayer.h"

@interface MXAnimationView()

@property (nonatomic, strong) CircleLayer *circleLayer;

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
    [self.layer addSublayer:self.circleLayer];
    [_circleLayer wobbleAnimation];
}

#pragma mark - lazy load
-(CircleLayer *)circleLayer
{
    if (!_circleLayer) {
        _circleLayer = [[CircleLayer alloc] init];
    }
    
    return _circleLayer;
}

@end
