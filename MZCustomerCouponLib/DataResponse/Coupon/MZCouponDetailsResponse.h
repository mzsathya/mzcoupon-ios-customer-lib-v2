//
//  MZCouponDetailsResponse.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import <Foundation/Foundation.h>
#import "MZJastor.h"
#import "CouponData.h"
#import "CouponCountData.h"
#import "CouponMetaData.h"
#import "CouponTimingsData.h"
#import "CouponLinksData.h"
#import "CouponMerchantData.h"


@interface MZCouponDetailsResponse : MZJastor
@property (nonatomic, strong) CouponData *coupon;
@property (nonatomic, strong) CouponCountData *coupon_count;
@property (nonatomic, strong) CouponMetaData *coupon_metadata;
@property (nonatomic, strong) CouponTimingsData *coupon_timings;
@property (nonatomic, strong) CouponLinksData *coupon_links;
@property (nonatomic, strong) CouponMerchantData *merchant;
@property (nonatomic, strong) NSMutableArray *coupon_outlets;
@property (nonatomic, strong) NSMutableArray *coupon_images;

@property (nonatomic, strong)NSError *error;
@property (nonatomic, copy) NSString *status;
@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *message;
@property (nonatomic, copy) NSString *developerMessage;
@end


