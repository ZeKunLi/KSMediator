//
//  KSMediator+KSMediatorModuleAAction.m
//  KSMediator
//
//  Created by lizekun on 2019/3/22.
//  Copyright © 2019 Frank. All rights reserved.
//

#import "KSMediator+KSMediatorModuleAAction.h"

NSString * const kKSMediatorTargetA = @"A";
NSString * const kKSMediatorActionNativFetchDetailViewController = @"nativeFetchDetailViewController";
NSString * const kKSMediatorActionShowAlert = @"showAlert";
@implementation KSMediator (KSMediatorModuleAAction)
- (UIViewController *)KSMediator_viewControllerForDetail {
    UIViewController *viewController = [self performTarget:kKSMediatorTargetA
                                                    action:kKSMediatorActionNativFetchDetailViewController
                                                    params:@{@"key":@"lizekun"}
                                         shouldCacheTarget:NO
                                        ];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        // view controller 交付出去之后，可以由外界选择是push还是present
        return viewController;
    } else {
        // 这里处理异常场景，具体如何处理取决于产品
        return [[UIViewController alloc] init];
    }
}



- (void)KSMediator_showAlertWithMessage:(NSString *)message canleAction:(void(^)(NSDictionary *info))cancelAction confirmAction:(void(^)(NSDictionary *info))confirmAction {
    NSMutableDictionary *paramsToSend = [[NSMutableDictionary alloc] init];
    if (message) {
        paramsToSend[@"message"] = message;
    }
    
    if (cancelAction) {
        paramsToSend[@"cancelAction"] = cancelAction;
    }
    
    if (confirmAction) {
        paramsToSend[@"confirmAction"] = confirmAction;
    }
    
    [self performTarget:kKSMediatorTargetA
                 action:kKSMediatorActionShowAlert
                 params:paramsToSend
      shouldCacheTarget:NO];
}


@end
