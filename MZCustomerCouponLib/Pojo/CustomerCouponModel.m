//
//  CustomerCouponModel.m
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import "CustomerCouponModel.h"

@implementation CustomerCouponModel
@synthesize customer_coupon;

+ (Class)customer_coupon_class {
    return [CustomerCouponData class];
}
@end
