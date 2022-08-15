//
//  SerialTransactionsModel.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "MZJastor.h"
#import "TransactionIssueData.h"
#import "TransactionRedeemData.h"
#import "TransactionVoidData.h"
#import "TransactionAllocationData.h"
NS_ASSUME_NONNULL_BEGIN

@interface SerialTransactionsModel : MZJastor
@property (nonatomic, strong) TransactionIssueData *issue;
@property (nonatomic, strong) TransactionRedeemData *redeem;
//@property (nonatomic, strong) TransactionVoidData *void;
@property (nonatomic, strong) TransactionAllocationData *allocation;
@end

NS_ASSUME_NONNULL_END
