//
//  UUID.m
//  UUID
//
//  Created by sjq on 2016/11/16.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import "UUID.h"
#import "KeyChainStore.h"

@implementation UUID

+(NSString *)getUUID
{
    NSString * strUUID = (NSString *)[KeyChainStore load:@"com.company.app.usernamepassword"];
    
    //首次执行该方法时，uuid为空
    if ([strUUID isEqualToString:@""] || !strUUID)
    {
        //生成一个uuid的方法
        CFUUIDRef uuidRef = CFUUIDCreate(kCFAllocatorDefault);
        
        strUUID = (NSString *)CFBridgingRelease(CFUUIDCreateString (kCFAllocatorDefault,uuidRef));
        
        //将该uuid保存到keychain
        [KeyChainStore save:KEY_USERNAME_PASSWORD data:strUUID];
        //2016-11-16 15:47:07.379347 UUID[12259:3864707] uuid=A384E2ED-20B8-45D9-A86D-7A7552C6DD75
        
        
    }
    return strUUID;
}

@end
