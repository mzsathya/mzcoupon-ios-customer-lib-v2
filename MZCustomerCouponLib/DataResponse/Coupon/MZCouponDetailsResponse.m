//
//  MZCouponDetailsResponse.m
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import "MZCouponDetailsResponse.h"
#import "CouponImageListData.h"
#import "CouponOutletListData.h"

@implementation MZCouponDetailsResponse
@synthesize coupon;
@synthesize coupon_count;
@synthesize coupon_metadata;
@synthesize coupon_timings;
@synthesize coupon_links;
@synthesize merchant;
@synthesize coupon_images;
@synthesize coupon_outlets;

@synthesize error;
@synthesize developerMessage;
@synthesize message;
@synthesize status;
@synthesize code;

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

+ (Class)coupon_images_class {
    return [CouponImageListData class];
}

+ (Class)coupon_outlets_class {
    return [CouponOutletListData class];
}
@end
