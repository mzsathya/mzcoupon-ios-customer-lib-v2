//
//  PaymentData.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import "MZJastor.h"

NS_ASSUME_NONNULL_BEGIN

@interface PaymentData : MZJastor
@property (nonatomic, strong) NSString *payment_id;
@property (nonatomic, strong) NSString *payment_type;
@property (nonatomic, strong) NSString *payment_Enviornment;
@property (nonatomic, strong) NSString *payment_status;
@property (nonatomic, strong) NSString *payment_detail_id;
@property (nonatomic, strong) NSString *merchant_id;
@property (nonatomic, strong) NSString *payment_name;
@property (nonatomic, strong) NSString *payment_logourl;
@property (nonatomic, strong) NSString *payment_merchant_id;
@property (nonatomic, strong) NSString *payment_key;
@property (nonatomic, strong) NSString *payment_token;
@property (nonatomic, strong) NSString *payment_url;
@property (nonatomic, strong) NSString *hash_code;
@property (nonatomic, strong) NSString *created_on;
@property (nonatomic, strong) NSString *updated_on;
@property (nonatomic, strong) NSString *updated_by;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic, strong) NSString *payment_privatekey;
@property (nonatomic, strong) NSString *decimal_place;
@property (nonatomic, strong) NSString *merchant_url_prefix;
@end

NS_ASSUME_NONNULL_END
