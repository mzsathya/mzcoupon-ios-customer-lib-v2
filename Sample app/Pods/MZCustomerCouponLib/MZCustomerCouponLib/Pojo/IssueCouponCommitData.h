//
//  IssueCouponCommitData.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import "MZJastor.h"

NS_ASSUME_NONNULL_BEGIN

@interface IssueCouponCommitData : MZJastor
@property (nonatomic, strong) NSString *pay_receipt;
@property (nonatomic, strong) NSString *payment_name;
@property (nonatomic, strong) NSString *coupon_delivery_type;
@property (nonatomic, strong) NSString *purchase_receipt;
@property (nonatomic, strong) NSString *template_id;
@property (nonatomic, strong) NSString *receipt_template_id;
@property (nonatomic, strong) NSString *transaction_gateway;
@property (nonatomic, strong) NSString *transaction_amount;
@property (nonatomic, strong) NSString *transaction_note;
@property (nonatomic, strong) NSString *transaction_ref_no;
@property (nonatomic, strong) NSString *issue_reference;
@property (nonatomic, strong) NSString *processed_by;
@property (nonatomic, strong) NSString *reference_no;
@property (nonatomic, strong) NSString *payment_info;
@end

NS_ASSUME_NONNULL_END
