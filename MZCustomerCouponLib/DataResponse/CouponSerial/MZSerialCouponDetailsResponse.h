//
//  MZSerialCouponDetailsResponse.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "MZJastor.h"
#import "CouponserialList.h"
NS_ASSUME_NONNULL_BEGIN

@interface MZSerialCouponDetailsResponse : MZJastor
@property (nonatomic, strong) CouponserialList *couponserial;

@property (nonatomic, strong)NSError *error;
@property (nonatomic, copy) NSString *status;
@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *message;
@property (nonatomic, copy) NSString *developerMessage;
@end

NS_ASSUME_NONNULL_END
