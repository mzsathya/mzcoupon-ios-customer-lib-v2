//
//  MZTransactionLog.m
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "MZTransactionLog.h"
#import "MZUtils.h"
@implementation MZTransactionLog
- (MZTransactionLogResponse *)GetTransactionLogByCustomerId:(NSString *)pcustomerId skip:(NSString *)pskip limit:(NSString *)plimit token:(NSString*)ptoken{
    MZTransactionLogResponse *returnvalue=[[MZTransactionLogResponse alloc]init];
       
        NSData *data = [MZUtils urlGetRequest:[NSString stringWithFormat:@"https://activities.mzapi.mezzofy.com/v2/transactions/%@?status=I&skip=%@&limit=%@",pcustomerId,pskip,plimit]  token:ptoken param:nil];
        NSError* error;
        if(data){
            NSDictionary *json = [NSJSONSerialization
                                  JSONObjectWithData:data
                                  options:kNilOptions
                                  error:&error];
            if (json)
                returnvalue=[[MZTransactionLogResponse alloc]initWithDictionary:json];
            
           // [returnvalue setError:error];
        }
        return  returnvalue;
    
}
@end
