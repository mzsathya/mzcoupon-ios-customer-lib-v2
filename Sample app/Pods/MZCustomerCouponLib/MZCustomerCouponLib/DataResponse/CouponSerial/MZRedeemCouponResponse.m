//
//  MZRedeemCouponResponse.m
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "MZRedeemCouponResponse.h"

@implementation MZRedeemCouponResponse
@synthesize transaction_id;
@synthesize outlet_id;
@synthesize merchant_id;
@synthesize user_type;
@synthesize lang;
@synthesize transaction_type;
@synthesize transaction_status;
@synthesize created_on;
@synthesize updated_on;
@synthesize reference_id;

@synthesize transfer_id;
@synthesize from_customer_id;
@synthesize sender_message;
@synthesize to_customer;

@synthesize transaction_ref_no;
@synthesize reference_image;

@synthesize txn_serials;
@synthesize redeem_response;

@synthesize error;
@synthesize developerMessage;
@synthesize message;
@synthesize status;
@synthesize code;

+ (Class)txn_serials_class {
    return [RedeemSerialTransactionData class];
}
+ (Class)redeem_response_class {
    return [RedeemResponseData class];
}

@end
