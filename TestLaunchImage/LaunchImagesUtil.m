//
//  LaunchImagesUtil.m
//  TestLaunchImage
//
//  Created by qianyb on 16/4/11.
//  Copyright © 2016年 qianyb. All rights reserved.
//

#import "LaunchImagesUtil.h"

@implementation LaunchImagesUtil

+ (UIImage *)launchImage {
    NSArray *launchImages = [[[NSBundle mainBundle] infoDictionary] valueForKey:@"UILaunchImages"];
    NSString *screenSize = NSStringFromCGSize([[UIScreen mainScreen] bounds].size);
    
    __block NSString *launchImageName;
    [launchImages enumerateObjectsUsingBlock:^(NSDictionary * _Nonnull imageInfo, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([[imageInfo valueForKey:@"UILaunchImageSize"] isEqualToString:screenSize]) {
            launchImageName = [imageInfo valueForKey:@"UILaunchImageName"];
            *stop = YES;
        }
    }];
    
    return [UIImage imageNamed:launchImageName];
}
@end
