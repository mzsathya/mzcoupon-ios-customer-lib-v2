//
//  CustomerData.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/05/22.
//

#import "MZJastor.h"

@interface CustomerData : MZJastor
@property (nonatomic, strong) NSString *customer_id;
@property (nonatomic, strong) NSString *merchant_id;
@property (nonatomic, strong) NSString *customer_group_id;
@property (nonatomic, strong) NSString *country_code;
@property (nonatomic, strong) NSString *customer_first_name;
@property (nonatomic, strong) NSString *customer_last_name;
@property (nonatomic, strong) NSString *customer_username;
@property (nonatomic, strong) NSString *customer_email;
@property (nonatomic, strong) NSString *customer_password;
@property (nonatomic, strong) NSString *customer_dob;
@property (nonatomic, strong) NSString *customer_mobile;
@property (nonatomic, strong) NSString *customer_gender;
@property (nonatomic, strong) NSString *customer_address;
@property (nonatomic, strong) NSString *user_type;
@property (nonatomic, strong) NSString *vip_no;
@property (nonatomic, strong) NSString *dgvip_no;
@property (nonatomic, strong) NSString *fb_token;
@property (nonatomic, strong) NSString *customer_status;
@property (nonatomic, strong) NSString *hash_code;
@property (nonatomic, strong) NSString *created_on;
@property (nonatomic, strong) NSString *updated_on;
@property (nonatomic, strong) NSString *updated_by;
@property (nonatomic, strong) NSString *customer_image_url;
@property (nonatomic, strong) NSString *member_id;
@property (nonatomic, strong) NSString *custom_data;
@property (nonatomic, strong) NSString *reference_no;
@property (nonatomic, strong) NSString *customer_code;
@property (nonatomic, strong) NSString *profile_status;
@property (nonatomic, strong) NSString *wallet_url;
@end

