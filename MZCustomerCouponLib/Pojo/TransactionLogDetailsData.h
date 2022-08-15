//
//  TransactionLogDetailsData.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "MZJastor.h"

NS_ASSUME_NONNULL_BEGIN

@interface TransactionLogDetailsData : MZJastor
@property (nonatomic, strong) NSString *transaction_detail_id;
@property (nonatomic, strong) NSString *transaction_id;
@property (nonatomic, strong) NSString *coupon_id;
@property (nonatomic, strong) NSString *product_id;
@property (nonatomic, strong) NSString *coupon_name;
@property (nonatomic, strong) NSString *coupon_price;
@property (nonatomic, strong) NSString *coupon_qty;
@property (nonatomic, strong) NSString *coupon_total;
@property (nonatomic, strong) NSString *status;
@property (nonatomic, strong) NSString *created_on;
@property (nonatomic, strong) NSString *updated_on;
@property (nonatomic, strong) NSString *updated_by;
@property (nonatomic, strong) NSString *notes;
@property (nonatomic, strong) NSString *coupon_code;
@end

NS_ASSUME_NONNULL_END
