//
//  handleDemoView.h
//  HandleAnimationDemo
//
//  Created by ZengYong on 16/4/8.
//  Copyright © 2016年 maipu. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HAHandleDemoViewDelegate <NSObject>

@optional
- (void)animationCompleted;

@end

@interface HAHandleDemoView : UIView
@property (nonatomic, weak) id<HAHandleDemoViewDelegate> delegate;
@end
