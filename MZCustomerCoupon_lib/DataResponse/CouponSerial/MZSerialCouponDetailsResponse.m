//
//  MZSerialCouponDetailsResponse.m
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "MZSerialCouponDetailsResponse.h"
#import "CouponSerialModel.h"
@implementation MZSerialCouponDetailsResponse
@synthesize couponserial;

@synthesize error;
@synthesize developerMessage;
@synthesize message;
@synthesize status;
@synthesize code;

+ (Class)couponserial_class {
    return [CouponserialList class];
}
@end
