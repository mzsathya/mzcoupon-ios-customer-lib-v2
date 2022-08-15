//
//  CustomerCouponData.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import "MZJastor.h"

NS_ASSUME_NONNULL_BEGIN

@interface CustomerCouponData : MZJastor
@property (nonatomic, strong) NSString *coupon_no;
@property (nonatomic, strong) NSString *coupon_serial;
@property (nonatomic, strong) NSString *coupon_code;
@property (nonatomic, strong) NSString *coupon_status;
@property (nonatomic, strong) NSString *updated_on;
@property (nonatomic, strong) NSString *purchase_date;
@property (nonatomic, strong) NSString *coupon_name;
@property (nonatomic, strong) NSString *product_desc;
@property (nonatomic, strong) NSString *orginal_price;
@property (nonatomic, strong) NSString *selling_price;
@property (nonatomic, strong) NSString *start_date;
@property (nonatomic, strong) NSString *end_date;

@end

NS_ASSUME_NONNULL_END
