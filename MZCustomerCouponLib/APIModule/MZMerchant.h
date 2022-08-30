//
//  MZMerchant.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import <Foundation/Foundation.h>
#import "MZMerchantResponse.h"
#import "MZMerchantSettingResponse.h"
#import "MZMerchantOAuthResponse.h"
NS_ASSUME_NONNULL_BEGIN

@interface MZMerchant : NSObject
- (MZMerchantResponse *)GetMerchantDetails:(NSString *)pmerchantId token:(NSString*)ptoken;
- (MZMerchantSettingResponse *)GetMerchantDownloadSetting:(NSString*)ptoken;
- (MZMerchantOAuthResponse *)GetMerchantOAuth:(NSString*)pmerchantId Oauth:(NSString *)pauth secrt:(NSString *)serc;
@end

NS_ASSUME_NONNULL_END
