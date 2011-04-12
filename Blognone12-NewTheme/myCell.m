//
//  myCell.m
//  tableViewTransparent3
//
//  Created by Nattapon on 3/22/11.
//  Copyright 2011 iphone developer. All rights reserved.
//

#import "myCell.h"


@implementation myCell
@synthesize myBackGroundView;
@synthesize titleView;
@synthesize iconImage;
@synthesize detailView;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    //[super setSelected:selected animated:animated];

    // Configure the view for the selected state
    if (selected == YES) {
        NSLog(@"have been selected");
        
        // Change background color with Animation
        //[UIView beginAnimations:NULL context:nil];
        //[UIView setAnimationDuration:0.2];
        //self.myBackGroundView.backgroundColor = [UIColor colorWithRed:38.0f/255.0f green:239.0f/255.0f blue:239.0f/255.0f alpha:1.0f];
        //[UIView commitAnimations];
        
        
    } else {
        //NSLog(@"release selecte");
        
        // Change background color with Animation
        //[UIView beginAnimations:NULL context:nil];
        //[UIView setAnimationDuration:0.2];
        //self.myBackGroundView.backgroundColor = [UIColor colorWithRed:239.0f/255.0f green:239.0f/255.0f blue:239.0f/255.0f alpha:1.0f];
        //[UIView commitAnimations];
    }
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
    // Hightlight when hold the cell
    if (highlighted == YES) {
        //self.myBackGroundView.backgroundColor = [UIColor colorWithRed:38.0f/255.0f green:239.0f/255.0f blue:239.0f/255.0f alpha:1.0f];
    } else {
        //self.myBackGroundView.backgroundColor = [UIColor colorWithRed:239.0f/255.0f green:239.0f/255.0f blue:239.0f/255.0f alpha:1.0f];

    }
    
}

- (void)dealloc
{
    [super dealloc];
    [myBackGroundView release];
    [titleView release];
    [iconImage release];
    [detailView release];
}

@end
