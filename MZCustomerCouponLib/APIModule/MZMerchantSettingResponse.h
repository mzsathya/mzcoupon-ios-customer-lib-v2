//
//  MZMerchantSettingResponse.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "MZJastor.h"

NS_ASSUME_NONNULL_BEGIN

@interface MZMerchantSettingResponse : MZJastor
@property (nonatomic, strong) NSString *merchant_id;
@property (nonatomic, strong) NSString *coupon_number_encoding;
@property (nonatomic, strong) NSString *gs1_gln;
@property (nonatomic, strong) NSString *sms_charge_flag;
@property (nonatomic, strong) NSString *option_id;
@property (nonatomic, strong) NSString *option_name;
@property (nonatomic, strong) NSString *policy_url;
@property (nonatomic, strong) NSString *analytic_id;
@property (nonatomic, strong) NSString *analytic_name;
@property (nonatomic, strong) NSString *header_script;
@property (nonatomic, strong) NSString *body_script_start;
@property (nonatomic, strong) NSString *body_script_end;
@property (nonatomic, strong) NSString *wallet_status;
@property (nonatomic, strong) NSString *serial_status;
@property (nonatomic, strong) NSString *single_bundle_status;
@property (nonatomic, strong) NSString *booklet_status;
@property (nonatomic, strong) NSString *event_status;
@property (nonatomic, strong) NSString *shop_status;
@property (nonatomic, strong) NSString *daily_issue_limit_flag;
@property (nonatomic, strong) NSString *reference_flag;
@property (nonatomic, strong) NSString *supervisor_flag;
@property (nonatomic, strong) NSString *supervisor_pin_code;
@property (nonatomic, strong) NSString *low_inventory_email;
@property (nonatomic, strong) NSString *refund_email;
@property (nonatomic, strong) NSString *b2b_marketplace;
@property (nonatomic, strong) NSString *updated_by;
@property (nonatomic, strong) NSString *updated_on;

@property (nonatomic, strong)NSError *error;
@property (nonatomic, copy) NSString *status;
@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *message;
@property (nonatomic, copy) NSString *developerMessage;
@end

NS_ASSUME_NONNULL_END
