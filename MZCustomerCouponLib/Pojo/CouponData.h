//
//  CouponData.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import "MZJastor.h"

NS_ASSUME_NONNULL_BEGIN

@interface CouponData : MZJastor

@property (nonatomic, strong) NSString *coupon_id;
@property (nonatomic, strong) NSString *coupon_code;
@property (nonatomic, strong) NSString *merchant_id;
@property (nonatomic, strong) NSString *productmerchant_id;
@property (nonatomic, strong) NSString *product_id;
@property (nonatomic, strong) NSString *coupon_name;
@property (nonatomic, strong) NSString *coupon_desc;
@property (nonatomic, strong) NSString *selling_price;
@property (nonatomic, strong) NSString *brand;
@property (nonatomic, strong) NSString *coupon_tc;
@property (nonatomic, strong) NSString *coupon_status;
@property (nonatomic, strong) NSString *coupon_remark;
@property (nonatomic, strong) NSString *tx_brand;
@property (nonatomic, strong) NSString *coupon_note1;
@property (nonatomic, strong) NSString *coupon_note2;
@property (nonatomic, strong) NSString *orginal_price;
@property (nonatomic, strong) NSString *coupon_note3;
@property (nonatomic, strong) NSString *pickup;
@property (nonatomic, strong) NSString *delivery;
@property (nonatomic, strong) NSString *daily_limit;
@property (nonatomic, strong) NSString *pack_qty;
@property (nonatomic, strong) NSString *booking;
@property (nonatomic, strong) NSString *outcall;
@property (nonatomic, strong) NSString *type_service;
@property (nonatomic, strong) NSString *email_staff;
@property (nonatomic, strong) NSString *coupon_over;
@property (nonatomic, strong) NSString *expiry_day_filter;
@property (nonatomic, strong) NSString *expiry_days;
@property (nonatomic, strong) NSString *from_date;
@property (nonatomic, strong) NSString *to_date;
@property (nonatomic, strong) NSString *coupon_type;
@property (nonatomic, strong) NSString *total_redeem;
@property (nonatomic, strong) NSString *allocation_count;
@property (nonatomic, strong) NSString *daily_limit_type;
@property (nonatomic, strong) NSString *online_redeem;
@property (nonatomic, strong) NSString *gtin;
@property (nonatomic, strong) NSString *publish;
@property (nonatomic, strong) NSString *start_day_filter;
@property (nonatomic, strong) NSString *start_days;
@property (nonatomic, strong) NSString *face_value;
@property (nonatomic, strong) NSString *coupon_discount_value;
@property (nonatomic, strong) NSString *daily_issue_limit;
@property (nonatomic, strong) NSString *display_redemption;
@property (nonatomic, strong) NSString *redemption_message;
@property (nonatomic, strong) NSString *transfer_coupon;
@property (nonatomic, strong) NSString *hash_code;
@property (nonatomic, strong) NSString *created_on;
@property (nonatomic, strong) NSString *updated_on;
@property (nonatomic, strong) NSString *day_filter;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic, strong) NSString *expired_redemption_status;
@property (nonatomic, strong) NSString *expiry_notification2_time;
@property (nonatomic, strong) NSString *expiry_notification3_time;
@property (nonatomic, strong) NSString *expiry_notification_days;
@property (nonatomic, strong) NSString *expiry_notification_days2;
@property (nonatomic, strong) NSString *expiry_notification_days3;
@property (nonatomic, strong) NSString *expiry_notification_time;
@property (nonatomic, strong) NSString *notification_flag;
@property (nonatomic, strong) NSString *book_value;
@property (nonatomic, strong) NSString *refund_coupon;
@property (nonatomic, strong) NSString *refund_days;
@property (nonatomic, strong) NSString *refund_message;
@property (nonatomic, strong) NSString *gift_value;
@property (nonatomic, strong) NSString *redeemable_flag;
@property (nonatomic, strong) NSString *redeemable_type;
@property (nonatomic, strong) NSString *symbol;
@property (nonatomic, strong) NSString *reference_no;
@property (nonatomic, strong) NSString *auto_allocation_qty;
@property (nonatomic, strong) NSString *inventory_notification_flag;
@property (nonatomic, strong) NSString *trigger_qty;
@property (nonatomic, strong) NSString *expiry_notify_via;
@property (nonatomic, strong) NSString *display_redeemable_qty;
@property (nonatomic, strong) NSString *coupon_direct_url;
@property (nonatomic, strong) NSString *direct_download_flag;
@property (nonatomic, strong) NSString *coupon_count;
@end

NS_ASSUME_NONNULL_END
