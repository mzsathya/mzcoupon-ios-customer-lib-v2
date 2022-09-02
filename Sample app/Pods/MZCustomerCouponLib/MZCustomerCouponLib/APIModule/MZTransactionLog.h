//
//  MZTransactionLog.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import <Foundation/Foundation.h>
#import "MZTransactionLogResponse.h"
NS_ASSUME_NONNULL_BEGIN

@interface MZTransactionLog : NSObject
- (MZTransactionLogResponse *)GetTransactionLogByCustomerId:(NSString *)pcustomerId skip:(NSString *)pskip limit:(NSString *)plimit token:(NSString*)ptoken;
@end

NS_ASSUME_NONNULL_END
