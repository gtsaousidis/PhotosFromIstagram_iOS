//
//  Users.m
//  Photo Bombers
//
//  Created by George Tsaousidis on 21/4/15.
//  Copyright (c) 2015 DFG-Team. All rights reserved.
//

#import "Users.h"

@implementation Users


static Users *singletonObject2 = nil;

+(Users *)currentUser{

    if (singletonObject2 == nil) {
        singletonObject2 = [[super alloc]init];
    }
    
    return singletonObject2;

}


-(BOOL)isLoggedIn{

    
    if (self.accessToken != nil) {
        
        return YES;
    }
    
    return NO;
    
}


-(void)loggedOut{

    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults removeObjectForKey:@"accessToken"];
    
    self.accessToken = nil;
    

}

@end
