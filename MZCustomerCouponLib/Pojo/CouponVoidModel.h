//
//  CouponVoidModel.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "MZJastor.h"
#import "CouponVoidTransactionData.h"
NS_ASSUME_NONNULL_BEGIN

@interface CouponVoidModel : MZJastor
@property (nonatomic, strong)CouponVoidTransactionData *txn_void;
@property (nonatomic, strong)NSMutableArray *txn_serials;
@end

NS_ASSUME_NONNULL_END
