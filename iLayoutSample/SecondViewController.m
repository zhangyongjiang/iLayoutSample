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
    
    UITextField* firstNameField = [[UITextFieldWithPadding alloc] initWithID:@"firstNameField"];
    UITextField* lastNameField = [[UITextFieldWithPadding alloc] initWithID:@"lastNameField"];
    UIButton* changeThemeBtn = [[UIButton alloc] init];
    
    [firstNameField addCssClasses:@"FullWidth"];
    [lastNameField addCssClasses:@"FullWidth"];
    [changeThemeBtn addCssClasses:@"FullWidth"];
    [changeThemeBtn setTitle:@"Change Theme" forState:UIControlStateNormal];
    
    [self.view addSubviews:[NSArray arrayWithObjects:changeThemeBtn, firstNameField,lastNameField, nil]];
    [changeThemeBtn alignParentBottomWithMarghin:60];

    [changeThemeBtn addTarget:self action:@selector(changeTheme:) forControlEvents:UIControlEventTouchUpInside];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(themeChanged) name:@"ThemeChanged" object:nil];
}

-(void)themeChanged {
    [self.view applyCssRecursive];
}

-(void)changeTheme:(id)sender {
    NSString* theme = [UIView theme];
    if ([theme isEqualToString:@""]) {
        [UIView setTheme:@"fire-"];
    }
    else {
        [UIView setTheme:@""];
    }
}

@end
