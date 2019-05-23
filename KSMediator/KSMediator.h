//
//  KSMediator.h
//  KSMediator
//
//  Created by lizekun on 2019/3/22.
//  Copyright © 2019 Frank. All rights reserved.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
extern NSString * const kKSMediatorParamsKeySwiftTargetModuleName;
@interface KSMediator : NSObject
+ (instancetype)sharedInstance;
// 本地组件调用入口
- (id)performTarget:(NSString *)targetName action:(NSString *)actionName params:(NSDictionary *)params shouldCacheTarget:(BOOL)shouldCacheTarget;
@end

NS_ASSUME_NONNULL_END
