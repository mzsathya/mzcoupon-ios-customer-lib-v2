//
//  SerialData.m
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "SerialData.h"
#import "SerialTransactionsModel.h"

@implementation SerialData
@synthesize coupon_id;
@synthesize coupon_serial;
@synthesize coupon_serial_uuid;
@synthesize coupon_serial_url;
@synthesize serial_qr_url;
@synthesize start_date;
@synthesize end_date;
@synthesize customer_id;
@synthesize coupon_name;
@synthesize product_id;
@synthesize coupon_status;
@synthesize hash_code;
@synthesize created_on;
@synthesize updated_on;
@synthesize update_by;
@synthesize orginal_price;
@synthesize product_desc;
@synthesize product_imageurl;
@synthesize product_note1;
@synthesize product_note2;
@synthesize product_note3;
@synthesize selling_price;
@synthesize refund_date;
@synthesize expired_redemption_status;
@synthesize transaction_id;
@synthesize gift_value;
@synthesize redeemable_value;
@synthesize hold_value;
@synthesize symbol;
@synthesize redeemable_type;
@synthesize redeemable_flag;
@synthesize notes;
@synthesize gift_coupon_status;
@synthesize redeem_value;
@synthesize supervisor_flag;
@synthesize single_serial_url;
@synthesize po_id;
@synthesize podtl_id;
@synthesize merchant_id;
@synthesize refer_email;
@synthesize mass_coupon;
@synthesize coupon_pid;
@synthesize passbook_url;
@synthesize barcode_url;
@synthesize qrcode_url;
@synthesize location;
@synthesize qr_code;
@synthesize channel_merchant_id;
@synthesize channel_customer_id;
@synthesize transactions;

+ (Class)transactions_class {
    return [SerialTransactionsModel class];
}

@end
