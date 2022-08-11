//
//  MZIssueCouponResponse.m
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import "MZIssueCouponResponse.h"
#import "CustomerCouponModel.h"
#import "DeveloperMessageData.h"

@implementation MZIssueCouponResponse
@synthesize transaction_id;
@synthesize updated_on;
@synthesize po_status;
@synthesize po_date;
@synthesize pay_response;
@synthesize merchant_id;
@synthesize pay_receipt;
//@synthesize message;
@synthesize coupon_via;
@synthesize po_total;
@synthesize hash_code;
@synthesize created_on;
@synthesize reward_point;
@synthesize payment_name;
@synthesize customer_id;
@synthesize po_no;
@synthesize customer_coupons;


@synthesize error;
@synthesize developerMessage;
@synthesize message;
@synthesize status;
@synthesize code;

+ (Class)customer_coupons_class {
    return [CustomerCouponModel class];
}
+ (Class)developerMessage_class {
    return [DeveloperMessageData class];
}
@end
