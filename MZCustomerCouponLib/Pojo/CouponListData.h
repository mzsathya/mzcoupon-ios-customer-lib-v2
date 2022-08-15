//
//  CouponListData.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import "MZJastor.h"
#import "CouponData.h"
#import "CouponCountData.h"
#import "CouponMetaData.h"
#import "CouponTimingsData.h"
#import "CouponLinksData.h"
#import "CouponMerchantData.h"


@interface CouponListData : MZJastor
@property (nonatomic, strong) CouponData *coupon;
@property (nonatomic, strong) CouponCountData *coupon_counts;
@property (nonatomic, strong) CouponMetaData *coupon_metadata;
@property (nonatomic, strong) CouponTimingsData *coupon_timings;
@property (nonatomic, strong) CouponLinksData *coupon_links;
@property (nonatomic, strong) CouponMerchantData *merchant;


@end


