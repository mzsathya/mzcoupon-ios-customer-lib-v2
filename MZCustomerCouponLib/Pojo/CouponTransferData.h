//
//  CouponTransferData.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "MZJastor.h"

NS_ASSUME_NONNULL_BEGIN

@interface CouponTransferData : MZJastor
@property (nonatomic, strong) NSMutableArray *serials;
@property (nonatomic, strong) NSString *customer_email;
@end

NS_ASSUME_NONNULL_END
