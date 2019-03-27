//
//  TPTableViewCell.h
//  TPTableViewDemo
//
//  Created by d.taraev on 13.10.16.
//  Copyright © 2016 mail.ru. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TPCellModel;

@interface TPTableViewCell : UITableViewCell

- (void)fillCellWithModel:(TPCellModel *)model;

@end
