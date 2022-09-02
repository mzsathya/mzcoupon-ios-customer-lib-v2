//
//  CouponSerialListModel.m
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "CouponSerialListModel.h"
#import "CouponSerialModel.h"

@implementation CouponSerialListModel
@synthesize couponserial;

+ (Class)couponserial_class {
    return [CouponserialList class];
}
@end
