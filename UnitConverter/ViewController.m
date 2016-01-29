//
//  ViewController.m
//  UnitConverter
//
//  Created by bliu on 1/27/16.
//  Copyright © 2016 bliu. All rights reserved.
//

#import "ViewController.h"
#import "DistanceConvertViewController.h"
#import "SampleViewController.h"
#import "LayoutGuideViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	//Load UIViewController from xib
	UIViewController *viewController = [[DistanceConvertViewController alloc] initWithNibName:@"DistanceConvertViewController" bundle:NULL];
	
	UIViewController *viewController1 = [[SampleViewController alloc] initWithNibName:@"SampleViewController" bundle:NULL];
	
	//Load UIViewController inside of a Xib
	NSArray *array = [[UINib nibWithNibName:@"LayoutGuideViewController" bundle:NULL] instantiateWithOwner:nil options:nil];
	UIViewController *viewController2 = array[0];
	
	//Load UIViewController inside of a storyboard
	UIViewController *viewController3 = [[UIStoryboard storyboardWithName:@"Main"
							   bundle:NULL] instantiateViewControllerWithIdentifier:@"viewControllerInStoryBoard"];
	
	NSMutableArray* newViewControllers = [@[viewController2,viewController3, viewController1,viewController] mutableCopy];
	NSArray* viewControllers = self.viewControllers;
	[newViewControllers addObjectsFromArray:viewControllers];
	self.viewControllers =  newViewControllers;
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
