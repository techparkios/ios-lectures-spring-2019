//
//  TPCellModel.m
//  TPTableViewDemo
//
//  Created by d.taraev on 13.10.16.
//  Copyright © 2016 mail.ru. All rights reserved.
//

#import "TPCellModel.h"

@implementation TPCellModel

- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName {
    if (self = [super init]) {
        _name = name;
        _imageName = imageName;
    }
    return self;
}

@end
