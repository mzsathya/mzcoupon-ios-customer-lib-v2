//
//  CouponserialList.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "MZJastor.h"
#import "CouponSerialData.h"
#import "SerialData.h"
#import "CouponMerchantData.h"
NS_ASSUME_NONNULL_BEGIN

@interface CouponserialList : MZJastor
@property (nonatomic, strong) CouponSerialData *coupon;
@property (nonatomic, strong) SerialData *serial;
@property (nonatomic, strong) CouponMerchantData *merchant;
@property (nonatomic, strong) NSMutableArray *outlets;
@property (nonatomic, strong) NSMutableArray *coupon_images;
//@property (nonatomic, strong) NSMutableArray *couponserial;
@end

NS_ASSUME_NONNULL_END
