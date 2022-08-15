//
//  CouponImagesData.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import "MZJastor.h"

NS_ASSUME_NONNULL_BEGIN

@interface CouponImagesData : MZJastor
@property (nonatomic, strong) NSString *pimage_id;
@property (nonatomic, strong) NSString *coupon_id;
@property (nonatomic, strong) NSString *coupon_image;
@property (nonatomic, strong) NSString *image_seq;
@property (nonatomic, strong) NSString *image_status;
@property (nonatomic, strong) NSString *created_on;
@property (nonatomic, strong) NSString *updated_on;
@property (nonatomic, strong) NSString *updated_by;
@property (nonatomic, strong) NSString *product_image;
@property (nonatomic, strong) NSString *orginal_image;
@property (nonatomic, strong) NSString *thumnail_image;
@end

NS_ASSUME_NONNULL_END
