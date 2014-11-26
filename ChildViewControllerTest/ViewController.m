//
//  ViewController.m
//  ChildViewControllerTest
//
//  Created by Daniel Tull on 26.11.2014.
//  Copyright (c) 2014 Daniel Tull. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, weak) IBOutlet UIView *container;
@property (nonatomic) UIViewController *childViewController;
@end

@implementation ViewController

- (UIViewController *)childViewController {

	if (!_childViewController) {
		_childViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"test"];
		[self addChildViewController:_childViewController];
		[_childViewController didMoveToParentViewController:self];
	}

	return _childViewController;
}

- (IBAction)toggle:(id)sender {

	UIViewController *vc = self.childViewController;
	UIView *v = vc.view;

	if (v.superview) {

		[vc beginAppearanceTransition:NO animated:YES];
		[UIView animateWithDuration:0.3f animations:^{
			v.alpha = 0.0f;
		} completion:^(BOOL finished) {
			[v removeFromSuperview];
			[vc endAppearanceTransition];
		}];

	} else {

		v.alpha = 0.0f;
		v.frame = self.container.bounds;

		[vc beginAppearanceTransition:YES animated:YES];
		[self.container addSubview:v];
		[UIView animateWithDuration:0.3f animations:^{
			v.alpha = 1.0f;
		} completion:^(BOOL finished) {
			[vc endAppearanceTransition];
		}];
	}
}

@end
