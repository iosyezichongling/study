//
//  KeyChainStore.h
//  UUID
//
//  Created by sjq on 2016/11/16.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KeyChainStore : NSObject

+ (void)save:(NSString *)service data:(id)data;
+ (id)load:(NSString *)service;
+ (void)deleteKeyData:(NSString *)service;

@end
