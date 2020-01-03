//
//  Target_A.m
//  KSMediator
//
//  Created by lizekun on 2019/3/22.
//  Copyright © 2019 Frank. All rights reserved.
//

#import "Target_A.h"
#import "DemoModuleADetailViewController.h"

typedef void(^KSUrlRouterCallbackBlock)(NSDictionary *info);

@implementation Target_A
- (UIViewController *)Action_nativeFetchDetailViewController:(NSDictionary *)params {
    // 因为action是从属于ModuleA的，所以action直接可以使用ModuleA里的所有声明
    DemoModuleADetailViewController *viewController = [[DemoModuleADetailViewController alloc] init];
    viewController.valueLabel.text = params[@"key"];
    return viewController;
}
- (void)Action_showAlert:(NSDictionary *)params {
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        KSUrlRouterCallbackBlock callback = params [@"cancelAction"];
        if (callback) {
            callback(@{@"alertAction":action});
        }
    }];
     
    UIAlertAction* confirmAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
       handler:^(UIAlertAction * action) {
        KSUrlRouterCallbackBlock callback = params [@"confirmAction"];
        if (callback) {
            callback(@{@"alertAction":callback});
        }
    }];
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"My Alert"
    message:params[@"message"]
    preferredStyle:UIAlertControllerStyleAlert];
    
    
    [alert addAction:cancelAction];
    [alert addAction:confirmAction];
    
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alert animated:YES completion:nil];
    
}
@end
