//
//  AppDelegate.m
//  WeiXin_Demo
//
//  Created by YuLei on 4/13/14.
//  Copyright (c) 2014 ___DuanYuLei___. All rights reserved.
//

#import "AppDelegate.h"
#import "CustomTabbar.h"
#import "ViewController_chats.h"
#import "ViewController_Contacts.h"
#import "ViewController_Discover.h"
#import "ViewController_Me.h"


@implementation AppDelegate{
    UITabBarController *tabbar;
    CustomTabbar *customTabbar;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    tabbar = [[UITabBarController alloc] init];

    ViewController_chats *chats = [[ViewController_chats alloc] initWithNibName:@"ViewController_chats" bundle:nil];
    UINavigationController *chatsNav = [[UINavigationController alloc] initWithRootViewController:chats];
    chatsNav.navigationBar.tintColor = [UIColor redColor];
    chatsNav.navigationController.navigationBar.tintColor = [UIColor redColor];
//    navigationController.navigationBar.tintColor=[UIColor redColor];
    
    //UINavigationController *chatNv = [UINavigationController alloc] init
    ViewController_Contacts *contacts = [[ViewController_Contacts alloc] initWithNibName:@"ViewController_Contacts" bundle:nil];
    ViewController_Discover *discover = [[ViewController_Discover alloc] initWithNibName:@"ViewController_Discover" bundle:nil];
    ViewController_Me *me = [[ViewController_Me alloc] initWithNibName:@"ViewController_Me" bundle:nil];
    tabbar.viewControllers = @[chatsNav,contacts,discover,me];
//    tabbar.delegate = self;
    
    
    
    [self customTabbar];
    int index = [[NSUserDefaults standardUserDefaults] integerForKey:TabIndex];
    tabbar.selectedIndex = index;
    [customTabbar setSelectIndex:index];


    self.window.rootViewController = tabbar;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

-(void)customTabbar{
    tabbar.tabBar.hidden = YES;
    customTabbar = [[NSBundle mainBundle]loadNibNamed:@"CustomTabbar" owner:self options:nil][0];
    customTabbar.tabbarController = tabbar;
    customTabbar.frame = CGRectMake(0, self.window.bounds.size.height-49, 320, 49);
    [tabbar.view addSubview:customTabbar];
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
