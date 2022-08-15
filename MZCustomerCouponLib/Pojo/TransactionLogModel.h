//
//  TransactionLogModel.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "MZJastor.h"
#import "TransactionLogData.h"
NS_ASSUME_NONNULL_BEGIN

@interface TransactionLogModel : MZJastor
@property (nonatomic, strong)TransactionLogData *transaction;
@property (nonatomic, strong)NSMutableArray *transaction_details;
@end

NS_ASSUME_NONNULL_END
