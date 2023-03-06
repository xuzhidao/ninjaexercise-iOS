//
//  ViewController.m
//  Ninjia-Interview-iOS
//
//  Created by Hsing on 2023/3/6.
//

#import "MainViewController.h"

#import "Test1ViewController.h"
#import "Test2ViewController.h"

@interface MainViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *table;

@end

@implementation MainViewController

- (UITableView *)table {
    if (!_table) {
        _table = [[UITableView alloc] init];
    }
    return _table;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Main";
}


- (void)setupSubviews {
    [self.view addSubview:self.table];
    
    self.table.delegate = self;
    self.table.dataSource = self;
    [self.table registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewID"];
}

- (void)setupConstraints {
    [self.table mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view);
    }];
}

#pragma mark - UITableView

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewID" forIndexPath:indexPath];
    
    if (indexPath.row == 0) {
        cell.textLabel.text = @"Test1";
    } else if (indexPath.row == 1) {
        cell.textLabel.text = @"Test2";
    }
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        Test1ViewController *viewController = [[Test1ViewController alloc] init];
        
        [self.navigationController pushViewController:viewController animated:YES];
    } else if (indexPath.row == 1) {
        Test2ViewController *viewController = [[Test2ViewController alloc] init];
        
        [self.navigationController pushViewController:viewController animated:YES];
    }
}

@end
