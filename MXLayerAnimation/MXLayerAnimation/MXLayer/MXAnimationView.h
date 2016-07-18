//
//  MXAnimationView.h
//  MXLayerAnimation
//
//  Created by 谢鹏翔 on 16/6/19.
//  Copyright © 2016年 ime. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AnimationViewDelegate <NSObject>

- (void)completeAnimation;

@end

@interface MXAnimationView : UIView

@property (nonatomic, assign) CGRect parentFrame;
@property (nonatomic, weak) id<AnimationViewDelegate> delegate;

@end
