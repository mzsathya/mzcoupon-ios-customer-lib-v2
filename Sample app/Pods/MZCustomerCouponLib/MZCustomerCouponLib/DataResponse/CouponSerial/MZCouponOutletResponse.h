//
//  MZCouponOutletResponse.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 10/08/22.
//

#import "MZJastor.h"

NS_ASSUME_NONNULL_BEGIN

@interface MZCouponOutletResponse : MZJastor
@property (nonatomic, copy) NSString *outlet_id;
@property (nonatomic, copy) NSString *merchant_id;
@property (nonatomic, copy) NSString *outlet_name;
@property (nonatomic, copy) NSString *outlet_address;
@property (nonatomic, copy) NSString *outlet_latitude;
@property (nonatomic, copy) NSString *outlet_longitude;
@property (nonatomic, copy) NSString *outlet_location;
@property (nonatomic, copy) NSString *outlet_contact;
@property (nonatomic, copy) NSString *outlet_desc;
@property (nonatomic, copy) NSString *outlet_email_id;
@property (nonatomic, copy) NSString *outlet_display_wallet;
@property (nonatomic, copy) NSString *outlet_seq_no;
@property (nonatomic, copy) NSString *outlet_imageurl;
@property (nonatomic, copy) NSString *outlet_online_status;
@property (nonatomic, copy) NSString *outlet_status;
@property (nonatomic, copy) NSString *outlet_redeem_pass;
@property (nonatomic, copy) NSString *hash_code;
@property (nonatomic, copy) NSString *created_on;
@property (nonatomic, copy) NSString *updated_on;
@property (nonatomic, copy) NSString *updated_by;
@property (nonatomic, copy) NSString *location_id;
@property (nonatomic, copy) NSString *pickup_delivery;
@property (nonatomic, copy) NSString *member_gln;
@property (nonatomic, copy) NSString *redemption_outlet_id;


@property (nonatomic, strong)NSError *error;
@property (nonatomic, copy) NSString *status;
@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *message;
@property (nonatomic, copy) NSString *developerMessage;
@end

NS_ASSUME_NONNULL_END
