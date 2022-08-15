//
//  CouponListData.m
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import "CouponListData.h"

@implementation CouponListData
@synthesize coupon;
@synthesize coupon_counts;
@synthesize coupon_metadata;
@synthesize coupon_timings;
@synthesize coupon_links;
@synthesize merchant;
+ (Class)coupon_class {
    return [CouponData class];
}
+ (Class)coupon_counts_class {
    return [CouponCountData class];
}
+ (Class)coupon_metadata_class {
    return [CouponMetaData class];
}
+ (Class)coupon_timings_class {
    return [CouponTimingsData class];
}
+ (Class)coupon_links_class {
    return [CouponLinksData class];
    
}+ (Class)merchant_class {
    return [CouponMerchantData class];
}
@end
