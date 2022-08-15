//
//  DeveloperMessageData.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "MZJastor.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeveloperMessageData : MZJastor
@property (nonatomic, strong) NSString *coupon_code;
@property (nonatomic, strong) NSString *message;
@end

NS_ASSUME_NONNULL_END
