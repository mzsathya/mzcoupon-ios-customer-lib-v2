//
//  RedeemCouponRollbackViewController.m
//  testpos
//

//

#import "RedeemCouponRollbackViewController.h"
#import <MZCustomerCouponLib/MZCustomerCouponLib.h>
#import "Common.h"

@interface RedeemCouponRollbackViewController ()

@end

@implementation RedeemCouponRollbackViewController
@synthesize txt_txnId;
- (void)viewDidLoad {
    [super viewDidLoad];
    txt_txnId.delegate = self;
    
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    [txt_txnId resignFirstResponder];
    txt_txnId.text = @"";
}

- (IBAction)btn_submit:(id)sender {
    [self.view endEditing:YES];
    if ([txt_txnId.text isEqualToString:@""] ){
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
        MZCouponSerial *couponserial3=[[MZCouponSerial alloc]init];
        MZRedeemCouponResponse *retvalredeem2 = [[MZRedeemCouponResponse alloc]init];
        RedeemCouponCommitData * txncommitrollback = [[RedeemCouponCommitData alloc]init];
        [txncommitrollback setTransaction_ref_no:@"App Redemption Rollback"];
        [txncommitrollback setTransaction_note:@"Apply Coupon Redemption Rollback"];
        retvalredeem2 = [couponserial3 postRedeemCouponRollback:txncommitrollback transactionId:txt_txnId.text token:[Common Accesstoken]];
        NSLog(@"%@",retvalredeem2);
    if (retvalredeem2 != NULL) {
        if (retvalredeem2.transaction_id != NULL) {
            UIAlertController *alertController1 = [UIAlertController
                                                   alertControllerWithTitle:@"Result"
                                                   message:[NSString stringWithFormat:@"%@",retvalredeem2]
                                                   preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *okAction = [UIAlertAction
                                       actionWithTitle:@"OK"
                                       style:UIAlertActionStyleDefault
                                       handler:^(UIAlertAction *action)
                                       { [self.navigationController popViewControllerAnimated:YES];}];
           
            
            [alertController1 addAction:okAction];
            dispatch_async(dispatch_get_main_queue(), ^{
                [self presentViewController:alertController1 animated:YES completion:nil];
            });
           
        }else  if (retvalredeem2.developerMessage != NULL){
            UIAlertController *alertController2 = [UIAlertController
                                                   alertControllerWithTitle:@""
                                                   message:retvalredeem2.developerMessage
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
