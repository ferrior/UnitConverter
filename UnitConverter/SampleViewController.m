//
//  SampleViewController.m
//  UnitConverter
//
//  Created by bliu on 1/29/16.
//  Copyright © 2016 bliu. All rights reserved.
//

#import "SampleViewController.h"

@interface SampleViewController ()
@property (weak, nonatomic) IBOutlet UIView *view1;
@property (strong, nonatomic) IBOutlet UITabBarItem *baritem;

@end

@implementation SampleViewController

- (instancetype)initWithNibName:(nullable NSString *)nibNameOrNil bundle:(nullable NSBundle *)nibBundleOrNil {
	if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
		self.tabBarItem.title = @"of xib";
	}
	
	return self;
}
- (void)awakeFromNib
{
	[self awakeFromNib];
	
}
- (void)prepareForInterfaceBuilder
{
	[super prepareForInterfaceBuilder];
}

- (void)viewDidLoad {
    [super viewDidLoad];

	//not full screen
	self.edgesForExtendedLayout = UIRectEdgeNone;
	
	//full screen
	//self.extendedLayoutIncludesOpaqueBars = YES;
	
	id topGuide = self.topLayoutGuide;
	id bottomGuide = self.bottomLayoutGuide;
	id view1 = self.view1;
	NSDictionary *viewsDictionary = NSDictionaryOfVariableBindings (view1, topGuide);
	
	[self.view addConstraints:
	 [NSLayoutConstraint constraintsWithVisualFormat: @"V:[topGuide]-8-[view1]"
											 options: 0
											 metrics: nil
											   views: viewsDictionary]
	 ];
	
	NSDictionary *viewsDictionary1 = NSDictionaryOfVariableBindings (view1, bottomGuide);
	[self.view addConstraints:
	 [NSLayoutConstraint constraintsWithVisualFormat: @"V:[view1]-8-[bottomGuide]"
											 options: 0
											 metrics: nil
											   views: viewsDictionary1]
	 ];
	

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
