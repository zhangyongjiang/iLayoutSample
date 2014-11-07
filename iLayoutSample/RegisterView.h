//
//  RegisterView.h
//  iLayoutSample
//
//  Created by Kevin Zhang on 11/6/14.
//  Copyright (c) 2014 Gaoshin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+CSS.h"

@interface RegisterView : UIView

@property(strong, nonatomic) UIButton* btnSignup;
@property(strong, nonatomic) UITextField* firstNameField;
@property(strong, nonatomic) UITextField* lastNameField;
@property(strong, nonatomic) UITextField* emailField;
@property(strong, nonatomic) UITextField* passwordField;
@property(strong, nonatomic) UITextField* locationField;

@end
