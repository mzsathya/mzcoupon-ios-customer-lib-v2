//
//  MZCoupon.m
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import "MZCoupon.h"
#import "MZUtils.h"

@implementation MZCoupon
- (MZCouponResponse *)getCoupons:(NSString *)pskip limit:(NSString *)plimit token:(NSString*)ptoken {
    MZCouponResponse *returnvalue=[[MZCouponResponse alloc]init];
   
    NSData *data = [MZUtils urlGetRequest:[NSString stringWithFormat:@"https://coupon.mzapi.mezzofy.com/v2?publish=A&include_merchant=S&skip=%@&limit=%@",pskip,plimit]  token:ptoken param:nil];
    NSError* error;
    if(data){
        NSDictionary *json = [NSJSONSerialization
                              JSONObjectWithData:data
                              options:kNilOptions
                              error:&error];
        if (json)
            returnvalue=[[MZCouponResponse alloc]initWithDictionary:json];
        
       // [returnvalue setError:error];
    }
    return  returnvalue;
}
- (MZCouponResponse *)getCouponsByOutletId:(NSString *)poutletId skip:(NSString *)pskip limit:(NSString *)plimit token:(NSString*)ptoken {
    MZCouponResponse *returnvalue=[[MZCouponResponse alloc]init];
   
    NSData *data = [MZUtils urlGetRequest:[NSString stringWithFormat:@"https://coupon.mzapi.mezzofy.com/v2?outlet_id=%@&include_merchant=S&skip=%@&limit=%@",poutletId,pskip,plimit]  token:ptoken param:nil];
    NSError* error;
    if(data){
        NSDictionary *json = [NSJSONSerialization
                              JSONObjectWithData:data
                              options:kNilOptions
                              error:&error];
        if (json)
            returnvalue=[[MZCouponResponse alloc]initWithDictionary:json];
        
       // [returnvalue setError:error];
    }
    return  returnvalue;
}
- (MZCouponDetailsResponse *)getCouponDetailsByCoupoId:(NSString *)pcouponID token:(NSString*)ptoken{
    MZCouponDetailsResponse *returnvalue=[[MZCouponDetailsResponse alloc]init];
   
    NSData *data = [MZUtils urlGetRequest:[NSString stringWithFormat:@"https://coupon.mzapi.mezzofy.com/v2/%@",pcouponID]  token:ptoken param:nil];
    NSError* error;
    if(data){
        NSDictionary *json = [NSJSONSerialization
                              JSONObjectWithData:data
                              options:kNilOptions
                              error:&error];
        if (json)
            returnvalue=[[MZCouponDetailsResponse alloc]initWithDictionary:json];
        
       // [returnvalue setError:error];
    }
    return  returnvalue;
}

- (MZIssueCouponResponse *)PostIssueCouponHold:(IssueCouponModel *)pissueCouponmodel token:(NSString*)ptoken{
    MZIssueCouponResponse *returnvalue=[[MZIssueCouponResponse alloc]init];
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:[pissueCouponmodel toDictionary] options:kNilOptions error:&error];
    NSData *data =[MZUtils urlPostRequest:[NSString stringWithFormat:@"https://transaction.mzapi.mezzofy.com/v2/issue"] token:ptoken body:jsonData parameters:nil];
    if(data){
        NSError *error;
        NSDictionary* json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
        NSLog(@"%@",json);
        if(json)
            returnvalue=[[MZIssueCouponResponse alloc]initWithDictionary:json];
        
        //[returnvalue setCode:error];
        
    }
    return returnvalue;
}
- (MZIssueCouponResponse *)PostIssueCouponCommit:(IssueCouponCommitData *)pissueCouponCommit transactionId:(NSString*)ptransactionId token:(NSString*)ptoken{
    MZIssueCouponResponse *returnvalue=[[MZIssueCouponResponse alloc]init];
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:[pissueCouponCommit toDictionary] options:kNilOptions error:&error];
    NSData *data =[MZUtils urlPostRequest:[NSString stringWithFormat:@"https://transaction.mzapi.mezzofy.com/v2/issue/%@/commit",ptransactionId] token:ptoken body:jsonData parameters:nil];
    if(data){
        NSError *error;
        NSDictionary* json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
        NSLog(@"%@",json);
        if(json)
            returnvalue=[[MZIssueCouponResponse alloc]initWithDictionary:json];
        
        //[returnvalue setCode:error];
        
    }
    return returnvalue;
}

- (MZIssueCouponResponse *)postIssueCouponRollback:(IssueCouponCommitData *)pissueCouponCommit transactionId:(NSString*)ptransactionId token:(NSString*)ptoken{
    MZIssueCouponResponse *returnvalue=[[MZIssueCouponResponse alloc]init];
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:[pissueCouponCommit toDictionary] options:kNilOptions error:&error];
    NSData *data =[MZUtils urlPostRequest:[NSString stringWithFormat:@"https://transaction.mzapi.mezzofy.com/v2/issue/%@/rollback",ptransactionId] token:ptoken body:jsonData parameters:nil];
    if(data){
        NSError *error;
        NSDictionary* json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
        NSLog(@"%@",json);
        if(json)
            returnvalue=[[MZIssueCouponResponse alloc]initWithDictionary:json];
        
        //[returnvalue setCode:error];
        
    }
    return returnvalue;
}

@end
