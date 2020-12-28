//
//  FirstViewController.m
//  ChildControllerDemo
//
//  Created by Lex on 12/25/20.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.cyanColor;
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, UIScreen.mainScreen.bounds.size.height / 2 - 15, UIScreen.mainScreen.bounds.size.width, 30)];
    label.text = @"This is first controller.";
    [self.view addSubview:label];
    NSLog(@"\n--------------------------------------------------------------------------------------------- 🟨 FirstViewController didLoad\n");
}

- (void)viewWillAppear:(BOOL)animated {
//    [super viewWillAppear:animated];
    
    NSLog(@"\n--------------------------------------------------------------------------------------------- 🟨 FirstViewController willAppear\n");
}

- (void)viewDidAppear:(BOOL)animated {
//    [super viewDidAppear:animated];
    
    NSLog(@"\n--------------------------------------------------------------------------------------------- 🟨 FirstViewController didAppear\n");
}

- (void)viewWillDisappear:(BOOL)animated {
//    [super viewWillDisappear:animated];
    
    NSLog(@"\n--------------------------------------------------------------------------------------------- 🟨 FirstViewController willDisappear\n");
}

- (void)viewDidDisappear:(BOOL)animated {
//    [super viewDidDisappear:animated];
    
    NSLog(@"\n--------------------------------------------------------------------------------------------- 🟨 FirstViewController didDisappear\n");
}

@end
