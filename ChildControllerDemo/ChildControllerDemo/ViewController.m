//
//  ViewController.m
//  ChildControllerDemo
//
//  Created by Lex on 12/25/20.
//

#import "ViewController.h"
#import "FirstViewController.h"
#import "SecondController.h"

@interface ViewController ()
{
    UIViewController *currentVC;
}

@property (nonatomic, strong) UIView *showArea;

@property (nonatomic, strong) FirstViewController *firstVC;
@property (nonatomic, strong) SecondController *secondVC;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initChildrenControllers];
    
    [self initShowArea];
    
    [self initButtons];
}

- (void)initChildrenControllers {
    _firstVC = [[FirstViewController alloc] init];
    [self addChildViewController:_firstVC];
    [_firstVC didMoveToParentViewController:self];
    
    _secondVC = [[SecondController alloc] init];
    [self addChildViewController:_secondVC];
    [_secondVC didMoveToParentViewController:self];
}


- (void)initShowArea {
    self.showArea = [[UIView alloc] initWithFrame:CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, UIScreen.mainScreen.bounds.size.height)];
    self.showArea.layer.masksToBounds = YES;
    [self.view addSubview:self.showArea];
    
    [self.showArea addSubview:_firstVC.view];
    currentVC = _firstVC;
}

- (void)initButtons {
    CGFloat homeIndicator = ((UIWindow *)UIApplication.sharedApplication.windows.firstObject).safeAreaInsets.bottom;
    
    UIButton *first = [[UIButton alloc] initWithFrame:CGRectMake(0, UIScreen.mainScreen.bounds.size.height - 48 - homeIndicator, UIScreen.mainScreen.bounds.size.width / 2, 48 + homeIndicator)];
    first.backgroundColor = UIColor.blueColor;
    [self.view addSubview:first];
    first.tag = 0;
    [first addTarget:self action:@selector(buttonTappedAction:) forControlEvents:UIControlEventTouchDown];
    
    UIButton *second = [[UIButton alloc] initWithFrame:CGRectMake(UIScreen.mainScreen.bounds.size.width / 2, UIScreen.mainScreen.bounds.size.height - 48 - homeIndicator, UIScreen.mainScreen.bounds.size.width / 2, 48 + homeIndicator)];
    second.backgroundColor = UIColor.orangeColor;
    [self.view addSubview:second];
    second.tag = 1;
    [second addTarget:self action:@selector(buttonTappedAction:) forControlEvents:UIControlEventTouchDown];
}

- (void)buttonTappedAction:(UIButton *)button {
    NSLog(@"\n--------------------------------------------------------------------------------------------- ❗️ Button Tapped \n");
    if (button.tag == 0) {
        if (currentVC == _firstVC) {
            return;
        }
        __weak typeof(self) weakSelf = self;
        [self transitionFromViewController:currentVC toViewController:_firstVC duration:0.25 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
            
        } completion:^(BOOL finished) {
            __strong typeof(self) self = weakSelf;
            self->currentVC = self.firstVC;
        }];
    } else if (button.tag == 1) {
        if (currentVC == _secondVC) {
            return;
        }
        __weak typeof(self) weakSelf = self;
        [self transitionFromViewController:currentVC toViewController:_secondVC duration:0.25 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
            
        } completion:^(BOOL finished) {
            __strong typeof(self) self = weakSelf;
            self->currentVC = self.secondVC;
        }];
    }
}

@end
