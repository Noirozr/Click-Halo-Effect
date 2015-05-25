//
//  ViewController.m
//  ClickEffect
//
//  Created by Yongjia Liu on 13-12-13.
//  Copyright (c) 2013年 Yongjia Liu. All rights reserved.
//

#import "ViewController.h"
#import "EffectView.h"
@interface ViewController ()
@property(nonatomic)EffectView *effectView;
@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor blueColor]];
    CGRect mainScreenBounds=[UIScreen mainScreen].bounds;
    self.effectView=[[EffectView alloc]initWithFrame:mainScreenBounds];
    [self.view addSubview:self.effectView];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
