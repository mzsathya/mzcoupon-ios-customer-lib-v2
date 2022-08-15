//
//  MZCustomerCouponLib.h
//  MZCustomerCouponLib
//
//  Created by Sathiyamoorthy on 14/08/22.
//

#import <Foundation/Foundation.h>

//! Project version number for MZCustomerCouponLib.
FOUNDATION_EXPORT double MZCustomerCouponLibVersionNumber;

//! Project version string for MZCustomerCouponLib.
FOUNDATION_EXPORT const unsigned char MZCustomerCouponLibVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <MZCustomerCouponLib/PublicHeader.h>
#import <MZCustomerCouponLib/MZUtils.h>

//Data
#import <MZCustomerCouponLib/CustomerData.h>
#import <MZCustomerCouponLib/CustomerDeviceData.h>
#import <MZCustomerCouponLib/CustomerDeviceDataModel.h>
#import <MZCustomerCouponLib/CustomerDataModel.h>
#import <MZCustomerCouponLib/AuthToken.h>
#import <MZCustomerCouponLib/SummaryData.h>
#import <MZCustomerCouponLib/CouponListData.h>
#import <MZCustomerCouponLib/CouponData.h>
#import <MZCustomerCouponLib/CouponCountData.h>
#import <MZCustomerCouponLib/CouponMetaData.h>
#import <MZCustomerCouponLib/CouponTimingsData.h>
#import <MZCustomerCouponLib/CouponLinksData.h>
#import <MZCustomerCouponLib/CouponMerchantData.h>
#import <MZCustomerCouponLib/CouponImageListData.h>
#import <MZCustomerCouponLib/CouponOutletListData.h>
#import <MZCustomerCouponLib/CouponImagesData.h>
#import <MZCustomerCouponLib/CouponOutletsData.h>
#import <MZCustomerCouponLib/IssueCustomerData.h>
#import <MZCustomerCouponLib/IssueCouponModel.h>
#import <MZCustomerCouponLib/IssueCouponCommitData.h>
#import <MZCustomerCouponLib/PaymentListModel.h>
#import <MZCustomerCouponLib/PaymentData.h>
#import <MZCustomerCouponLib/CustomerCouponData.h>
#import <MZCustomerCouponLib/CustomerCouponModel.h>
#import <MZCustomerCouponLib/RedeemTransactionModel.h>
#import <MZCustomerCouponLib/RedeemTransactionData.h>
#import <MZCustomerCouponLib/RedeemSerialTransactionData.h>
#import <MZCustomerCouponLib/RedeemCouponCommitData.h>
#import <MZCustomerCouponLib/RedeemResponseData.h>
#import <MZCustomerCouponLib/CouponSerialData.h>
#import <MZCustomerCouponLib/SerialData.h>
#import <MZCustomerCouponLib/SerialTransactionsModel.h>
#import <MZCustomerCouponLib/TransactionIssueData.h>
#import <MZCustomerCouponLib/TransactionRedeemData.h>
#import <MZCustomerCouponLib/TransactionVoidData.h>
#import <MZCustomerCouponLib/TransactionAllocationData.h>
#import <MZCustomerCouponLib/DeveloperMessageData.h>
#import <MZCustomerCouponLib/CouponSerialModel.h>
#import <MZCustomerCouponLib/SerialOutletListData.h>
#import <MZCustomerCouponLib/SerialOutletData.h>
#import <MZCustomerCouponLib/CouponSerialListModel.h>
#import <MZCustomerCouponLib/CouponserialList.h>
#import <MZCustomerCouponLib/CouponVoidModel.h>
#import <MZCustomerCouponLib/CouponVoidTransactionData.h>
#import <MZCustomerCouponLib/CouponTransferModel.h>
#import <MZCustomerCouponLib/CouponTransferData.h>
#import <MZCustomerCouponLib/ReferenceData.h>
#import <MZCustomerCouponLib/MerchantData.h>
#import <MZCustomerCouponLib/TransactionLogModel.h>
#import <MZCustomerCouponLib/TransactionLogData.h>
#import <MZCustomerCouponLib/TransactionLogDetailsData.h>

//ResponseData
#import <MZCustomerCouponLib/MZLoginResponse.h>
#import <MZCustomerCouponLib/MZAuthTokenResponse.h>
#import <MZCustomerCouponLib/MZCouponResponse.h>
#import <MZCustomerCouponLib/MZCouponDetailsResponse.h>
#import <MZCustomerCouponLib/MZIssueCouponResponse.h>
#import <MZCustomerCouponLib/MZPaymentResponse.h>
#import <MZCustomerCouponLib/MZCouponSerialResponse.h>
#import <MZCustomerCouponLib/MZRedeemCouponResponse.h>
#import <MZCustomerCouponLib/MZSerialCouponDetailsResponse.h>
#import <MZCustomerCouponLib/MZCouponOutletResponse.h>
#import <MZCustomerCouponLib/MZMerchantResponse.h>
#import <MZCustomerCouponLib/MZMerchantSettingResponse.h>
#import <MZCustomerCouponLib/MZMerchantOAuthResponse.h>
#import <MZCustomerCouponLib/MZTransactionLogResponse.h>

//Module
#import <MZCustomerCouponLib/MZCustomerLogin.h>
#import <MZCustomerCouponLib/MZCoupon.h>
#import <MZCustomerCouponLib/MZPayment.h>
#import <MZCustomerCouponLib/MZCouponSerial.h>
#import <MZCustomerCouponLib/MZExpressRedeem.h>
#import <MZCustomerCouponLib/MZMerchant.h>
#import <MZCustomerCouponLib/MZTransactionLog.h>


