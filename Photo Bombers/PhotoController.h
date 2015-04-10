//
//  PhotoController.h
//  Photo Bombers
//
//  Created by George Tsaousidis on 10/4/15.
//  Copyright (c) 2015 DFG-Team. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PhotoController : NSObject

+(void)imageForPhoto:(NSDictionary *)photo size:(NSString *)size completion:(void(^)(UIImage *image))completion;

@end
