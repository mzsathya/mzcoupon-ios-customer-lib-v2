# MZCustomerCouponLib iOS SDK

  
![](http://www.mezzofy.com/images/logoz.png)

  
#### Installation with CocoaPods
CocoaPods is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries in your projects. See the [Get Started](https://cocoapods.org) section for more details.

  
#### Installation Guide for MZCustomerCoupon_lib
###### You want to add pod 'MZCustomerCouponLib', '~> 1.0.0' similar to the following to your Podfile:

``` objc
target 'MyApp' do
pod 'MZCustomerCouponLib', '~> 1.0.0'
end
```
Then run a pod install inside your terminal, or from CocoaPods.app.

###### Alternatively to give it a test run, run the command:

pod try MZCoupon
## Initialize MZCustomerCoupon_lib
``` objc
#import "AppDelegate.h"
#import #import <MZCustomerCouponLib/MZCustomerCouponLib.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
// OAuth Get Token
AuthToken *objmezzofy=[[AuthToken alloc]init];
MZCustomerLogin *objMzcustomer=[[MZCustomerLogin alloc]init];
objmezzofy=[objMzcustomer loginmerchantauth:@"UJPTKH" secrt:@"NLCG"];
NSString * strtoken = objmezzofy.accessToken;

return YES;

```

***Hints:***

##### How to get Merchant Code & AccessToken

Login to Merchant Account

  

![](https://mzcoupon.s3.ap-southeast-1.amazonaws.com/logo/apikeyscreen.png)

  

  
### Implementation Guide

  
**Call Function For Authentication Bearer Token**

```objc

AuthToken *objmezzofy=[[AuthToken alloc]init];
MZCustomerLogin *objMzcustomer=[[MZCustomerLogin alloc]init];
objmezzofy=[objMzcustomer loginmerchantauth:@"UJPTKH" secrt:@"NLCG"];
NSString * strtoken = objmezzofy.accessToken; 
  
  -(MZAuthTokenResponse *)loginmerchantauth:(NSString *)pauth secrt:(nonnull NSString *)serc{
      MZAuthTokenResponse *returnvalue = [[MZAuthTokenResponse alloc]init];
      
      NSData *data = [MZUtils urlGetTokenRequest:[NSString stringWithFormat:@"https://auth.mzapi.mezzofy.com/v2/token"] authkey:pauth authsecrt:serc body:nil parameters:nil];
     
      if(data){
          NSError *error;
          NSDictionary* json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
          returnvalue=[[MZAuthTokenResponse alloc]initWithDictionary:json];
          
          [returnvalue setError:error];
      }
      return returnvalue;
  }

```
**Return**
accessToken;  
accessTokenExpiresAt;  


**Call Function For CUSTOMER -Register** 
![](https://mzcoupon.s3.ap-southeast-1.amazonaws.com/app/image_2022_06_02T06_14_07_011Z.png)



##### Click here for [Full Implementation Guide](hhttps://github.com/mzsathya/mzcoupon-ios-customer-lib-v2)

  

# Licenses
All source code is licensed under the MIT License.

### End
