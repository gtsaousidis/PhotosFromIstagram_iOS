//
//  LogIn.m
//  Photo Bombers
//
//  Created by George Tsaousidis on 19/4/15.
//  Copyright (c) 2015 DFG-Team. All rights reserved.
//

#import "LogIn.h"
#import "Users.h"

@interface LogIn ()

@end

@implementation LogIn

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"Cancel" style:UIBarButtonItemStyleBordered target:self action:@selector(closeMethod)];
    
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:242.0 / 255.0 green:122.0 / 255.0 blue:87.0 / 255.0 alpha:1.0];
    
    self.title = @"Log In";
    
    self.view.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.95];
    
}
- (IBAction)logOut:(id)sender {
    
    
    
    [[Users currentUser] loggedOut];
    
    [self closeMethod];
    
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

-(void)closeMethod{

    [self dismissViewControllerAnimated:YES completion:nil];

}

@end
