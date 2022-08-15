//
//  RedeemTransactionModel.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import "MZJastor.h"
#import "RedeemSerialTransactionData.h"
#import "RedeemTransactionData.h"
NS_ASSUME_NONNULL_BEGIN

@interface RedeemTransactionModel : MZJastor

@property (nonatomic, strong)RedeemTransactionData *txn_redeem;
@property (nonatomic, strong)RedeemSerialTransactionData *txn_serials;


@property (nonatomic, strong)NSError *error;
@property (nonatomic, copy) NSString *status;
@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *message;
@property (nonatomic, copy) NSString *developerMessage;
@end

NS_ASSUME_NONNULL_END
