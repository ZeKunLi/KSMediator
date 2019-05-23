//
//  Target_A.m
//  KSMediator
//
//  Created by lizekun on 2019/3/22.
//  Copyright © 2019 Frank. All rights reserved.
//

#import "Target_A.h"
#import "DemoModuleADetailViewController.h"
@implementation Target_A
- (UIViewController *)Action_nativeFetchDetailViewController:(NSDictionary *)params {
    // 因为action是从属于ModuleA的，所以action直接可以使用ModuleA里的所有声明
    DemoModuleADetailViewController *viewController = [[DemoModuleADetailViewController alloc] init];
    viewController.valueLabel.text = params[@"key"];
    return viewController;
}
@end
