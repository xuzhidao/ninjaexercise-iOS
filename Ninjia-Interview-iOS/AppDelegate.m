//
//  AppDelegate.m
//  Ninjia-Interview-iOS
//
//  Created by Hsing on 2023/3/6.
//

#import "AppDelegate.h"

#import "MainViewController.h"

@interface AppDelegate ()


@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    MainViewController *mainViewController = [[MainViewController alloc] init];
    
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:mainViewController];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}


@end
