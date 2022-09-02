//
//  PaymentListModel.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import "MZJastor.h"
#import "PaymentData.h"
NS_ASSUME_NONNULL_BEGIN

@interface PaymentListModel : MZJastor
@property (nonatomic, strong) PaymentData *payment;

@end

NS_ASSUME_NONNULL_END
