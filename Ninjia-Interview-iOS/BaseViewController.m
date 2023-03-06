//
//  BaseViewController.m
//  Ninjia-Interview-iOS
//
//  Created by Hsing on 2023/3/6.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setupSubviews];
    [self setupConstraints];
}

- (void)setupSubviews {
    
}

- (void)setupConstraints {
    
}

@end
