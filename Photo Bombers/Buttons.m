//
//  Buttons.m
//  Photo Bombers
//
//  Created by George Tsaousidis on 16/4/15.
//  Copyright (c) 2015 DFG-Team. All rights reserved.
//

#import "Buttons.h"
#import

@implementation Buttons

-(void)searchButton{
    
    UIButton *search = [UIButton buttonWithType:UIButtonTypeCustom];
    [search setContentMode:UIViewContentModeRedraw];
    [search setFrame:CGRectMake(240, 330, 50, 50)];
    [search setImage:[UIImage imageNamed:@"icn_filters.png"] forState:UIControlStateNormal];
    [search addTarget:self action:@selector(searchPressed) forControlEvents:UIControlEventTouchUpInside];
    [search setShowsTouchWhenHighlighted:YES];
    [[search layer] setBorderWidth:2.0f];
    [[search layer] setBorderColor:[UIColor whiteColor].CGColor];
    [[search layer] setCornerRadius:25.0f];
    
    search.imageView.layer.cornerRadius = 9.0f;
    search.layer.shadowRadius = 5.0f;
    search.layer.shadowColor = [UIColor blackColor].CGColor;
    search.layer.shadowOffset = CGSizeMake(0.0f, 1.0f);
    search.layer.shadowOpacity = 0.5f;
    search.layer.masksToBounds = NO;
    
}


/////////////////////////////
//PRESSED BUTTON FOR SEARCH//
/////////////////////////////


-(void)searchPressed{
    
    
    
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Search" message:@"Please enter a tag name:" delegate:self cancelButtonTitle:@"Continue" otherButtonTitles:nil];
    alert.alertViewStyle = UIAlertViewStylePlainTextInput;
    UITextField * alertTextField = [alert textFieldAtIndex:0];
    alertTextField.keyboardType = UIKeyboardAppearanceDefault;
    alertTextField.placeholder = @"Enter tag name";
    [alert show];
    
}

@end
