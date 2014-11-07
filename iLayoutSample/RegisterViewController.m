//
//  RegisterViewController.m
//  iLayoutSample
//
//  Created by Kevin Zhang on 11/6/14.
//  Copyright (c) 2014 Gaoshin. All rights reserved.
//

#import "RegisterViewController.h"
#import "RegisterView.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    RegisterView* rv = [[RegisterView alloc] initWithFrame:self.view.bounds];
    rv.backgroundColor = [UIColor grayColor];
    [self.view addSubview:rv];
}


@end
