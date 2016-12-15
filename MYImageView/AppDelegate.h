//
//  AppDelegate.h
//  MYImageView
//
//  Created by design02 on 16/12/15.
//  Copyright © 2016年 com.youmuzhe.bestsch123456. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

