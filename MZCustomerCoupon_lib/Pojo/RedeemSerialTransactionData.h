//
//  RedeemSerialTransactionData.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import "MZJastor.h"

NS_ASSUME_NONNULL_BEGIN

@interface RedeemSerialTransactionData : MZJastor
@property (nonatomic, strong) NSString *serial;
@property (nonatomic, strong) NSString *redeem_value;
@end

NS_ASSUME_NONNULL_END
