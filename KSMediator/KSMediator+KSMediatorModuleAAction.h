//
//  KSMediator+KSMediatorModuleAAction.h
//  KSMediator
//
//  Created by lizekun on 2019/3/22.
//  Copyright © 2019 Frank. All rights reserved.
//

#import "KSMediator.h"
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface KSMediator (KSMediatorModuleAAction)
- (UIViewController *)KSMediator_viewControllerForDetail;

- (void)KSMediator_showAlertWithMessage:(NSString *)message canleAction:(void(^)(NSDictionary *info))cancelAction confirmAction:(void(^)(NSDictionary *info))confirmAction;

- (void)KSMediator_presentImage:(UIImage *)image;
@end

NS_ASSUME_NONNULL_END
