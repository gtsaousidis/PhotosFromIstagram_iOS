//
//  Users.h
//  Photo Bombers
//
//  Created by George Tsaousidis on 21/4/15.
//  Copyright (c) 2015 DFG-Team. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Users : NSObject

@property(nonatomic, strong) NSString *accessToken;


+(Users *)currentUser;

-(BOOL)isLoggedIn;

-(void)loggedOut;



@end
