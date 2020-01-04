//
//  Target_A.h
//  KSMediator
//
//  Created by lizekun on 2019/3/22.
//  Copyright © 2019 Frank. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface Target_A : NSObject
- (UIViewController *)Action_nativeFetchDetailViewController:(NSDictionary *)params;
- (void)Action_nativePresentImage:(NSDictionary *)params;
- (void)Action_nativeNoImage:(NSDictionary *)params;
- (void)Action_showAlert:(NSDictionary *)params;
@end

NS_ASSUME_NONNULL_END
