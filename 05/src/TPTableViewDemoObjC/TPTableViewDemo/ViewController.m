//
//  ViewController.m
//  TPTableViewDemo
//
//  Created by d.taraev on 13.10.16.
//  Copyright © 2016 mail.ru. All rights reserved.
//

#import "ViewController.h"
#import "TPTableViewCell.h"
#import "TPCellModel.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray *_modelArray;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation ViewController

NSString* const kCellIdentifier = @"TPTableViewCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupModel];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
//    [_tableView registerNib:[UINib nibWithNibName:<#(nonnull NSString *)#> bundle:nil] forCellReuseIdentifier:kCellIdentifier];
//    [_tableView registerClass:[TPTableViewCell class] forCellReuseIdentifier:kCellIdentifier];
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)setupModel {
    _modelArray = [[NSMutableArray alloc] init];
    for (int i=0; i<5; i++) {
        TPCellModel *model = [[TPCellModel alloc] initWithName:[NSString stringWithFormat:@"Sample Cell %d", i] imageName:@"logo.png"];
        [_modelArray addObject:model];
    }
}


#pragma mark - UITableView data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _modelArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80.f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TPTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentifier forIndexPath:indexPath];
    TPCellModel *model;
    if ([_modelArray[indexPath.row] isMemberOfClass:[TPCellModel class]]) {
        model = _modelArray[indexPath.row];
        [cell fillCellWithModel:model];
    }
    return cell;
}

@end
