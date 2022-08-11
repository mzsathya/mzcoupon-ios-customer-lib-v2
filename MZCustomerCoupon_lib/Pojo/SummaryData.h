//
//  SummaryData.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

//#import <MZCustomerCoupon_lib/MZCustomerCoupon_lib.h>
#import "MZJastor.h"
NS_ASSUME_NONNULL_BEGIN

@interface SummaryData : MZJastor

@property (nonatomic, copy) NSNumber *filteredsize;
@property (nonatomic, copy) NSNumber *resultsize;
@property (nonatomic, copy) NSNumber *totalsize;

@end

NS_ASSUME_NONNULL_END
