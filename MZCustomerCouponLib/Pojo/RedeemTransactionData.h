//
//  RedeemTransactionData.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import "MZJastor.h"

NS_ASSUME_NONNULL_BEGIN

@interface RedeemTransactionData : MZJastor
@property (nonatomic, strong) NSString *outlet_id;
@property (nonatomic, strong) NSString *lang;
@property (nonatomic, strong) NSString *transaction_by;
@property (nonatomic, strong) NSString *transaction_note;

@end

NS_ASSUME_NONNULL_END
