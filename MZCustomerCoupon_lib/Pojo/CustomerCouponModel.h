//
//  CustomerCouponModel.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import "MZJastor.h"
#import "CustomerCouponData.h"

NS_ASSUME_NONNULL_BEGIN

@interface CustomerCouponModel : MZJastor
@property (nonatomic, strong) CustomerCouponData *customer_coupon;

@end

NS_ASSUME_NONNULL_END
