//
//  SerialData.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "MZJastor.h"
#import "SerialTransactionsModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface SerialData : MZJastor
@property (nonatomic, strong) NSString *coupon_id;
@property (nonatomic, strong) NSString *coupon_serial;
@property (nonatomic, strong) NSString *coupon_serial_uuid;
@property (nonatomic, strong) NSString *coupon_serial_url;
@property (nonatomic, strong) NSString *serial_qr_url;
@property (nonatomic, strong) NSString *start_date;
@property (nonatomic, strong) NSString *end_date;
@property (nonatomic, strong) NSString *customer_id;
@property (nonatomic, strong) NSString *coupon_name;
@property (nonatomic, strong) NSString *product_id;
@property (nonatomic, strong) NSString *coupon_status;
@property (nonatomic, strong) NSString *hash_code;
@property (nonatomic, strong) NSString *created_on;
@property (nonatomic, strong) NSString *updated_on;
@property (nonatomic, strong) NSString *update_by;
@property (nonatomic, strong) NSString *orginal_price;
@property (nonatomic, strong) NSString *product_desc;
@property (nonatomic, strong) NSString *product_imageurl;
@property (nonatomic, strong) NSString *product_note1;
@property (nonatomic, strong) NSString *product_note2;
@property (nonatomic, strong) NSString *product_note3;
@property (nonatomic, strong) NSNumber *selling_price;
@property (nonatomic, strong) NSString *refund_date;
@property (nonatomic, strong) NSString *expired_redemption_status;
@property (nonatomic, strong) NSString *transaction_id;
@property (nonatomic, strong) NSNumber *gift_value;
@property (nonatomic, strong) NSString *redeemable_value;
@property (nonatomic, strong) NSString *hold_value;
@property (nonatomic, strong) NSString *symbol;
@property (nonatomic, strong) NSString *redeemable_type;
@property (nonatomic, strong) NSString *redeemable_flag;
@property (nonatomic, strong) NSString *notes;
@property (nonatomic, strong) NSString *gift_coupon_status;
@property (nonatomic, strong) NSString *redeem_value;
@property (nonatomic, strong) NSString *supervisor_flag;
@property (nonatomic, strong) NSString *single_serial_url;
@property (nonatomic, strong) NSString *po_id;
@property (nonatomic, strong) NSString *podtl_id;
@property (nonatomic, strong) NSString *merchant_id;
@property (nonatomic, strong) NSString *refer_email;
@property (nonatomic, strong) NSString *mass_coupon;
@property (nonatomic, strong) NSString *coupon_pid;
@property (nonatomic, strong) NSString *passbook_url;
@property (nonatomic, strong) NSString *barcode_url;
@property (nonatomic, strong) NSString *qrcode_url;
@property (nonatomic, strong) NSString *location;
@property (nonatomic, strong) NSString *qr_code;
@property (nonatomic, strong) NSString *channel_merchant_id;
@property (nonatomic, strong) NSString *channel_customer_id;
@property (nonatomic, strong) SerialTransactionsModel *transactions;

@end

NS_ASSUME_NONNULL_END
