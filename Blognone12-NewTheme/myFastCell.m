//
//  myFastCell.m
//  Blognone12-NewTheme
//
//  Created by Nattapon on 3/29/11.
//  Copyright 2011 iphone developer. All rights reserved.
//

#import "myFastCell.h"


@implementation myFastCell

@synthesize textTitle;
@synthesize detailText;
@synthesize imageName;

- (void)setTextTitle:(NSString *)newTextTitle
{
    [textTitle release];
	textTitle = [newTextTitle copy];
	//[self setNeedsDisplay]; 
}

- (void)setDetailText:(NSString *)newDetailText
{
    [detailText release];
	detailText = [newDetailText copy];
}

- (void)setImageName:(NSString *)newImageName
{
    [imageName release];
	imageName = [newImageName copy];

}

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
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)dealloc
{
    [super dealloc];
}

- (void)drawContentView:(CGRect)r
{
	CGContextRef context = UIGraphicsGetCurrentContext();
    
	UIColor *backgroundColor = [UIColor whiteColor];
	UIColor *textColor = [UIColor blackColor];
	
	if(self.selected)
	{
		backgroundColor = [UIColor clearColor];
		textColor = [UIColor whiteColor];
	}
	
	[backgroundColor set];
	CGContextFillRect(context, r);
	
	CGPoint p;
	p.x = 12;
	p.y = 6;
	
//	p.x += s.width + 6; // space between words
//	[@"abc" drawAtPoint:p withFont:[UIFont systemFontOfSize:20]];
    
    // Icon Image
    UIImageView *myImage = [[UIImageView alloc] initWithFrame:CGRectMake(12.0, 30.0, 72.0, 66.0)];
    myImage.frame = CGRectMake(12.0, 30.0, 72.0, 66.0);
    myImage.image = [UIImage imageNamed:imageName];
    [self addSubview:myImage];
    [myImage release];
    
//    UITextField *myTextField = [[UITextField alloc] initWithFrame:CGRectMake(85, 20, 201, 71)];
//    myTextField.text = @"ตามที่ Adobe เคยสัญญาเอาไว้ วันนี้ผู้ใช้ Android 2.2 และ 2.3 สามารถดาวน์โหลด Flash Player 10.2 ได้แล้ว";
//    [myTextField drawTextInRect:CGRectMake(85, 20, 201, 71)];
    
    // TextDetail
    UITextView *textview13 = [[UITextView alloc] initWithFrame:CGRectMake(85.0, 20.0, 201.0, 71.0)];
    textview13.frame = CGRectMake(85.0, 20.0, 201.0, 71.0);
    textview13.alpha = 1.000;
    textview13.alwaysBounceHorizontal = NO;
    textview13.alwaysBounceVertical = NO;
    textview13.autoresizesSubviews = YES;
    textview13.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
    textview13.backgroundColor = [UIColor colorWithRed:1.000 green:1.000 blue:1.000 alpha:0.000];
 
    textview13.bounces = YES;
    textview13.bouncesZoom = YES;
    textview13.canCancelContentTouches = YES;
    textview13.clearsContextBeforeDrawing = YES;
    textview13.clipsToBounds = YES;

    textview13.contentMode = UIViewContentModeScaleToFill;
    textview13.contentStretch = CGRectFromString(@"{{0, 0}, {1, 1}}");
    textview13.dataDetectorTypes = // unknown property: 0;
    textview13.delaysContentTouches = YES;
    textview13.directionalLockEnabled = NO;
    textview13.editable = NO;
    textview13.font = [UIFont fontWithName:@"Thonburi" size:17.000];
    textview13.hidden = NO;
    textview13.indicatorStyle = UIScrollViewIndicatorStyleDefault;
    textview13.maximumZoomScale = 1.000;
    textview13.minimumZoomScale = 1.000;
    textview13.multipleTouchEnabled = NO;
    textview13.opaque = YES;
    textview13.pagingEnabled = NO;
    textview13.scrollEnabled = NO;
    textview13.showsHorizontalScrollIndicator = YES;
    textview13.showsVerticalScrollIndicator = YES;
    textview13.tag = 0;
    textview13.text = detailText;
    textview13.textAlignment = UITextAlignmentLeft;
    [self addSubview:textview13];
    [textview13 release];
    
    // Text Title 
    UILabel *label10 = [[UILabel alloc] initWithFrame:CGRectMake(12.0, 6.0, 295.0, 21.0)];
    label10.frame = CGRectMake(12.0, 6.0, 295.0, 21.0);
    label10.adjustsFontSizeToFitWidth = YES;
    label10.alpha = 1.000;
    label10.autoresizesSubviews = YES;
    label10.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
    label10.baselineAdjustment = UIBaselineAdjustmentAlignCenters;
    label10.clearsContextBeforeDrawing = YES;
    label10.clipsToBounds = YES;
    label10.contentMode = UIViewContentModeLeft;
    label10.contentStretch = CGRectFromString(@"{{0, 0}, {1, 1}}");
    label10.enabled = YES;
    label10.font = [UIFont fontWithName:@"Helvetica" size:17.000];

    label10.hidden = NO;
    label10.lineBreakMode = UILineBreakModeTailTruncation;
    label10.minimumFontSize = 10.000;
    label10.multipleTouchEnabled = NO;
    label10.numberOfLines = 1;
    label10.opaque = NO;
    label10.shadowOffset = CGSizeMake(0.0, -1.0);
    label10.tag = 0;
    label10.text = textTitle;
    label10.textAlignment = UITextAlignmentLeft;
    label10.textColor = [UIColor colorWithRed:1.000 green:0.000 blue:0.000 alpha:1.000];
    label10.userInteractionEnabled = NO;
    
    [self addSubview:label10];
    [label10 release];
    
    NSLog(@"draw %@", textTitle);
}

@end
