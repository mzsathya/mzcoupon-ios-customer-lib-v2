//
//  TransactionRedeemData.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "MZJastor.h"

NS_ASSUME_NONNULL_BEGIN

@interface TransactionRedeemData : MZJastor
@property (nonatomic, strong) NSString *redeem_user_id;
@property (nonatomic, strong) NSString *redeem_user_type;
@end

NS_ASSUME_NONNULL_END
