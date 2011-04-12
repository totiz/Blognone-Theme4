//
//  myCell.h
//  tableViewTransparent3
//
//  Created by Nattapon on 3/22/11.
//  Copyright 2011 iphone developer. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface myCell : UITableViewCell {
    UIView *myBackGroundView;
    UILabel *titleView;
    UIImageView *iconImage;
    UITextView *detailView;
    
}

@property (nonatomic, retain) IBOutlet UIView *myBackGroundView;
@property (nonatomic, retain) IBOutlet UILabel *titleView;
@property (nonatomic, retain) IBOutlet UIImageView *iconImage;
@property (nonatomic, retain) IBOutlet UITextView *detailView;



@end
