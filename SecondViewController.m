//
//  SecondViewController.m
//  TestProject
//
//  Created by Muqeem Ahmad on 08/12/17.
//  Copyright © 2017 Muqeem Ahmad. All rights reserved.
//

#import "SecondViewController.h"
#import <ZendeskSDK/ZendeskSDK.h>

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    //    // Create a Content Model to pass in
    ZDKHelpCenterOverviewContentModel *helpCenterContentModel = [ZDKHelpCenterOverviewContentModel defaultContent];
    // Show Help Center
    [ZDKHelpCenter pushHelpCenterOverview:self.navigationController withContentModel:helpCenterContentModel];

    
    
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
