//
//  Blognone12_NewThemeAppDelegate.m
//  Blognone12-NewTheme
//
//  Created by Nattapon on 3/23/11.
//  Copyright 2011 iphone developer. All rights reserved.
//

#import "Blognone12_NewThemeAppDelegate.h"

@implementation UIToolbar (CustomImage)
- (void)drawRect:(CGRect)rect {
    UIImage *image = [UIImage imageNamed: @"nm010400.png"];
    [image drawInRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
}
@end

@implementation Blognone12_NewThemeAppDelegate


@synthesize window=_window;
@synthesize mySecondView;

- (UIImage *)imageWithImage:(UIImage *)image scaledToSize:(CGSize)newSize {
    UIGraphicsBeginImageContext(newSize);
    [image drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();    
    UIGraphicsEndImageContext();
    return newImage;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [self.window makeKeyAndVisible];
    
    // Create secondview
    mySecondView = [secondView new];
    mySecondView.title = @"BlogNone";
    UINavigationController *navCon = [UINavigationController new];
    navCon.navigationBar.tintColor = [UIColor redColor];
    
    // Adding Navigation Bar BackGround
    UIImageView *backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"top-bar.png"]];
    backgroundView.frame = CGRectMake(0, 0, 320, 44);
    [navCon.navigationBar insertSubview:backgroundView atIndex:0];
    
    // Setting tool Bar
    NSArray* toolbarItems = [NSArray arrayWithObjects:
                             [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"font_down.png"] style:UIBarButtonItemStyleDone target:self action:@selector(searchStuff:)],
                             [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch 
                                                                           target:self
                                                                           action:@selector(searchStuff:)],
                             nil];
    
    //[navCon setToolbarItems:toolbarItems animated:YES];
    [navCon setToolbarHidden:NO];
    CGSize backGroundImageSize;
    BOOL isRetinaDisplay = FALSE;
    if (isRetinaDisplay) {
        backGroundImageSize = CGSizeMake(320 * 2, 44 * 2);
    } else {
        backGroundImageSize = CGSizeMake(320, 44);
    }
    
    UIImage *backImage = [self imageWithImage:[UIImage imageNamed:@"toolBar3.png"] scaledToSize:backGroundImageSize];
    [navCon.toolbar insertSubview:[[[UIImageView alloc] initWithImage:backImage] autorelease] atIndex:0];
    navCon.toolbarItems = toolbarItems;
    NSLog(@"%f", navCon.toolbar.frame.size.height);
    
    [backgroundView release];
    
    [navCon pushViewController:mySecondView animated:NO];
    
    
    [self.window addSubview:navCon.view];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

@end
