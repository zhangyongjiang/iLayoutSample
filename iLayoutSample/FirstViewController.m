//
//  FirstViewController.m
//  iLayoutSample
//
//  Created by Kevin Zhang on 11/6/14.
//  Copyright (c) 2014 Gaoshin. All rights reserved.
//

#import "FirstViewController.h"
#import "UIView+CSS.h"
#import "UIView+Position.h"
#import "UIView+Autolayout.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITextField* firstNameField = [[UITextField alloc] initWithCssClasses:@"FullWidth"];
    UITextField* lastNameField = [[UITextField alloc] initWithCssClasses:@"FullWidth"];
    UIButton* loginBtn = [[UIButton alloc] initWithCssClasses:@"FullWidth LoginBtn"];
    
    [self.view addSubviews:[NSArray arrayWithObjects:firstNameField, lastNameField, loginBtn, nil]];
    [self.view autoLayout:firstNameField marginTop:30];
    [self.view autoLayout:lastNameField belowView:firstNameField margin:2];
    [self.view autoLayout:loginBtn belowView:lastNameField margin:2];
    
    
}

@end
