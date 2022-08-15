//
//  RedeemTransactionModel.m
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import "RedeemTransactionModel.h"


@implementation RedeemTransactionModel
@synthesize txn_redeem;
@synthesize txn_serials;

@synthesize error;
@synthesize developerMessage;
@synthesize message;
@synthesize status;
@synthesize code;

+ (Class)txn_redeem_class {
    return [RedeemTransactionData class];
}
+ (Class)txn_serials_class {
    return [RedeemSerialTransactionData class];
}
@end
