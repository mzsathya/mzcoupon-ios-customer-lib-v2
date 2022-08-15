//
//  LoginResponse.m
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/05/22.
//

#import "MZLoginResponse.h"

@implementation MZLoginResponse
@synthesize customer;

@synthesize customer_id;
@synthesize merchant_id;
@synthesize customer_group_id;
@synthesize country_code;
@synthesize customer_first_name;
@synthesize customer_last_name;
@synthesize customer_username;
@synthesize customer_email;
@synthesize customer_password;
@synthesize customer_dob;
@synthesize customer_mobile;
@synthesize customer_gender;
@synthesize customer_address;
@synthesize user_type;
@synthesize vip_no;
@synthesize dgvip_no;
@synthesize fb_token;
@synthesize customer_status;
@synthesize hash_code;
@synthesize created_on;
@synthesize updated_on;
@synthesize updated_by;
@synthesize customer_image_url;
@synthesize member_id;
@synthesize custom_data;
@synthesize reference_no;
@synthesize customer_code;
@synthesize profile_status;
@synthesize wallet_url;

@synthesize developerMessage;
@synthesize message;
@synthesize status;
@synthesize code;

+(Class)customer_class{
    return [CustomerData class];
}
@end
