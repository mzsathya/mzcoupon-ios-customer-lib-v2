//
//  RedeemCouponViewController.m
//  testpos
//
//  
//

#import "RedeemCouponViewController.h"
#import <MZCustomerCouponLib/MZCustomerCouponLib.h>
#import "Common.h"
@interface RedeemCouponViewController ()

@end

@implementation RedeemCouponViewController
@synthesize txt_couponserial,txt_outletId;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    txt_couponserial.delegate = self;
    txt_outletId.delegate = self;
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    [txt_outletId resignFirstResponder];
    txt_couponserial.text = @"";
    txt_outletId.text = @"";
   
}

- (IBAction)btn_submit:(id)sender {
    [self.view endEditing:YES];
    if ([txt_couponserial.text isEqualToString:@""] || [txt_outletId.text isEqualToString:@""]){
        UIAlertController *alertController4 = [UIAlertController
                                               alertControllerWithTitle:@""
                                               message:@"Please Check Empty Field"
                                               preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okAction = [UIAlertAction
                                   actionWithTitle:@"OK"
                                   style:UIAlertActionStyleDefault
                                   handler:^(UIAlertAction *action)
                                   { [self dismissViewControllerAnimated:YES completion:nil];}];
       
        
        [alertController4 addAction:okAction];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self presentViewController:alertController4 animated:YES completion:nil];
        });
    }else {
        MZCouponSerial *couponserial1=[[MZCouponSerial alloc]init];
        MZRedeemCouponResponse *retvalredeem = [[MZRedeemCouponResponse alloc]init];
        RedeemTransactionData * txndata = [[RedeemTransactionData alloc]init];
        RedeemSerialTransactionData * txnserial = [[RedeemSerialTransactionData alloc]init];
        RedeemTransactionModel * redeemmodel = [[RedeemTransactionModel alloc]init];
        [txndata setLang:@"en"];
        [txndata setTransaction_by:@"App Redemption"];
        [txndata setOutlet_id:txt_outletId.text];
    
        [txnserial setSerial:txt_couponserial.text];
        [txnserial setRedeem_value:@"0"];
            NSMutableArray *arraycoupon1 = [[NSMutableArray alloc]init];
        [arraycoupon1 addObject:txnserial];
            [redeemmodel setTxn_serials:arraycoupon1];
            [redeemmodel setTxn_redeem: txndata];
    
        retvalredeem = [couponserial1 PostRedeemCouponHold:redeemmodel token:[Common Accesstoken]];
            NSString *txnid1 = retvalredeem.transaction_id;
            NSLog(@"%@",retvalredeem);
    
    ////Redeem Coupon Commit Api ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
    if (retvalredeem != NULL) {
        
    if (txnid1 != NULL)  {
                MZCouponSerial *couponserial2=[[MZCouponSerial alloc]init];
                MZRedeemCouponResponse *retvalredeem1 = [[MZRedeemCouponResponse alloc]init];
                RedeemCouponCommitData * txncommit = [[RedeemCouponCommitData alloc]init];
                [txncommit setTransaction_by:@"App Redemption"];
                [txncommit setTransaction_note:@"Apply Coupon Redemption"];
                retvalredeem1 = [couponserial2 PostRedeemCouponCommit:txncommit transactionId:txnid1 token:[Common Accesstoken]];
                NSLog(@"%@",retvalredeem1);
            if (retvalredeem1 != NULL) {
                if (retvalredeem1.redeem_response != NULL) {
                    UIAlertController *alertController2 = [UIAlertController
                                                           alertControllerWithTitle:@"Result"
                                                           message:[NSString stringWithFormat:@"%@",retvalredeem1]
                                                           preferredStyle:UIAlertControllerStyleAlert];
                    UIAlertAction *okAction = [UIAlertAction
                                               actionWithTitle:@"OK"
                                               style:UIAlertActionStyleDefault
                                               handler:^(UIAlertAction *action)
                                               { [self.navigationController popViewControllerAnimated:YES];}];
                   
                    
                    [alertController2 addAction:okAction];
                    dispatch_async(dispatch_get_main_queue(), ^{
                        [self presentViewController:alertController2 animated:YES completion:nil];
                    });
                }else if (retvalredeem1.developerMessage != NULL){
                    UIAlertController *alertController3 = [UIAlertController
                                                           alertControllerWithTitle:@""
                                                           message:retvalredeem1.developerMessage
                                                           preferredStyle:UIAlertControllerStyleAlert];
                    UIAlertAction *okAction = [UIAlertAction
                                               actionWithTitle:@"OK"
                                               style:UIAlertActionStyleDefault
                                               handler:^(UIAlertAction *action)
                                               { [self.navigationController popViewControllerAnimated:YES];}];
                   
                    
                    [alertController3 addAction:okAction];
                    dispatch_async(dispatch_get_main_queue(), ^{
                        [self presentViewController:alertController3 animated:YES completion:nil];
                    });
                }
            }
            else {
                UIAlertController *alertController3 = [UIAlertController
                                                       alertControllerWithTitle:@"Failed"
                                                       message:@"Please Get Access Token"
                                                       preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *okAction = [UIAlertAction
                                           actionWithTitle:@"OK"
                                           style:UIAlertActionStyleDefault
                                           handler:^(UIAlertAction *action)
                                           { [self.navigationController popViewControllerAnimated:YES];}];


                [alertController3 addAction:okAction];
                dispatch_async(dispatch_get_main_queue(), ^{
                    [self presentViewController:alertController3 animated:YES completion:nil];
                });
            }
           
        }else if (retvalredeem.developerMessage != NULL){
            UIAlertController *alertController4 = [UIAlertController
                                                   alertControllerWithTitle:@""
                                                   message:retvalredeem.developerMessage
                                                   preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *okAction = [UIAlertAction
                                       actionWithTitle:@"OK"
                                       style:UIAlertActionStyleDefault
                                       handler:^(UIAlertAction *action)
                                       { [self.navigationController popViewControllerAnimated:YES];}];
           
            
            [alertController4 addAction:okAction];
            dispatch_async(dispatch_get_main_queue(), ^{
                [self presentViewController:alertController4 animated:YES completion:nil];
            });
        }else {
        UIAlertController *alertController3 = [UIAlertController
                                               alertControllerWithTitle:@"Failed"
                                               message:@"Please Get Access Token"
                                               preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okAction = [UIAlertAction
                                   actionWithTitle:@"OK"
                                   style:UIAlertActionStyleDefault
                                   handler:^(UIAlertAction *action)
                                   { [self.navigationController popViewControllerAnimated:YES];}];


        [alertController3 addAction:okAction];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self presentViewController:alertController3 animated:YES completion:nil];
        });
    }
    }
}
    
}
@end
