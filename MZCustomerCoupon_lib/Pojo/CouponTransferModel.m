//
//  CouponTransferModel.m
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "CouponTransferModel.h"

@implementation CouponTransferModel
@synthesize customer_id;
@synthesize lang;
@synthesize sender_message;
@synthesize transfer_template_id;
@synthesize transfer_to;

+ (Class)transfer_to_class {
    return [CouponTransferData class];
}
@end
