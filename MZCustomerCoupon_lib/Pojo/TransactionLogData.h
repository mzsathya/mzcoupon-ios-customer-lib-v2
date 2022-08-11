//
//  TransactionLogData.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "MZJastor.h"

NS_ASSUME_NONNULL_BEGIN

@interface TransactionLogData : MZJastor
@property (nonatomic, strong) NSString *transaction_id;
@property (nonatomic, strong) NSString *customer_id;
@property (nonatomic, strong) NSString *merchant_id;
@property (nonatomic, strong) NSString *transaction_date;
@property (nonatomic, strong) NSString *transaction_no;
@property (nonatomic, strong) NSString *transaction_total;
@property (nonatomic, strong) NSString *transaction_status;
@property (nonatomic, strong) NSString *pay_receipt;
@property (nonatomic, strong) NSString *pay_response;
@property (nonatomic, strong) NSString *transfer_to;
@property (nonatomic, strong) NSString *transfer_from;
@property (nonatomic, strong) NSString *pay_token;
@property (nonatomic, strong) NSString *reward_point;
@property (nonatomic, strong) NSString *hash_code;
@property (nonatomic, strong) NSString *created_on;
@property (nonatomic, strong) NSString *updated_on;
@property (nonatomic, strong) NSString *updated_by;
@property (nonatomic, strong) NSString *coupon_type;
@property (nonatomic, strong) NSString *payment_detail_id;
@property (nonatomic, strong) NSString *redirect_url;
@property (nonatomic, strong) NSString *promo_code;
@property (nonatomic, strong) NSString *selfdelivery;
@property (nonatomic, strong) NSString *user_id;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic, strong) NSString *coupon_via;
@property (nonatomic, strong) NSString *reference_no_image;
@property (nonatomic, strong) NSString *payment_name;
@property (nonatomic, strong) NSString *reference_no;
@property (nonatomic, strong) NSString *merchant_customer_id;
@end

NS_ASSUME_NONNULL_END
