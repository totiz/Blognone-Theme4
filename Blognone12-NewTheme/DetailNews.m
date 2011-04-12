//
//  DetailNews.m
//  Blognone12-NewTheme
//
//  Created by Nattapon on 3/28/11.
//  Copyright 2011 iphone developer. All rights reserved.
//

#import "DetailNews.h"


@implementation DetailNews
@synthesize myWebView;

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
    [myWebView release];
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
    //[myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://totiz.info/totiz/2/blognone2.html"]]];
    [myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"blognone4" ofType:@"html"]isDirectory:NO]]];
    
    NSLog(@"%@", [[NSBundle mainBundle] pathForResource:@"blognone4" ofType:@"html"]);
    NSLog(@"%@", [[NSBundle mainBundle] bundlePath]);
    
    //navCon.navigationBar.tintColor = [UIColor redColor];
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:54.0f/255.0f green:92.0f/255.0f blue:138.0f/255.0f alpha:1.0f];;
}

- (void)viewDidUnload
{
    [self setMyWebView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
