//
//  RedeemResponseData.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import "MZJastor.h"

NS_ASSUME_NONNULL_BEGIN

@interface RedeemResponseData : MZJastor
@property (nonatomic, strong) NSString *outlet_id;
@property (nonatomic, strong) NSString *created_on;
@property (nonatomic, strong) NSString *hash_code;
@property (nonatomic, strong) NSString *order_date;
@property (nonatomic, strong) NSString *order_no;
@property (nonatomic, strong) NSString *order_status;
@property (nonatomic, strong) NSString *order_type;
@property (nonatomic, strong) NSString *updated_on;
@property (nonatomic, strong) NSString *customer_id;
@property (nonatomic, strong) NSString *merchant_id;
@property (nonatomic, strong) NSString *lang;
@property (nonatomic, strong) NSString *pos_redemption_flag;
@property (nonatomic, strong) NSString *pos_redemption_qr_code;
@property (nonatomic, strong) NSString *pos_redemption_bar_code;
@property (nonatomic, strong) NSString *pos_redemption_code;
@property (nonatomic, strong) NSString *guestckId;
@property (nonatomic, strong) NSString *branchCode;
@property (nonatomic, strong) NSString *transaction_id;


@end

NS_ASSUME_NONNULL_END
