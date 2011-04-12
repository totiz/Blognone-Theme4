//
//  DetailNewsNativeV2.m
//  Blognone12-NewTheme
//
//  Created by Nattapon on 4/4/11.
//  Copyright 2011 iphone developer. All rights reserved.
//

#import "DetailNewsNativeV2.h"


@implementation DetailNewsNativeV2

@synthesize tmpCell, cellNib;
@synthesize contentViewCell, contentViewCellNib;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
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

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.cellNib = [UINib nibWithNibName:@"CommentViewCell" bundle:nil];
    self.contentViewCellNib = [UINib nibWithNibName:@"ContentViewCell" bundle:nil];
    
    comments = [NSMutableArray new];
    commentAvatars = [NSMutableArray new];
    
    // Comment 1
    [comments addObject:@"นั่นว่าแล้ว มันก็มาอย่างรวดเร็ว แต่ก็คิดว่าใช้เสียงสั่งการทำงาน ดูท่าจะสะดวกกว่าการแสดงท่าทาง เพราะกูเกิลถนัดทางนี้ซะมากกว่า"];
    [commentAvatars addObject:@"sutjvc's picture.jpeg"];
    
    // Comment 2
    [comments addObject:@"มิเป็นไร อยากใช้เสียง คิเน๊กซ์ก็จัดให้ได้ครับ"];
    [commentAvatars addObject:@"Sephanov's picture.jpeg"];
    
    // Comment 3
    [comments addObject:@"แต่ทว่าทำงานด้วยเสียงคงเป็นการลำบากแน่สำหรับคนไทย บางคนสำเนียงภาษาอังกฤษฟังแล้วปวดตับมาก อันนี้เรื่องจริง"];
    [commentAvatars addObject:@"hisoft's picture.jpeg"];
    
    // Comment 4
    [comments addObject:@"ใช่ ขนาด โปรแกรม Dragon ... สั่งงานด้วยเสียง ผม อ่าน ประโยคทดสอบ ไม่ผ่านเลย อดใช้ 55555+"];
    [commentAvatars addObject:@"chadowe's picture.png"];
    
    // Comment 5
    [comments addObject:@"คือแว่บแรกที่เห็น vdo demo ก็นึกว่าใช้ kinect นะ แต่เอะใจดูดีๆ นี่มัน april fool นี่หว่า -_-"];
    [commentAvatars addObject:@"lancaster's picture.png"];
    
    // Comment 6
    [comments addObject:@"kinect ข่าวนี้นี่ของจริงไม่ใช่เหรอ ?"];
    [commentAvatars addObject:@"plyteam's picture.gif"];
    
    // Comment 7
    [comments addObject:@"ผมว่ามัน April Fool ไม่ใช่ตรงที่โกหกว่ามันทำได้หรอก แต่ตรงที่ว่าจะสนับสนุนให้ทำกันจริงจังมากกว่า ที่หลอก"];
    [commentAvatars addObject:@"Not Available at this Moment's picture.jpeg"];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [comments count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier;
    UITableViewCell *cell;
    
    if (indexPath.row == 0) {
        // Header Content Cell
        CellIdentifier = @"ContentViewCell";
        cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell == nil) {
            [self.contentViewCellNib instantiateWithOwner:self options:nil];
            cell = contentViewCell;
            self.contentViewCell = nil;
            NSLog(@"create new content cell");
        }
        
        ContentViewCell *contentViewCellTmp = (ContentViewCell *)cell;
        NSString *detailHtmlPath = [[NSBundle mainBundle] pathForResource:@"detail" ofType:@"html"];  
        NSString *detailHtml = [NSString stringWithContentsOfFile:detailHtmlPath encoding:NSUTF8StringEncoding error:nil];
        [contentViewCellTmp.contentWebView loadHTMLString:detailHtml baseURL:nil];
        
        // Adjust detail web view frame size to fit the content
        CGRect contentWebViewFrame = contentViewCellTmp.contentWebView.frame;
        contentWebViewFrame.size.height = 790;
        contentViewCellTmp.contentWebView.frame = contentWebViewFrame;
        
        // Adjust Comment image Location
        CGRect commentPictureViewFrame = contentViewCellTmp.commentPictureView.frame;
         commentPictureViewFrame.origin.y = contentViewCellTmp.contentWebView.frame.origin.y + contentViewCellTmp.contentWebView.frame.size.height;
        contentViewCellTmp.commentPictureView.frame = commentPictureViewFrame;
        
    } else {
        // Comment Cell
        CellIdentifier = @"CommentViewCell";
        cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell == nil) {
            [self.cellNib instantiateWithOwner:self options:nil];
            cell = tmpCell;
            self.tmpCell = nil;
            NSLog(@"create new comment cell");
        }
        
        CommentViewCell *commentCell = (CommentViewCell *)cell;
        commentCell.DetailView.text = [comments objectAtIndex:indexPath.row];
        
        CGRect cellFrame = commentCell.DetailView.frame;
        cellFrame.size.height = commentCell.DetailView.contentSize.height;
        commentCell.DetailView.frame = cellFrame;
        
        commentCell.Avatar.image = [UIImage imageNamed:[commentAvatars objectAtIndex:indexPath.row]];
    }
    
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        // Header Content Cell
        return 910;
    } else {
        // Comment Cell
        CGSize constraintSize;
        constraintSize.width = 231.0f;
        constraintSize.height = 1000;
        NSString *theText = [comments objectAtIndex:indexPath.row];
        CGSize theSize = [theText sizeWithFont:[UIFont systemFontOfSize:17.0f] constrainedToSize:constraintSize lineBreakMode:UILineBreakModeWordWrap];
        NSLog(@"%f", theSize.height);
        
        if (50 + theSize.height < 83) {
            return 83;
        } else {
            return 50 + theSize.height;
        } 
    }
    
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];
     */
}

@end
