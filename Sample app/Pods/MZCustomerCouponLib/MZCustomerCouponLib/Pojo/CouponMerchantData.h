//
//  CouponMerchantData.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//


#import "MZJastor.h"

NS_ASSUME_NONNULL_BEGIN

@interface CouponMerchantData : MZJastor

@property (nonatomic, strong) NSString *merchant_id;
@property (nonatomic, strong) NSString *country_code;
@property (nonatomic, strong) NSString *merchant_code;
@property (nonatomic, strong) NSString *merchant_type;
@property (nonatomic, strong) NSString *merchant_name;
@property (nonatomic, strong) NSString *merchant_desc;
@property (nonatomic, strong) NSString *merchant_logourl;
@property (nonatomic, strong) NSString *merchant_imageurl;
@property (nonatomic, strong) NSString *merchant_hotline;
@property (nonatomic, strong) NSString *merchant_tc;
@property (nonatomic, strong) NSString *merchant_status;
@property (nonatomic, strong) NSString *merchant_timezone;
@property (nonatomic, strong) NSString *hash_code;
@property (nonatomic, strong) NSString *created_on;
@property (nonatomic, strong) NSString *updated_on;
@property (nonatomic, strong) NSString *updated_by;
@property (nonatomic, strong) NSString *profile_status;
@property (nonatomic, strong) NSString *merchant_email;
@property (nonatomic, strong) NSString *merchant_remark;
@property (nonatomic, strong) NSString *expiry_date;
@property (nonatomic, strong) NSString *channel_code;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic, strong) NSString *facebook_url;
@property (nonatomic, strong) NSString *instagram_url;
@property (nonatomic, strong) NSString *online_shop_url;
@property (nonatomic, strong) NSString *twitter_url;
@property (nonatomic, strong) NSString *website_url;
@property (nonatomic, strong) NSString *whatsup_url;
@property (nonatomic, strong) NSString *youtube_url;
@property (nonatomic, strong) NSString *domain_name;
@property (nonatomic, strong) NSString *mail_from;
@property (nonatomic, strong) NSString *mail_subject;
@property (nonatomic, strong) NSString *stripe_customer_id;
@property (nonatomic, strong) NSString *mail_verification;
@property (nonatomic, strong) NSString *merchant_address;
@property (nonatomic, strong) NSString *verified;
@property (nonatomic, strong) NSString *logo_shape;
@property (nonatomic, strong) NSString *invoice_mail;
@property (nonatomic, strong) NSString *alternative_name;
@property (nonatomic, strong) NSString *tagline;

@end

NS_ASSUME_NONNULL_END
