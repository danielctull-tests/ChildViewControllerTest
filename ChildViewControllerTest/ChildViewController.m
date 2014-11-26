//
//  ChildViewController.m
//  ChildViewControllerTest
//
//  Created by Daniel Tull on 26.11.2014.
//  Copyright (c) 2014 Daniel Tull. All rights reserved.
//

#import "ChildViewController.h"

@implementation ChildViewController

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	NSLog(@"%@:%@", self, NSStringFromSelector(_cmd));
}

- (void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];
	NSLog(@"%@:%@\ntop:    %@\nbottom: %@", self, NSStringFromSelector(_cmd), self.topLayoutGuide, self.bottomLayoutGuide);
}

- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
	NSLog(@"%@:%@", self, NSStringFromSelector(_cmd));
}

- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
	NSLog(@"%@:%@", self, NSStringFromSelector(_cmd));
}

@end
