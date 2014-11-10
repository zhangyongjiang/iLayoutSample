//
//  RegisterView.m
//  iLayoutSample
//
//  Created by Kevin Zhang on 11/6/14.
//  Copyright (c) 2014 Gaoshin. All rights reserved.
//

#import "RegisterView.h"

@implementation RegisterView

-(void)initProperties {
    self.btnSignup = [[UIButton alloc] init];
    self.firstNameField = [[UITextField alloc] init];
    self.lastNameField = [[UITextField alloc] init];
    self.emailField = [[UITextField alloc] init];
    self.passwordField = [[UITextField alloc] init];
    self.locationField = [[UITextField alloc] init];
    
    NSArray* views = [NSArray arrayWithObjects:self.btnSignup, self.firstNameField, self.lastNameField, self.emailField, self.passwordField, self.locationField, nil];
    [self enableCssLayouts:views :YES];
    [self addSubviews:views];
}

@end
