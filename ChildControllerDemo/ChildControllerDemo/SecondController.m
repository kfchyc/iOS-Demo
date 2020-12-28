//
//  SecondController.m
//  ChildControllerDemo
//
//  Created by Lex on 12/25/20.
//

#import "SecondController.h"

@interface SecondController ()

@end

@implementation SecondController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.yellowColor;
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, UIScreen.mainScreen.bounds.size.height / 2 - 15, UIScreen.mainScreen.bounds.size.width, 30)];
    label.text = @"This is second controller.";
    label.textAlignment = NSTextAlignmentRight;
    [self.view addSubview:label];
    NSLog(@"\n--------------------------------------------------------------------------------------------- 🟩 SecondController didLoad\n");
}

- (void)viewWillAppear:(BOOL)animated {
    //    [super viewWillAppear:animated];
    
    NSLog(@"\n--------------------------------------------------------------------------------------------- 🟩 SecondController willAppear\n");
}

- (void)viewDidAppear:(BOOL)animated {
    //    [super viewDidAppear:animated];
    
    NSLog(@"\n--------------------------------------------------------------------------------------------- 🟩 SecondController didAppear\n");
}

- (void)viewWillDisappear:(BOOL)animated {
    //    [super viewWillDisappear:animated];
    
    NSLog(@"\n--------------------------------------------------------------------------------------------- 🟩 SecondController willDisappear\n");
}

- (void)viewDidDisappear:(BOOL)animated {
    //    [super viewDidDisappear:animated];
    
    NSLog(@"\n--------------------------------------------------------------------------------------------- 🟩 SecondController didDisappear\n");
}

@end
