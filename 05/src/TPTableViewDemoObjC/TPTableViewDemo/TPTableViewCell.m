//
//  TPTableViewCell.m
//  TPTableViewDemo
//
//  Created by d.taraev on 13.10.16.
//  Copyright © 2016 mail.ru. All rights reserved.
//

#import "TPTableViewCell.h"
#import "TPCellModel.h"

@interface TPTableViewCell  ()

@property (weak, nonatomic) IBOutlet UIImageView *cellImageView;
@property (weak, nonatomic) IBOutlet UILabel *cellLabel;

@end

@implementation TPTableViewCell

- (void)prepareForReuse {
    self.textLabel.text = nil;
}

- (void)fillCellWithModel:(TPCellModel *)model {
    self.cellImageView.image = [UIImage imageNamed:model.imageName];
    self.cellLabel.text = model.name;
    
    self.cellImageView.layer.masksToBounds = YES;
    self.cellImageView.layer.cornerRadius = self.cellImageView.frame.size.width / 2;//25.f;
}

@end
