//
//  MZExpressRedeem.m
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "MZExpressRedeem.h"
#import "MZUtils.h"

@implementation MZExpressRedeem
- (MZRedeemCouponResponse *)ExpressRedeemCoupon:(RedeemTransactionModel *)predeemCouponmodel token:(NSString*)ptoken{
    MZRedeemCouponResponse *returnvalue=[[MZRedeemCouponResponse alloc]init];
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:[predeemCouponmodel toDictionary] options:kNilOptions error:&error];
    NSData *data =[MZUtils urlPostRequest:[NSString stringWithFormat:@"https://exredeem.mzapi.mezzofy.com/v2"] token:ptoken body:jsonData parameters:nil];
    if(data){
        NSError *error;
        NSDictionary* json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
        NSLog(@"%@",json);
        if(json)
            returnvalue=[[MZRedeemCouponResponse alloc]initWithDictionary:json];
        
        //[returnvalue setCode:error];
        
    }
    return returnvalue;
}
- (MZRedeemCouponResponse *)ExpiryCouponRedeem:(RedeemTransactionModel *)predeemCouponmodel supervisorNo:(NSString *)psupervisorNo token:(NSString*)ptoken{
    MZRedeemCouponResponse *returnvalue=[[MZRedeemCouponResponse alloc]init];
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:[predeemCouponmodel toDictionary] options:kNilOptions error:&error];
    NSData *data =[MZUtils urlPostRequest:[NSString stringWithFormat:@"https://exredeem.mzapi.mezzofy.com/v2?authorize_expiry=%@",psupervisorNo] token:ptoken body:jsonData parameters:nil];
    if(data){
        NSError *error;
        NSDictionary* json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
        NSLog(@"%@",json);
        if(json)
            returnvalue=[[MZRedeemCouponResponse alloc]initWithDictionary:json];
        
        //[returnvalue setCode:error];
        
    }
    return returnvalue;
}

- (MZRedeemCouponResponse *)UpdateReferenceCouponRedeem:(ReferenceData *)preference transactionId:(NSString *)ptransactionId token:(NSString*)ptoken{
    MZRedeemCouponResponse *returnvalue=[[MZRedeemCouponResponse alloc]init];
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:[preference toDictionary] options:kNilOptions error:&error];
    NSData *data =[MZUtils urlPutRequest:[NSString stringWithFormat:@"https://transaction.mzapi.mezzofy.com/v2/updatetransaction/%@?status=R",ptransactionId] token:ptoken body:jsonData parameters:nil];
    if(data){
        NSError *error;
        NSDictionary* json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
        NSLog(@"%@",json);
        if(json)
            returnvalue=[[MZRedeemCouponResponse alloc]initWithDictionary:json];
        
        //[returnvalue setCode:error];
        
    }
    return returnvalue;
}


@end
