//
//  secondView.m
//  tableViewTransparent3
//
//  Created by Nattapon on 3/21/11.
//  Copyright 2011 iphone developer. All rights reserved.
//

#import "secondView.h"
#import <QuartzCore/QuartzCore.h>
#import "DetailNews.h"
#import "DetailNewsNativeV2.h"

@implementation secondView

@synthesize tmpCell;
@synthesize cellNib;
@synthesize mytTableView;

@synthesize entries;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [mytTableView release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.cellNib = [UINib nibWithNibName:@"myCell" bundle:nil];
    
    // Remove gap between cell
    [mytTableView setSeparatorColor:[UIColor clearColor]];
    
    entries = [NSMutableArray new];
    
    // Row 0
    NSDictionary *tmpData = [NSDictionary 
                             dictionaryWithObjects: [NSArray arrayWithObjects:@"Flash Player 10.2 ตัวจริงบน Android มาแล้ว", 
                                                     @"ตามที่ Adobe เคยสัญญาเอาไว้ วันนี้ผู้ใช้ Android 2.2 และ 2.3 สามารถดาวน์โหลด Flash Player 10.2 ได้แล้ว", @"Flash.png", nil]
                             forKeys:[NSArray arrayWithObjects:@"title", @"detail", @"image", nil]];
    [entries addObject:tmpData];
    
    // Row 1
    tmpData = [NSDictionary
               dictionaryWithObjects: [NSArray arrayWithObjects:@"Rovio ผู้สร้าง Angry Birds เตรียมเข้าตลาดหุ้นอีกราย",
                                       @"ยังคงเป็นปีที่บริษัทซึ่งเกี่ยวข้องกับเทคโนโลยีใหม่ๆต่างอยากเข้าไปจดทะเบียนในตลาดหุ้น คราวนี้เป็นของ Rovio Mobile Oy บริษัทผู้สร้างเกมดัง",
                                       @"Angry Birds.jpeg", nil]
               forKeys:[NSArray arrayWithObjects:@"title", @"detail", @"image", nil]];
    [entries addObject:tmpData];
    
    // Row 2
    tmpData = [NSDictionary
               dictionaryWithObjects: [NSArray arrayWithObjects:@"[ข่าวลือ] Eric Schmidt จะไปเป็นรัฐมนตรีพาณิชย์ใน...",
                                       @"มีข่าวลือมาหนาหูว่า Eric Schmidt ซีอีโอของกูเกิลที่กำลังจะกลายเป็นอดีตซีอีโอ กำลังจะไปรับตำแหน่งรัฐมนตรีว่าการกระทรวงพาณิชย์",
                                       @"Eric Schmidt.png", nil]
               forKeys:[NSArray arrayWithObjects:@"title", @"detail", @"image", nil]];
    [entries addObject:tmpData];
    
    // Row 3
    tmpData = [NSDictionary
               dictionaryWithObjects: [NSArray arrayWithObjects:@"Kevin Rose ลาออกจาก Digg เพื่อไปเปิดบริษัทใหม่",
                                       @"อีกหนึ่งตำนานของ Web 2.0 อาจใกล้สิ้นสุด เพราะ Kevin Rose ซูเปอร์สตาร์แห่งซิลิคอนวัลเลย์ ผู้ก่อตั้งและอดีตซีอีโอของ Digg ได้ลาออกจากบริษัทแล้ว",
                                       @"Digg.png", nil]
               forKeys:[NSArray arrayWithObjects:@"title", @"detail", @"image", nil]];
    [entries addObject:tmpData];
    
    // Row 4
    tmpData = [NSDictionary
               dictionaryWithObjects: [NSArray arrayWithObjects:@"iPad 2 อาจมีปัญหาขาดแคลน 5 ชิ้นส่วนหลักเนื่อง...",
                                       @"รายงานจาก iSuppli วิเคราะห์ว่าจากเหตุแผ่นดินไหวในประเทศญี่ปุ่นนั้น น่าจะส่งผลกระทบต่อห่วงโซ่อุปทาน (Supply Chain) ในสายการผลิต iPad 2",
                                       @"iPad.png", nil]
               forKeys:[NSArray arrayWithObjects:@"title", @"detail", @"image", nil]];
    [entries addObject:tmpData];
    
    // Row 5
    tmpData = [NSDictionary
               dictionaryWithObjects: [NSArray arrayWithObjects:@"มินิรีวิว: Nexus S รุ่นจอ Super-LCD ที่ขายอย่าง",
                                       @"เชื่อว่าผู้อ่าน Blognone คงอ่านข่าว เอไอเอสจับมือซัมซุงเปิดตัว Nexus S เคาะราคาที่ 18,900 บาท กันหมดแล้ว จริงๆ",
                                       @"Nexus S.jpeg", nil]
               forKeys:[NSArray arrayWithObjects:@"title", @"detail", @"image", nil]];
    [entries addObject:tmpData];
    
    
//    cellArray = [NSMutableArray new];
//    
//    NSInteger indexOfContent;
//    for ( indexOfContent = 0; indexOfContent < [entries count]; indexOfContent++)
//    {
//        // Create Custom Cell
//        [self.cellNib instantiateWithOwner:self options:nil];
//        UITableViewCell *cell = tmpCell;
//        self.tmpCell = nil;
//        
//        myCell *tmpMyCell = (myCell *)cell;
//        // Rounding corner
//        //tmpMyCell.myBackGroundView.layer.cornerRadius = 10;
//        tmpMyCell.iconImage.layer.cornerRadius = 10;
//        
//        tmpMyCell.titleView.text = [[entries objectAtIndex:indexOfContent] objectForKey:@"title"];
//        tmpMyCell.detailView.text = [[entries objectAtIndex:indexOfContent] objectForKey:@"detail"];
//        tmpMyCell.iconImage.image = [UIImage imageNamed:[[entries objectAtIndex:indexOfContent] objectForKey:@"image"]];
//        
//        [cellArray addObject:cell];
//    }
}

- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.tintColor = [UIColor redColor];

}

- (void)viewDidUnload
{
    [self setMytTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [entries count];
}

- (UIImage *)imageWithImage:(UIImage *)image scaledToSize:(CGSize)newSize {
    UIGraphicsBeginImageContext(newSize);
    [image drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();    
    UIGraphicsEndImageContext();
    return newImage;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *WhiteCellIdentifier = @"WhiteCellIdentifier";
    static NSString *CellIdentifier = @"myCell";
    
    UITableViewCell *cell;

    cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        // Create Custom Cell
        [self.cellNib instantiateWithOwner:self options:nil];
        cell = tmpCell;
        self.tmpCell = nil;
        
        myCell *tmpMyCell = (myCell *)cell;
        
        NSLog(@"create new custom cell");
    }
    myCell *tmpMyCell = (myCell *)cell;
    
    
    
    NSInteger indexOfContent = indexPath.row;
    
    
    // Set up cell image theme and title Color
    NSString *imageThemeNmae;
    if (indexOfContent == 0) {
        imageThemeNmae = @"feature.png";
        // Set up titleView text color
        tmpMyCell.titleView.textColor = [UIColor whiteColor];
    }
    else if (indexOfContent == 1) {
        imageThemeNmae = @"feature-2.png";
        tmpMyCell.titleView.textColor =  [UIColor colorWithRed:(1.0 * 153)/255 green:(1.0 * 48)/255 blue:0 alpha:1.0];
    } else {
        imageThemeNmae = @"normal.png";
        // Set up titleView text color
        tmpMyCell.titleView.textColor = [UIColor whiteColor];
    }
    
    tmpMyCell.titleView.text = [[entries objectAtIndex:indexOfContent] objectForKey:@"title"];
    
    
    CGSize backGroundImageSize;
    BOOL isRetinaDisplay = FALSE;
    if (isRetinaDisplay) {
        backGroundImageSize = CGSizeMake(320 * 2, 115 * 2);
    } else {
        backGroundImageSize = CGSizeMake(320, 115);
    }
    
    
    UIImage *newBackgroundImage = [self imageWithImage:[UIImage imageNamed:imageThemeNmae] scaledToSize:backGroundImageSize];
    tmpMyCell.myBackGroundView.backgroundColor = [[UIColor alloc] initWithPatternImage:newBackgroundImage];
    
    //tmpMyCell.myBackGroundView.backgroundColor = [UIColor blueColor];
    
    tmpMyCell.detailView.text = [[entries objectAtIndex:indexOfContent] objectForKey:@"detail"];
    tmpMyCell.iconImage.image = [UIImage imageNamed:[[entries objectAtIndex:indexOfContent] objectForKey:@"image"]];
    NSLog(@"cell %@", [[entries objectAtIndex:indexOfContent] objectForKey:@"title"]) ;

        
    
    
    // Configure the cell...
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger indexOfContent = (indexPath.row - 1) / 2;
    
    BOOL isNativeDetailsView = YES;
    if (isNativeDetailsView) {
        DetailNewsNativeV2 *myDetailNewsNative = [DetailNewsNativeV2 new];
        [self.navigationController pushViewController:myDetailNewsNative animated:YES];
        //myDetailNewsNative.TitleTextView.text = [[entries objectAtIndex:indexOfContent] objectForKey:@"title"];
        
        NSString *detailHtmlPath = [[NSBundle mainBundle] pathForResource:@"detail" ofType:@"html"];  
        NSString *detailHtml = [NSString stringWithContentsOfFile:detailHtmlPath encoding:NSUTF8StringEncoding error:nil];
        //[myDetailNewsNative.textDetailWebView loadHTMLString:detailHtml baseURL:nil];
    } else {
        DetailNews *myDetailNews = [DetailNews new];
        [self.navigationController pushViewController:myDetailNews animated:YES];
    }
    
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 115;
}


@end
