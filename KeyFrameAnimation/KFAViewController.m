//
//  KFAViewController.m
//  KeyFrameAnimation
//
//  Created by Mark Granoff on 2/28/12.
//  Copyright (c) 2012 Hawk iMedia. All rights reserved.
//

#import "KFAViewController.h"
#import <QuartzCore/QuartzCore.h>

@implementation KFAViewController
@synthesize button;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setButton:nil];
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
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

-(IBAction)buttonPress:(id)sender
{
    NSString *keyPath = @"anchorPoint.x";    
    CAKeyframeAnimation *kfa = [CAKeyframeAnimation animationWithKeyPath:keyPath];
    [kfa setValues:[NSArray arrayWithObjects:
                    [NSNumber numberWithFloat:-.05],
                    [NSNumber numberWithFloat:.1],
                    [NSNumber numberWithFloat:-.1],
                    [NSNumber numberWithFloat:.1],
                    [NSNumber numberWithFloat:-.05],
                    nil]];    
    [kfa setDuration:.35];
    [kfa setAdditive:YES];
    [kfa setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    [button.layer addAnimation:kfa forKey:nil];

}
@end
