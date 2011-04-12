//
//  Blognone12_NewThemeAppDelegate.h
//  Blognone12-NewTheme
//
//  Created by Nattapon on 3/23/11.
//  Copyright 2011 iphone developer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "secondView.h"

@interface Blognone12_NewThemeAppDelegate : NSObject <UIApplicationDelegate> {
    secondView *mySecondView;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) secondView *mySecondView;

@end
