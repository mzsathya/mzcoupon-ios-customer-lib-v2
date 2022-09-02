//
//  ExpiryCouponRedeemViewController.m
//  testpos
//
//

#import "ExpiryCouponRedeemViewController.h"
#import <MZCustomerCouponLib/MZCustomerCouponLib.h>
#import "Common.h"
@interface ExpiryCouponRedeemViewController ()

@end

@implementation ExpiryCouponRedeemViewController
@synthesize txt_outletId,txt_suoervisorpin,txt_couponSerial;
- (void)viewDidLoad {
    [super viewDidLoad];
    txt_couponSerial.delegate = self;
    txt_outletId.delegate = self;
    txt_suoervisorpin.delegate = self;
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    [txt_suoervisorpin resignFirstResponder];
    txt_couponSerial.text = @"";
    txt_outletId.text = @"";
    txt_suoervisorpin.text = @"";
   
}
- (IBAction)btn_submit:(id)sender {
    [self.view endEditing:YES];
    if ([txt_outletId.text isEqualToString:@""] || [txt_suoervisorpin.text isEqualToString:@""] || [txt_couponSerial.text isEqualToString:@""] ){
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
        MZExpressRedeem * couponredeem5=[[MZExpressRedeem alloc]init];
        MZRedeemCouponResponse *retvalredeem5 = [[MZRedeemCouponResponse alloc]init];
        RedeemTransactionData * trxndata = [[RedeemTransactionData alloc]init];
        RedeemSerialTransactionData * trxnserial = [[RedeemSerialTransactionData alloc]init];
        RedeemTransactionModel * tredeemmodel = [[RedeemTransactionModel alloc]init];
        [trxndata setLang:@"en"];
        [trxndata setTransaction_by:@"App Pin Redemption"];
        [trxndata setOutlet_id:txt_outletId.text];
        [trxndata setTransaction_note:@"Expired Redemption"];
    
        [trxnserial setSerial:txt_couponSerial.text];
        [trxnserial setRedeem_value:@"0"];
        NSMutableArray *arraycoupon5 = [[NSMutableArray alloc]init];
        [arraycoupon5 addObject:trxnserial];
        [tredeemmodel setTxn_serials:arraycoupon5];
        [tredeemmodel setTxn_redeem: trxndata];
    
        retvalredeem5 = [couponredeem5 ExpiryCouponRedeem:tredeemmodel supervisorNo:txt_suoervisorpin.text token:[Common Accesstoken]];
        NSLog(@"%@",retvalredeem5);
    if (retvalredeem5 != NULL) {
        if (retvalredeem5.redeem_response != NULL) {
            UIAlertController *alertController1 = [UIAlertController
                                                   alertControllerWithTitle:@"Result"
                                                   message:[NSString stringWithFormat:@"%@",retvalredeem5]
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
           
        }else  if (retvalredeem5.developerMessage != NULL){
            UIAlertController *alertController2 = [UIAlertController
                                                   alertControllerWithTitle:@""
                                                   message:retvalredeem5.developerMessage
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
                                   {[self.navigationController popViewControllerAnimated:YES];}];


        [alertController3 addAction:okAction];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self presentViewController:alertController3 animated:YES completion:nil];
        });
    }
    }
    }
}
@end
