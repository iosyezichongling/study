//
//  ViewController.m
//  UUID
//
//  Created by sjq on 2016/11/16.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import "ViewController.h"

#import "UUID.h"

@interface ViewController ()

@property (nonatomic , strong) UIDevice  *myDevice;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString * uuid= [UUID getUUID];
    NSLog(@"uuid=%@",uuid);
    
    
    
    //UIDevice *deviece = [UIDevice currentDevice];
    
   // NSString *UUID = deviece.identifierForVendor.UUIDString;
    
   // NSLog(@"uuid2=%@",UUID);

    // UIDevice *device =  UIDevice. 2016-11-16 16:27:59.753386 UUID[12283:3873568] uuid2=FFC25992-25FA-42EB-89CC-DAC7D1304D04
    
}




@end
