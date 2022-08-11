//
//  CouponTransferModel.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "MZJastor.h"
#import "CouponTransferData.h"
NS_ASSUME_NONNULL_BEGIN

@interface CouponTransferModel : MZJastor
@property (nonatomic, strong) NSString *customer_id;
@property (nonatomic, strong) NSString *lang;
@property (nonatomic, strong) NSString *sender_message;
@property (nonatomic, strong) NSString *transfer_template_id;
@property (nonatomic, strong) CouponTransferData *transfer_to;
        
@end

NS_ASSUME_NONNULL_END
