//
//  ContentViewCell.h
//  Blognone12-NewTheme2
//
//  Created by Nattapon on 4/5/11.
//  Copyright 2011 iphone developer. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ContentViewCell : UITableViewCell {
    UIWebView *contentWebView;
    UIImageView *commentPictureView;
}

@property (nonatomic, retain) IBOutlet UIWebView *contentWebView;
@property (nonatomic, retain) IBOutlet UIImageView *commentPictureView;

@end
