//
//  DetailNewsNativeV2.h
//  Blognone12-NewTheme
//
//  Created by Nattapon on 4/4/11.
//  Copyright 2011 iphone developer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CommentViewCell.h"
#import "ContentViewCell.h"


@interface DetailNewsNativeV2 : UITableViewController {
    CommentViewCell *tmpCell;
    ContentViewCell *contentViewCell;
    
    // referring to our xib-based UITableViewCell ('IndividualSubviewsBasedApplicationCell')
	UINib *cellNib;
    UINib *contentViewCellNib;
    
    NSMutableArray *comments;
    NSMutableArray *commentAvatars;
}

@property (nonatomic, retain) IBOutlet CommentViewCell *tmpCell;
@property (nonatomic, retain) UINib *cellNib;

@property (nonatomic, retain) IBOutlet ContentViewCell *contentViewCell;
@property (nonatomic, retain) UINib *contentViewCellNib;

@end
