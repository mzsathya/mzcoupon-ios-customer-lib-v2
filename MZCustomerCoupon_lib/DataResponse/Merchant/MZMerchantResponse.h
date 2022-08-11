//
//  MZMerchantResponse.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "MZJastor.h"
#import "MerchantData.h"
NS_ASSUME_NONNULL_BEGIN

@interface MZMerchantResponse : MZJastor
@property (nonatomic, strong) MerchantData *merchant;
       
@property (nonatomic, strong)NSError *error;
@property (nonatomic, copy) NSString *status;
@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *message;
@property (nonatomic, copy) NSString *developerMessage;
@end

NS_ASSUME_NONNULL_END
