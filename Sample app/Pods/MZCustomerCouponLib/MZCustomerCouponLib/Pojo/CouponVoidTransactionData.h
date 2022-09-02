//
//  CouponVoidTransactionData.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "MZJastor.h"

NS_ASSUME_NONNULL_BEGIN

@interface CouponVoidTransactionData : MZJastor
@property (nonatomic, strong) NSString *reference_id;
@property (nonatomic, strong) NSString *lang;
@property (nonatomic, strong) NSString *remarks;
@property (nonatomic, strong) NSString *delivery_method;
@property (nonatomic, strong) NSString *template_id;
@end

NS_ASSUME_NONNULL_END
