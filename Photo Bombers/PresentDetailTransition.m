//
//  PresentDetailTransition.m
//  Photo Bombers
//
//  Created by George Tsaousidis on 13/4/15.
//  Copyright (c) 2015 DFG-Team. All rights reserved.
//

#import "PresentDetailTransition.h"

@implementation PresentDetailTransition


-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext{

    UIViewController *detail = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    
    UIView *containerView = [transitionContext containerView];
    
    detail.view.alpha = 0.0;
    detail.view.frame = containerView.bounds;
    [containerView addSubview:detail.view];
    
    [UIView animateWithDuration:0.3 animations:^ {detail.view.alpha = 1.0;} completion:^(BOOL finished) {
        [transitionContext completeTransition:YES];
    }];
    

}

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext{
    
    return 0.3;

}

@end
