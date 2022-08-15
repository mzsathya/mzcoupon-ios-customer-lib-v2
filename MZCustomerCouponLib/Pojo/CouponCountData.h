//
//  CouponCountData.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import "MZJastor.h"

NS_ASSUME_NONNULL_BEGIN

@interface CouponCountData : MZJastor
@property (nonatomic, strong) NSString *available_coupon;
@property (nonatomic, strong) NSString *issue_count;
@property (nonatomic, strong) NSString *redeem_count;
@property (nonatomic, strong) NSString *available_packs;
@property (nonatomic, strong) NSString *issue_packs;
@property (nonatomic, strong) NSString *redeem_packs;


@end

NS_ASSUME_NONNULL_END
