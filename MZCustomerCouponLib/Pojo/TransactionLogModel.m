//
//  TransactionLogModel.m
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "TransactionLogModel.h"
#import "TransactionLogDetailsData.h"

@implementation TransactionLogModel
@synthesize transaction;
@synthesize transaction_details;

+ (Class)transaction_class {
    return [TransactionLogData class];
}
+ (Class)transaction_details_class {
    return [TransactionLogDetailsData class];
}
@end
