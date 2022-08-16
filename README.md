# MZCustomerCouponLib iOS SDK

  
![](http://www.mezzofy.com/images/logoz.png)

  
#### Installation with CocoaPods
CocoaPods is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries in your projects. See the [Get Started](https://cocoapods.org) section for more details.

  
#### Installation Guide for MZCustomerCouponLib
###### You want to add pod 'MZCustomerCouponLib', '~> 1.0.0' similar to the following to your Podfile:

``` objc
target 'MyApp' do
pod 'MZCustomerCouponLib', '~> 1.0.0'
end
```
Then run a pod install inside your terminal, or from CocoaPods.app.

###### Alternatively to give it a test run, run the command:

pod try MZCustomerCouponLib
## Initialize MZCustomerCouponLib
``` objc
#import "AppDelegate.h"
#import <MZCustomerCouponLib/MZCustomerCouponLib.h>

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

```objc  
CustomerData *objcust1=[[CustomerData alloc]init];
[objcust1 setCustomer_email:@"kumartest005@gmail.com"];
[objcust1 setCustomer_password:@"12345678"];
[objcust1 setCustomer_first_name:@"Test sdk"];
[objcust1 setCustomer_mobile:@"12345678"];
[objcust1 setUser_type:@"C"];

CustomerDataModel *objdata=[[CustomerDataModel alloc]init];
[objdata setCustomer:objcust];
MZLoginResponse *retval1= [[MZLoginResponse alloc]init];

retval1 = (MZLoginResponse *)CustomerSignup:(CustomerDataModel *)pcustomermodel token:(NSString*)ptoken;

```
**Return**
country_code;  
customer_id;  
customer_first_name;  
customer_last_name;  
customer_username;  
customer_password;  
customer_email;  
customer_mobile;  
customer_gender;  
customer_address;  
user_type;  
customer_status;


**Call Function For CUSTOMER -Login**
![](https://mzcoupon.s3.ap-southeast-1.amazonaws.com/app/image_2022_06_02T06_14_16_110Z.png)
```objc

CustomerData *objcust=[[CustomerData alloc]init];
[objcust setCustomer_email:@"kumartest005@gmail.com"];
[objcust setCustomer_password:@"87654321"];

CustomerDeviceData *objdevice=[[CustomerDeviceData alloc]init];
[objdevice setDevice_token:@""];
[objdevice setDevice_name:@"I"];

CustomerDeviceDataModel *objdevmod=[[CustomerDeviceDataModel alloc]init];
[objdevmod setCustomer:objcust];
[objdevmod setDevice:objdevice];
NSLog(@"%@",[objdevmod toDictionary]);
MZCustomerLogin *objMzcustomer1=[[MZCustomerLogin alloc]init];
MZLoginResponse *retval;
  
  retval  = (MZLoginResponse *)LoginPlatform:(CustomerDeviceDataModel *)pdevicemod token:(NSString*)ptoken;

```
**Return**
country_code;  
customer_id;  
customer_first_name;  
customer_last_name;  
customer_username;  
customer_password;  
customer_email;  
customer_mobile;  
customer_gender;  
customer_address;  
user_type;  
customer_status;


**Call Function For CUSTOMER -Forgot Password** 
![](https://mzcoupon.s3.ap-southeast-1.amazonaws.com/app/image_2022_06_02T06_14_27_135Z.png)
```objc

MZLoginResponse *retval2= [[MZLoginResponse alloc]init];
retval2=[objMzcustomer PasswordForgot:@"Kumartest005@gmail.com" token:strtoken];

```
**Return**
country_code;  
customer_id;  
customer_first_name;  
customer_last_name;  
customer_username;  
customer_password;  
customer_email;  
customer_mobile;  
customer_gender;  
customer_address;  
user_type;  
customer_status;
otp_code;

**Call Function For CUSTOMER -New  Password with OTP** 
![](https://mzcoupon.s3.ap-southeast-1.amazonaws.com/app/image_2022_06_02T06_14_33_168Z.png)
```objc

CustomerDataModel *objdata1=[[CustomerDataModel alloc]init];
[objdata1 setNew_password:@"12345678"];
MZLoginResponse *retval3= [[MZLoginResponse alloc]init];

retval3=(MZLoginResponse *)OtpPasswordForgot:(NSString*)CustomerID otp:(NSString*)potp CustomerData:(CustomerDataModel*)pnewpassword token:(NSString*)ptoken;

```
**otp_code ---** you get forgot password response

**Return**
country_code;  
customer_id;  
customer_first_name;  
customer_last_name;  
customer_username;  
customer_password;  
customer_email;  
customer_mobile;  
customer_gender;  
customer_address;  
user_type;  
customer_status;




**Call Function For CUSTOMER -Update Customer Profile**
![](https://mzcoupon.s3.ap-southeast-1.amazonaws.com/app/image_2022_06_02T06_14_40_713Z.png)
``` objc

CustomerData *objcust2=[[CustomerData alloc]init];
[objcust2 setCustomer_email:@"kumartest005@gmail.com"];
[objcust2 setCustomer_first_name:@"kumar"];
[objcust2 setCustomer_last_name:@"Test"];
[objcust2 setCustomer_mobile:@"9976229202"];
[objcust2 setCustomer_address:@"Chennai, india"];
CustomerDataModel *objdata3=[[CustomerDataModel alloc]init];
[objdata3 setCustomer:objcust2];
MZLoginResponse *retval5= [[MZLoginResponse alloc]init];  
  
  retval5  = (MZLoginResponse *)CustomerUpdate:(NSString *)CustomerID CustomerData:(CustomerDataModel*)pcustomermodel token:(NSString*)ptoken;
```

**Return**
country_code;  
customer_id;  
customer_first_name;  
customer_last_name;  
customer_username;  
customer_password;  
customer_email;  
customer_mobile;  
customer_gender;  
customer_address;  
user_type;  
customer_status;


**Call Function For CUSTOMER -Change Password ** 
```objc

CustomerDataModel *objdata2=[[CustomerDataModel alloc]init];
[objdata2 setOld_password:@"87654321"];
[objdata2 setNew_password:@"12345678"];
MZLoginResponse *retval4= [[MZLoginResponse alloc]init];

retval4  = (MZLoginResponse *)PasswordChange:(NSString *)CustomerID CustomerData:(CustomerDataModel*)pcustomermodel token:(NSString*)ptoken;

```

**Return**
country_code;  
customer_id;  
customer_first_name;  
customer_last_name;  
customer_username;  
customer_password;  
customer_email;  
customer_mobile;  
customer_gender;  
customer_address;  
user_type;  
customer_status;



**Call Function For CUSTOMER-- Get Customer Detail**
``` objc
 (MZLoginResponse *)getCustomerDetailsByCustomerId:(NSString *)pcustomerId token:(NSString*)ptoken; 
```

**Return**
country_code;  
customer_id;  
customer_first_name;  
customer_last_name;  
customer_username;  
customer_password;  
customer_email;  
customer_mobile;  
customer_gender;  
customer_address;  
user_type;  
customer_status;

**Call Function For Get Merchant Detail By Merchant Id**
``` objc

(MZMerchantResponse *)GetMerchantDetails:(NSString *)pmerchantId token:(NSString*)ptoken;

```

**Return**
merchant_id;  
coupon_number_encoding;  
gs1_gln;  
sms_charge_flag;  
option_id;  
option_name;  
policy_url;  
analytic_id;  
analytic_name;  
header_script;  
body_script_start;  
body_script_end;  
wallet_status;  
serial_status;  
single_bundle_status;  
booklet_status;  
event_status;  
shop_status;  
daily_issue_limit_flag;  
reference_flag;  
supervisor_flag;  
supervisor_pin_code;  
low_inventory_email;  
refund_email;  
b2b_marketplace;  
updated_by;  
email_footer;  
selected_language;  
localization;  
default_lang;

**Call Function For Get Merchant Download Setting**
``` objc

(MZMerchantSettingResponse *)GetMerchantDownloadSetting:(NSString*)ptoken;

```

**Return**
merchant_id;  
coupon_number_encoding;  
gs1_gln;  
sms_charge_flag;  
option_id;  
option_name;  
policy_url;  
analytic_id;  
analytic_name;  
header_script;  
body_script_start;  
body_script_end;  
wallet_status;  
serial_status;  
single_bundle_status;  
booklet_status;  
event_status;  
shop_status;  
daily_issue_limit_flag;  
reference_flag;  
supervisor_flag;  
supervisor_pin_code;  
low_inventory_email;  
refund_email;  
b2b_marketplace;  
updated_by;  
email_footer;  
selected_language;  
localization;  
default_lang;

**Call Function For Get Merchant OAuth By Merchant Id**
``` objc

(MZMerchantOAuthResponse *)GetMerchantOAuth:(NSString*)pmerchantId;

```

**Return**
merchant_id;  
oauth_key;

**Call Function For Active Coupon List**
![](https://mzcoupon.s3.ap-southeast-1.amazonaws.com/logo/8F0A4D7B-9E6A-478E-827E-F94BD7ABF835.jpg)
 

``` objc
MZCoupon *objc=[[MZCoupon alloc]init];
MZCouponResponse *retvalc = [[MZCouponResponse alloc]init];
retvalc = [objc getCouponsByOutletId:@"SPUFE" skip:@"0" limit:@"20" token:strtoken];  
  
(MZCouponResponse *)getCoupons:(NSString *)pskip limit:(NSString *)plimit token:(NSString*)ptoken;

```
limit -> returns a reduced stream of first N elements
skip -> returns a stream of remaining elements after skipping first N elements

**Return**
Summary summary;  
ArrayList<**CouponData**> results;
**CouponData**
Coupon;  
CouponCounts ;  
CouponMetadata;  
CouponTimings;  
CouponLinks;  
Localization;  
ArrayList<CouponImage>;  
ArrayList<CouponOutlet>;

**Call Function For Coupon Detail By CouponId**

![](https://mzcoupon.s3.ap-southeast-1.amazonaws.com/logo/finalimage.png)
``` objc
(MZCouponDetailsResponse *)getCouponDetailsByCoupoId:(NSString *)pcouponID token:(NSString*)ptoken;
```
**Return**
**CouponData**
Coupon;  
CouponCounts ;  
CouponMetadata;  
CouponTimings;  
CouponLinks;  
Localization;  
ArrayList<CouponImage>;  
ArrayList<CouponOutlet>;

**Call Function For ISSUE COUPON --- Void Coupon Issue**
![](https://mzcoupon.s3.ap-southeast-1.amazonaws.com/app/image_2022_06_02T06_15_41_192Z+(1).png)
``` objc
MZCouponSerial *couponserial8=[[MZCouponSerial alloc]init];
   MZRedeemCouponResponse *retval7 = [[MZRedeemCouponResponse alloc]init];
   CouponVoidModel * voidmodel = [[CouponVoidModel alloc]init];
   CouponVoidTransactionData * txnvoiddata = [[CouponVoidTransactionData alloc]init];

NSMutableArray *arraycoupon3 = [[NSMutableArray alloc]init];
[arraycoupon3 addObject:@"HQBMWGVEPS"];
[txnvoiddata setReference_id:@"JT7XFG"];// CustomerId
[txnvoiddata setRemarks:@"Testing (Void By Customer App)"];
[txnvoiddata setLang:@"en"];
[txnvoiddata setTemplate_id:@""];
[txnvoiddata setDelivery_method:@"E"];
[voidmodel setTxn_serials:arraycoupon3];
[voidmodel setTxn_void:txnvoiddata];

retval7 = [couponserial8 CouponVoid:voidmodel token:strtoken];  
  
(MZRedeemCouponResponse *)CouponVoid:(CouponVoidModel *)pvoidCoupon token:(NSString*)ptoken;
```
Delivery Method
Parameter values
E -> via Email
S -> via SMS
I -> via Customer ID

Coupon Delivery Type**
Parameter values
S -> Single Email
W -> Wallet
N -> None
** This parameter value is used for Database storing purpose. Parameter value in the COMMIT API will be considered

lang
Supported language and code mentioned below

 "en" > English
 "zh-Hant" > Chinese Traditional
 "zh-Hans" > Chinese Simplified
 "kr" > Korean
 "jp" > Japanese
 "th" > Thai
 "id" > Indonesia Bahasa 

payment name
This parameter value is used for Database storing purpose. Parameter value in the COMMIT API will be considered (e.g Stripe)

Purchase receipt
Parameter values
Y -> Yes then billing template will be used (Client Specific)
N -> No

receipt_template_id
- Used to generate receipt template** (e.g mezzofy - Mezzofy template) 
- purchase_receipt should be "Y"

**Return**
transaction_id;  
merchant_id;  
user_type;  
lang;  
transaction_type;  
transaction_status;  
created_on;  
updated_on;  
reference_id;


**Call Function For ISSUE COUPON ---  Coupon Issue**
``` objc
MZCoupon *objcoupon2=[[MZCoupon alloc]init];
MZIssueCouponResponse *retvalcoupon2 = [[MZIssueCouponResponse alloc]init];
IssueCustomerData * customer = [[IssueCustomerData alloc]init];
IssueCouponModel * issuemodel = [[IssueCouponModel alloc]init];
[customer setName:@"Kumar"];
[customer setEmail:@"kumartest005@gmail.com"];
NSMutableArray *arraycoupon = [[NSMutableArray alloc]init];
CouponData *coupon = [[CouponData alloc]init];
[coupon setCoupon_code:@"1026390"];
[coupon setCoupon_count:@"1"];
[arraycoupon addObject:coupon];

[issuemodel setDelivery_method:@"E"];
[issuemodel setTransaction_amount:@""];
[issuemodel setLang:@"en"];
[issuemodel setOutlet_id:@"SPUFE"];
[issuemodel setCoupons:arraycoupon];
[issuemodel setCustomer: customer];

retvalcoupon2 = [objcoupon2 PostIssueCouponHold:issuemodel token:strtoken];

(MZIssueCouponResponse *)PostIssueCouponHold:(IssueCouponModel *)pissueCouponmodel token:(NSString*)ptoken;
```

**Return**
transaction_id;  
updated_on;  
po_status;  
po_date;  
pay_response;  
merchant_id;  
pay_receipt;  
coupon_via;  
po_total;  
hash_code;  
created_on;  
reward_point;  
payment_name;  
customer_id;  
po_no;



**Call Function For ISSUE COUPON ---  Issue Coupon Commit**
![](https://mzcoupon.s3.ap-southeast-1.amazonaws.com/logo/5D0BC9FF-2E0F-4D8B-A782-CCF815FE66B8.jpg)
``` objc
MZCoupon *objcoupon3=[[MZCoupon alloc]init];
MZIssueCouponResponse  *retvalcoupon3 = [[MZIssueCouponResponse alloc]init];
IssueCouponCommitData * commmitdata = [[IssueCouponCommitData alloc]init];
[commmitdata setPay_receipt:@""];
[commmitdata setPayment_name:@"stripe"];
[commmitdata setCoupon_delivery_type:@"W"];
[commmitdata setPurchase_receipt:@"N"];
[commmitdata setTemplate_id:@"MEZZOFY_MRMDR"];
[commmitdata setReceipt_template_id:@""];
[commmitdata setTransaction_gateway: @""];
[commmitdata setTransaction_amount:@"0"];
[commmitdata setTransaction_note:  @""];
[commmitdata setTransaction_ref_no:  @""];
[commmitdata setIssue_reference:  @""];
[commmitdata setProcessed_by:  @""];
[commmitdata setReference_no: @""];
[commmitdata setPayment_info: @""];

retvalcoupon3 = [objcoupon3 PostIssueCouponCommit:commmitdata transactionId:txnid  token:strtoken]; 
  
(MZIssueCouponResponse *)PostIssueCouponCommit:(IssueCouponCommitData *)pissueCouponCommit transactionId:(NSString*)ptransactionId token:(NSString*)ptoken;
```

**Return**
coupon_via;  
created_on;  
customer_id;  
hash_code;  
merchant_id;  
pay_receipt;  
pay_response;  
payment_name;  
po_date;  
transaction_id;  
po_no;  
po_status;  
reward_point;  
updated_on;  
po_total;  
ArrayList<**CustomerCouponData**>;


**Call Function For PAYMENT LIST ---(Charge Coupon )**
![](https://mzcoupon.s3.ap-southeast-1.amazonaws.com/app/image_2022_06_02T06_15_00_550Z.png)
``` objc
- (MZPaymentResponse *)getPaymentList: (NSString*)ptoken;
```

**Return**
payment_id;  
payment_type;  
payment_Enviornment;  
payment_status;  
payment_detail_id;  
merchant_id;  
payment_name;  
payment_logourl;  
payment_merchant_id;  
payment_key;  
payment_token;  
payment_url;  
currency;  
payment_enviornment;  
payment_privatekey;  
decimal_place;  
merchant_url_prefix;  
payment_method;  
payment_client_id;  
auto_poll_key;  
auto_poll_merchant_id;  
uto_poll_secret_key;  
buyer_type;  
pay_type;  
service;  
signingKey;  
subject;  
user_confirm_key;  
wallet;  
payment_detail;

**Call Function For ISSUE COUPON ---  Issue Coupon Transfer**
![](https://mzcoupon.s3.ap-southeast-1.amazonaws.com/app/image_2022_06_02T06_15_33_434Z.png)
``` objc
MZCouponSerial *couponserial7=[[MZCouponSerial alloc]init];
  MZRedeemCouponResponse *retval6 = [[MZRedeemCouponResponse alloc]init];
   CouponTransferModel * txnmodel = [[CouponTransferModel alloc]init];
   CouponTransferData * txndata1 = [[CouponTransferData alloc]init];

    NSMutableArray *arraycoupon2 = [[NSMutableArray alloc]init];
    [arraycoupon2 addObject:@"HQBMWGVEPS"];
    [txndata1 setCustomer_email:@"vinothini@mezzofy.com"];
    [txndata1 setSerials:arraycoupon2];
    [txnmodel setTransfer_to:txndata1];
    [txnmodel setLang:@"en"];
    [txnmodel setCustomer_id:@"JT7XFG"];
    [txnmodel setSender_message:@"Take as gift"];
    [txnmodel setTransfer_template_id:@""];
    retval6 = [couponserial7 CouponTransfer:txnmodel token:strtoken];
  
(MZRedeemCouponResponse *)CouponTransfer:(CouponTransferModel *)ptransferCoupon token:(NSString*)ptoken;
```

**Return**
transfer_id;  
from_customer_id;  
merchant_id;  
status;  
sender_message;  
ArrayList<**ToCustomer**> to_customer;


**Call Function For ISSUE COUPON ---  Issue Coupon RollBack**
``` objc
MZCoupon *objcoupon4=[[MZCoupon alloc]init];
MZIssueCouponResponse *retvalcoupon4 = [[MZIssueCouponResponse alloc]init];
IssueCouponCommitData * commmitdataRollback = [[IssueCouponCommitData alloc]init];
[commmitdataRollback setPayment_info: @""];
retvalcoupon4 = [objcoupon4 PostIssueCouponCommit:commmitdataRollback transactionId:txnid  token:strtoken];

(MZIssueCouponResponse *)postIssueCouponRollback:(IssueCouponCommitData *)pissueCouponCommit transactionId:(NSString*)ptransactionId token:(NSString*)ptoken;
```

**Return**
coupon_via;  
created_on;  
customer_id;  
hash_code;  
merchant_id;  
pay_receipt;  
pay_response;  
payment_name;  
po_date;  
transaction_id;  
po_no;  
po_status;  
reward_point;  
updated_on;  
po_total;  
ArrayList<**CustomerCouponData**>;



**Call Function For REDEEM COUPON ---  Redeem Coupon**
``` objc
MZCouponSerial *couponserial1=[[MZCouponSerial alloc]init];
MZRedeemCouponResponse *retvalredeem = [[MZRedeemCouponResponse alloc]init];
RedeemTransactionData * txndata = [[RedeemTransactionData alloc]init];
RedeemSerialTransactionData * txnserial = [[RedeemSerialTransactionData alloc]init];
RedeemTransactionModel * redeemmodel = [[RedeemTransactionModel alloc]init];
[txndata setLang:@"en"];
[txndata setTransaction_by:@"App Redemption"];
[txndata setOutlet_id:@"SPUFE"];

[txnserial setSerial:@"XSW4C60L5S"];
[txnserial setRedeem_value:@"0"];
NSMutableArray *arraycoupon1 = [[NSMutableArray alloc]init];
[arraycoupon1 addObject:txnserial];
[redeemmodel setTxn_serials:arraycoupon1];
[redeemmodel setTxn_redeem: txndata];

retvalredeem = [couponserial1 PostRedeemCouponHold:redeemmodel token:strtoken];
  
  (MZRedeemCouponResponse *)PostRedeemCouponHold:(RedeemTransactionModel *)predeemCouponmodel token:(NSString*)ptoken
```

**Return**
outlet_id;  
created_on;  
hash_code;  
order_date;  
order_no;  
order_status;  
order_type;  
updated_on;  
customer_id;  
merchant_id;  
lang;  
transaction_id;  
guestckId;  
branchCode;



**Call Function For REDEEM COUPON ---  Redeem Commit Coupon**
``` objc
MZCouponSerial *couponserial2=[[MZCouponSerial alloc]init];
MZRedeemCouponResponse *retvalredeem1 = [[MZRedeemCouponResponse alloc]init];
RedeemCouponCommitData * txncommit = [[RedeemCouponCommitData alloc]init];
[txncommit setTransaction_by:@"App Redemption"];
[txncommit setTransaction_note:@"Apply Coupon Redemption"];
retvalredeem1 = [couponserial2 PostRedeemCouponCommit:txncommit transactionId:txnid1 token:strtoken];  
  
(MZRedeemCouponResponse *)PostRedeemCouponCommit:(RedeemCouponCommitData *)predeemCouponCommit transactionId:(NSString*)ptransactionId token:(NSString*)ptoken;
```

**Return**
outlet_id;  
created_on;  
hash_code;  
order_date;  
order_no;  
order_status;  
order_type;  
updated_on;  
customer_id;  
merchant_id;  
lang;  
transaction_id;  
guestckId;  
branchCode;


**Call Function For REDEEM COUPON ---  Redeem Rollback Coupon**
``` objc
MZCouponSerial *couponserial3=[[MZCouponSerial alloc]init];
MZRedeemCouponResponse *retvalredeem2 = [[MZRedeemCouponResponse alloc]init];
RedeemCouponCommitData * txncommitrollback = [[RedeemCouponCommitData alloc]init];
[txncommitrollback setTransaction_ref_no:@"App Redemption Rollback"];
[txncommitrollback setTransaction_note:@"Apply Coupon Redemption Rollback"];
retvalredeem2 = [couponserial3 postRedeemCouponRollback:txncommitrollback transactionId:txnid1 token:strtoken];
  
(MZRedeemCouponResponse *)postRedeemCouponRollback:(RedeemCouponCommitData *)predeemCouponCommit transactionId:(NSString*)ptransactionId token:(NSString*)ptoken;
```

**Return**
outlet_id;  
created_on;  
hash_code;  
order_date;  
order_no;  
order_status;  
order_type;  
updated_on;  
customer_id;  
merchant_id;  
lang;  
transaction_id;  
guestckId;  
branchCode;


**Call Function For REDEEM COUPON ---  Redeem Void Coupon**
``` objc
MZCouponSerial *couponserialre=[[MZCouponSerial alloc]init];
   MZRedeemCouponResponse *retvalredeemvoid = [[MZRedeemCouponResponse alloc]init];
   CouponVoidModel * voidmodel1 = [[CouponVoidModel alloc]init];
   CouponVoidTransactionData * txnvoiddata1 = [[CouponVoidTransactionData alloc]init];

NSMutableArray *arraycouponre = [[NSMutableArray alloc]init];
[arraycouponre addObject:@"PFRKAVHY3U"];
[txnvoiddata1 setReference_id:@"JT7XFG"];// CustomerId
[txnvoiddata1 setRemarks:@"Testing (Void By Customer App)"];
[txnvoiddata1 setLang:@"en"];
[txnvoiddata1 setTemplate_id:@"REFUND_HYATT_COUPON"];
[txnvoiddata1 setDelivery_method:@"E"];
[voidmodel1 setTxn_serials:arraycouponre];
[voidmodel1 setTxn_void:txnvoiddata1];

retvalredeemvoid = [couponserialre RedeemCouponVoid:voidmodel1 token:strtoken];
  
(MZRedeemCouponResponse *)RedeemCouponVoid:(CouponVoidModel *)pvoidCoupon token:(NSString*)ptoken;
```

**Return**
outlet_id;  
created_on;  
hash_code;  
order_date;  
order_no;  
order_status;  
order_type;  
updated_on;  
customer_id;  
merchant_id;  
lang;  
transaction_id;  
guestckId;  
branchCode;

**Call Function For Serial Detail By CustomerId**

``` objc
MZCouponSerial *couponserial4=[[MZCouponSerial alloc]init];
MZCouponSerialResponse *retvalserial1 = [[MZCouponSerialResponse alloc]init];
retvalserial1 = [couponserial4 getCouponSerials:@"JT7XFG" skip:@"0" limit:@"20" token:strtoken];  
  
(MZCouponSerialResponse *)getCouponSerials:(NSString *)pcustomerId skip:(NSString *)pskip limit:(NSString *)plimit token:(NSString*)ptoken;
```

**Return**

 Summary summary;  
List<CouponSerialResults> results;
coupon;
serial;
merchant;
outlets;
coupon_images;



**Call Function For Serial Detail By Customer and CouponId**
![](https://mzcoupon.s3.ap-southeast-1.amazonaws.com/app/image_2022_06_02T06_15_21_306Z.png)
``` objc

MZCouponSerial* couponserial6=[[MZCouponSerial alloc]init];
MZCouponSerialResponse *retvalserial3 = [[MZCouponSerialResponse alloc]init];
retvalserial3 = [couponserial6 getCouponSerialsByCouponId:@"JT7XFG" couponId:@"AP0TUS" skip:@"0" limit:@"20" token:strtoken];

(MZCouponSerialResponse *)getCouponSerialsByCouponId:(NSString *)pcustomerId couponId:(NSString *)pcouponId skip:(NSString *)pskip limit:(NSString *)plimit token:(NSString*)ptoken
```

**Return**

 Summary summary;  
List<CouponSerialResults> results;
coupon;
serial;
merchant;
outlets;
coupon_images;

**Call Function For Serial Detail By Serial**
![](https://mzcoupon.s3.ap-southeast-1.amazonaws.com/app/image_2022_06_02T06_15_27_594Z.png)
``` objc

MZCouponSerial *couponserial=[[MZCouponSerial alloc]init];
MZSerialCouponDetailsResponse *retvalserial = [[MZSerialCouponDetailsResponse alloc]init];
retvalserial = [couponserial getSerialCouponDetailsByCouposerial:@"XSW4C60L5S" token:strtoken]; 
  
(MZSerialCouponDetailsResponse *)getSerialCouponDetailsByCouposerial:(NSString *)pcouponserial token:(NSString*)ptoken;

```
**Return**
Coupon coupon;  
Serial serial;
merchant;
outlets;
coupon_images

**Call Function For Serial Detail By Status**
``` objc

MZCouponSerial *couponserial5=[[MZCouponSerial alloc]init];
MZCouponSerialResponse *retvalserial2 = [[MZCouponSerialResponse alloc]init];
retvalserial2 = [couponserial5 getCouponSerialsByStatus:@"JT7XFG" status:@"T" skip:@"0" limit:@"20" token:strtoken];

(MZCouponSerialResponse *)getCouponSerialsByStatus:(NSString *)pcustomerId status:(NSString *)pstatus skip:(NSString *)pskip limit:(NSString *)plimit token:(NSString*)ptoken

```

**Return**

 Summary summary;  
List<CouponSerialResults> results;
Coupon coupon;  
Serial serial;
merchant;
outlets;
coupon_images;


Status  "R" - Redeemed
"T" - History

**Call Function For Get Outlet By RedeemPass**
![](https://mzcoupon.s3.ap-southeast-1.amazonaws.com/app/image_2022_06_02T06_15_48_403Z.png)
``` objc

MZCouponSerial *couponserial9=[[MZCouponSerial alloc]init];
MZCouponOutletResponse *retval8 = [[MZCouponOutletResponse alloc]init];
retval8 = [couponserial9 getOutletDetails:@"1234" token:strtoken]; 
  
(MZCouponOutletResponse *)getOutletDetails:(NSString *)predeempasscode token:(NSString*)ptoken;
```

**Return**
OutletProfile;

**Call Function For REDEEM COUPON ---  Express Redeem Coupon**
``` objc
MZExpressRedeem * couponredeem=[[MZExpressRedeem alloc]init];
MZRedeemCouponResponse *retvalredeem4 = [[MZRedeemCouponResponse alloc]init];
RedeemTransactionData * txnsdata = [[RedeemTransactionData alloc]init];
RedeemSerialTransactionData * txnsserial = [[RedeemSerialTransactionData alloc]init];
RedeemTransactionModel * Tredeemmodel = [[RedeemTransactionModel alloc]init];
[txnsdata setLang:@"en"];
[txnsdata setTransaction_by:@"App Pin Redemption"];
[txnsdata setOutlet_id:@"SPUFE"];
[txnsdata setTransaction_note:@""];

[txnsserial setSerial:@"LFTOUVV44T"];
[txnsserial setRedeem_value:@"0"];
NSMutableArray *arraycoupon4 = [[NSMutableArray alloc]init];
[arraycoupon4 addObject:txnsserial];
[Tredeemmodel setTxn_serials:arraycoupon4];
[Tredeemmodel setTxn_redeem: txnsdata];

retvalredeem4 = [couponredeem ExpressRedeemCoupon:Tredeemmodel token:strtoken];
  
(MZRedeemCouponResponse *)ExpressRedeemCoupon:(RedeemTransactionModel *)predeemCouponmodel token:(NSString*)ptoken;
```

**Return**
outlet_id;  
created_on;  
hash_code;  
order_date;  
order_no;  
order_status;  
order_type;  
updated_on;  
customer_id;  
merchant_id;  
lang;  
transaction_id;  
guestckId;  
branchCode;

**Call Function For REDEEM COUPON ---  Expiry Redeem Coupon**
``` objc
MZExpressRedeem * couponredeem5=[[MZExpressRedeem alloc]init];
MZRedeemCouponResponse *retvalredeem5 = [[MZRedeemCouponResponse alloc]init];
RedeemTransactionData * trxndata = [[RedeemTransactionData alloc]init];
RedeemSerialTransactionData * trxnserial = [[RedeemSerialTransactionData alloc]init];
RedeemTransactionModel * tredeemmodel = [[RedeemTransactionModel alloc]init];
[trxndata setLang:@"en"];
[trxndata setTransaction_by:@"App Pin Redemption"];
[trxndata setOutlet_id:@"SPUFE"];
[trxndata setTransaction_note:@"Expired Redemption"];

[trxnserial setSerial:@"LFTOUVV44T"];
[trxnserial setRedeem_value:@"0"];
NSMutableArray *arraycoupon5 = [[NSMutableArray alloc]init];
[arraycoupon5 addObject:trxnserial];
[tredeemmodel setTxn_serials:arraycoupon5];
[tredeemmodel setTxn_redeem: trxndata];

retvalredeem5 = [couponredeem5 ExpiryCouponRedeem:tredeemmodel supervisorNo:
  
MZRedeemCouponResponse *)ExpiryCouponRedeem:(RedeemTransactionModel *)predeemCouponmodel supervisorNo:(NSString *)psupervisorNo token:(NSString*)ptoken;
```

**Return**
outlet_id;  
created_on;  
hash_code;  
order_date;  
order_no;  
order_status;  
order_type;  
updated_on;  
customer_id;  
merchant_id;  
lang;  
transaction_id;  
guestckId;  
branchCode;


**Call Function For REDEEM COUPON ---  Update Referance Redeem Coupon**
``` objc
MZExpressRedeem * couponredeem6=[[MZExpressRedeem alloc]init];
MZRedeemCouponResponse *retvalredeem6 = [[MZRedeemCouponResponse alloc]init];
ReferenceData * refdata = [[ReferenceData alloc]init];
[refdata setTransaction_ref_no:@"Testing"];
[refdata setReference_image:@""];

retvalredeem6 = [couponredeem6 UpdateReferenceCouponRedeem:refdata transactionId:@"1ATW6B1DNXCFJCO6Z6U2" token:strtoken];
  
(MZRedeemCouponResponse *)UpdateReferenceCouponRedeem:(ReferenceData *)preference transactionId:(NSString *)ptransactionId token:(NSString*)ptoken;
```

**Return**
transaction_ref_no;
Reference_image;


**Call Function For TRANSACTION  LOG ---  Transaction log By CustomerId**
``` objc
MZTransactionLog *log = [[MZTransactionLog alloc]init];
MZTransactionLogResponse *returnlog = [[MZTransactionLogResponse alloc]init];
returnlog = [log GetTransactionLogByCustomerId:@"JT7XFG" skip:@"0" limit:@"20" token:strtoken];

(MZTransactionLogResponse *)GetTransactionLogByCustomerId:(NSString *)pcustomerId skip:(NSString *)pskip limit:(NSString *)plimit token:(NSString*)ptoken;
```

**Return**
Summary summary;  
List<CouponSerialResults> results;
transaction;
transaction_details;



  

##### Click here for [Full Implementation Guide](https://github.com/mezzofy/mzcoupon-android-customer-lib-v2)

  

# Licenses

  

All source code is licensed under the [MIT License.](https://raw.githubusercontent.com/mezzofy/mzcoupon-android-customer-lib/9f6d85cdaa1a03f323a81d6adf45df36cebb4c75/LICENSE)

  

  

### End


##### Click here for [Full Implementation Guide](https://github.com/mzsathya/mzcoupon-ios-customer-lib-v2)

  

# Licenses
All source code is licensed under the MIT License.

### End
