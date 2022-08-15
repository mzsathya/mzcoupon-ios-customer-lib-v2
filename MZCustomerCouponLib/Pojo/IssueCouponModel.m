//
//  IssueCouponModel.m
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import "IssueCouponModel.h"
#import "DeveloperMessageData.h"
@implementation IssueCouponModel
@synthesize customer;
@synthesize coupons;
@synthesize delivery_method;
@synthesize transaction_amount;
@synthesize lang;
@synthesize outlet_id;

@synthesize error;
@synthesize developerMessage;
@synthesize message;
@synthesize status;
@synthesize code;


+ (Class)customer_class {
    return [IssueCustomerData class];
}

+ (Class)coupons_class {
    return [CouponData class];
}
+ (Class)developerMessage_class {
    return [DeveloperMessageData class];
}
@end
