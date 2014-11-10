//
//  SecondViewController.m
//  iLayoutSample
//
//  Created by Kevin Zhang on 11/6/14.
//  Copyright (c) 2014 Gaoshin. All rights reserved.
//

#import "SecondViewController.h"
#import "UIView+CSS.h"
#import "UIView+Position.h"
#import "UIView+Autolayout.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITextField* firstNameField = [[UITextField alloc] initWithID:@"firstNameField"];
    UITextField* lastNameField = [[UITextField alloc] initWithID:@"lastNameField"];
    UIButton* loginBtn = [[UIButton alloc] init];
    
    [firstNameField addCssClasses:@"FullWidth"];
    [lastNameField addCssClasses:@"FullWidth"];
    [loginBtn addCssClasses:@"LoginBtn FullWidth"];
    
    [self.view addSubviews:[NSArray arrayWithObjects:loginBtn, firstNameField,lastNameField, nil]];

}

@end
