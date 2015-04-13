//
//  DismissDetailTransition.m
//  Photo Bombers
//
//  Created by George Tsaousidis on 13/4/15.
//  Copyright (c) 2015 DFG-Team. All rights reserved.
//

#import "DismissDetailTransition.h"

@implementation DismissDetailTransition

-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext{
    
    UIViewController *detail = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    
    [UIView animateWithDuration:0.3 animations:^ {detail.view.alpha = 0.0;} completion:^(BOOL finished) {
        [detail.view removeFromSuperview];
        [transitionContext completeTransition:YES];
    }];
    
    
}

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext{
    
    return 0.3;
    
}



@end
