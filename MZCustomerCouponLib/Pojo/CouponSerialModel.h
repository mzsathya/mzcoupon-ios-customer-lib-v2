//
//  CouponSerialModel.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import "MZJastor.h"
#import "CouponSerialData.h"
#import "SerialData.h"
#import "CouponMerchantData.h"

NS_ASSUME_NONNULL_BEGIN

@interface CouponSerialModel : MZJastor
@property (nonatomic, strong) CouponSerialData *coupon;
@property (nonatomic, strong) SerialData *serial;
@property (nonatomic, strong) CouponMerchantData *merchant;
@property (nonatomic, strong) NSMutableArray *outlets;
@property (nonatomic, strong) NSMutableArray *coupon_images;
@end

NS_ASSUME_NONNULL_END
