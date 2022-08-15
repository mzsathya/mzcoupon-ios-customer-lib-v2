//
//  ReferenceData.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "MZJastor.h"

NS_ASSUME_NONNULL_BEGIN

@interface ReferenceData : MZJastor
@property (nonatomic, strong) NSString *transaction_ref_no;
@property (nonatomic, strong) NSString *reference_image;
@end

NS_ASSUME_NONNULL_END
