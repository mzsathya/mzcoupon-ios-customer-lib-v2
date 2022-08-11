//
//  RedeemCouponCommitData.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import "MZJastor.h"

NS_ASSUME_NONNULL_BEGIN

@interface RedeemCouponCommitData : MZJastor
@property (nonatomic, strong) NSString *transaction_note;
@property (nonatomic, strong) NSString *transaction_ref_no;
@property (nonatomic, strong) NSString *transaction_by;
@end

NS_ASSUME_NONNULL_END
