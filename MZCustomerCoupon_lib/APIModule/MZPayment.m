//
//  MZPayment.m
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "MZPayment.h"
#import "MZUtils.h"

@implementation MZPayment
- (MZPaymentResponse *)getPaymentList: (NSString*)ptoken{
    MZPaymentResponse *returnvalue=[[MZPaymentResponse alloc]init];
   
    NSData *data = [MZUtils urlGetRequest:[NSString stringWithFormat:@"https://payment.mzapi.mezzofy.com/v2/paymentlist?payment_status='A'"] token:ptoken param:nil];
    NSError* error;
    if(data){
        NSDictionary *json = [NSJSONSerialization
                              JSONObjectWithData:data
                              options:kNilOptions
                              error:&error];
        if (json)
            returnvalue=[[MZPaymentResponse alloc]initWithDictionary:json];
        
       // [returnvalue setError:error];
    }
    return  returnvalue;
}
@end
