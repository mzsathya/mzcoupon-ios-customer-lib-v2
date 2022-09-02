//
//  CouponVoidModel.m
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "CouponVoidModel.h"

@implementation CouponVoidModel
@synthesize txn_void;
@synthesize txn_serials;

+ (Class)txn_void_class {
    return [CouponVoidTransactionData class];
}
@end
