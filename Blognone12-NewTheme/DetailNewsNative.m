//
//  DetailNewsNative.m
//  Blognone12-NewTheme
//
//  Created by Nattapon on 3/31/11.
//  Copyright 2011 iphone developer. All rights reserved.
//

#import "DetailNewsNative.h"


@implementation DetailNewsNative
@synthesize TitleTextView;
@synthesize textDetailWebView;
@synthesize mainScrollView;
@synthesize commentView;
@synthesize commentView1;
@synthesize commentView2;

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
    [TitleTextView release];
    [textDetailWebView release];
    [mainScrollView release];
    [commentView release];
    [commentView1 release];
    [commentView2 release];
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
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:54.0f/255.0f green:92.0f/255.0f blue:138.0f/255.0f alpha:1.0f];;
    
    
    
    // Adjust scrollview size
    mainScrollView.contentSize = CGSizeMake(320, 1200);
    
    // Adjust detail web view frame size to fit the content
    CGRect textDetailWebViewFrame = textDetailWebView.frame;
    textDetailWebViewFrame.size.height = 790;
    textDetailWebView.frame = textDetailWebViewFrame;
    
    
    // Adjust comment Photo Location
    CGRect commentViewFrame = commentView.frame;
    commentViewFrame.origin.y = textDetailWebView.frame.origin.y + textDetailWebView.frame.size.height;
    commentView.frame = commentViewFrame;
    
    // Adjust Comment View 1
    CGRect commentView1Frame = commentView1.frame;
    commentView1Frame.origin.y = commentView.frame.origin.y + commentView.frame.size.height;
    commentView1.frame = commentView1Frame;
    
    // Adjust Comment View 2
    CGRect commentView2Frame = commentView2.frame;
    commentView2Frame.origin.y = commentView1.frame.origin.y + commentView1.frame.size.height;
    commentView2.frame = commentView2Frame;
}

- (void)viewDidUnload
{
    [self setTitleTextView:nil];
    [self setTextDetailWebView:nil];
    [self setMainScrollView:nil];
    [self setCommentView:nil];
    [self setCommentView1:nil];
    [self setCommentView2:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    NSLog(@"start load");
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSLog(@"load finish");
    NSLog ( @"Client height: %@", [textDetailWebView stringByEvaluatingJavaScriptFromString: @"document.body.clientHeight"] );
}

@end
