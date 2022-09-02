//
//  CouponLinksData.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import "MZJastor.h"

NS_ASSUME_NONNULL_BEGIN

@interface CouponLinksData : MZJastor
@property (nonatomic, strong) NSString *thumbnail_url;
@property (nonatomic, strong) NSString *review_url;
@property (nonatomic, strong) NSString *branchio_url;
@property (nonatomic, strong) NSString *youtube_url;
@property (nonatomic, strong) NSString *online_shop_url;
@property (nonatomic, strong) NSString *video_url;
@property (nonatomic, strong) NSString *success_redirect_url;
@property (nonatomic, strong) NSString *passbook_url;
@end

NS_ASSUME_NONNULL_END
