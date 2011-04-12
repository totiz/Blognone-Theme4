//
//  secondView.h
//  tableViewTransparent3
//
//  Created by Nattapon on 3/21/11.
//  Copyright 2011 iphone developer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "myCell.h"
#import "myFastCell.h"

@interface secondView : UIViewController {
    myCell *tmpCell;
    
    // referring to our xib-based UITableViewCell ('IndividualSubviewsBasedApplicationCell')
	UINib *cellNib;
    UITableView *mytTableView;
    
    NSMutableArray *entries;
    
    NSMutableArray *cellArray;
}

@property (nonatomic, retain) IBOutlet myCell *tmpCell;
@property (nonatomic, retain) UINib *cellNib;
@property (nonatomic, retain) IBOutlet UITableView *mytTableView;

@property (nonatomic, retain) NSMutableArray *entries;


@end
