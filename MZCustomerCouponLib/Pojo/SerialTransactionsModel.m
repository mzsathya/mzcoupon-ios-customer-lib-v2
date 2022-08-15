//
//  SerialTransactionsModel.m
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "SerialTransactionsModel.h"

@implementation SerialTransactionsModel
@synthesize issue;
@synthesize redeem;
//@synthesize void;
@synthesize allocation;

+ (Class)issue_class {
    return [TransactionIssueData class];
}
+ (Class)redeem_class {
    return [TransactionRedeemData class];
}
//+ (Class)void_class {
//    return [TransactionVoidData class];
//}
+ (Class)allocation_class {
    return [TransactionAllocationData class];
}
@end
