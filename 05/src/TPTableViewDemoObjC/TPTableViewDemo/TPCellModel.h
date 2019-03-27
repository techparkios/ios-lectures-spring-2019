//
//  TPCellModel.h
//  TPTableViewDemo
//
//  Created by d.taraev on 13.10.16.
//  Copyright © 2016 mail.ru. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TPCellModel : NSObject

@property NSString *name;
@property NSString *imageName;

- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName;

@end
