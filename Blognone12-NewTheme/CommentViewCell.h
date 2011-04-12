//
//  CommentViewCell.h
//  Blognone12-NewTheme
//
//  Created by Nattapon on 4/4/11.
//  Copyright 2011 iphone developer. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CommentViewCell : UITableViewCell {
    UITextView *DetailView;
    UIImageView *Avatar;
}

@property (nonatomic, retain) IBOutlet UITextView *DetailView;
@property (nonatomic, retain) IBOutlet UIImageView *Avatar;


@end
