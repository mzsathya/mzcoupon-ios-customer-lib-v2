//
//  CouponSerialListModel.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "MZJastor.h"
#import "CouponserialList.h"
NS_ASSUME_NONNULL_BEGIN

@interface CouponSerialListModel : MZJastor
//@property (nonatomic, strong) NSMutableDictionary *couponserial;
@property (nonatomic, strong) CouponserialList *couponserial;

@end

NS_ASSUME_NONNULL_END
