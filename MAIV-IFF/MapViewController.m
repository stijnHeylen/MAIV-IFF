//
//  MapViewController.m
//  MAIV-IFF
//
//  Created by Stijn Heylen on 26/03/14.
//  Copyright (c) 2014 Stijn Heylen. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

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
    // Do any additional setup after loading the view.
    
    //TODO: DELETE!
    UIImage *btnNextImage = [UIImage imageNamed:@"btnNext"];
    UIButton *btnNext = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnNext setBackgroundImage:btnNextImage forState:UIControlStateNormal];
    btnNext.frame = CGRectMake(0, 0, btnNextImage.size.width, btnNextImage.size.height);
    btnNext.center = CGPointMake((self.view.frame.size.width / 2), 950);
    [btnNext addTarget:self action:@selector(btnNextTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnNext];
}

-(void)btnNextTapped:(id)sender{
    QuestViewController *questVC = [[QuestViewController alloc] init];
    [self.navigationController pushViewController:questVC animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)loadView{
    CGRect bounds = [[UIScreen mainScreen] bounds];
    self.view = [[MapBoxView alloc] initWithFrame:bounds];
}

@end
