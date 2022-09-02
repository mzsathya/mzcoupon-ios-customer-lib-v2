//
//  ExpressRedeemViewController.m
//  testpos
//
//

#import "ExpressRedeemViewController.h"
#import <MZCustomerCouponLib/MZCustomerCouponLib.h>
#import "Common.h"
@interface ExpressRedeemViewController ()

@end

@implementation ExpressRedeemViewController
@synthesize txt_couponserial,txt_outletId;
- (void)viewDidLoad {
    [super viewDidLoad];
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
    if ([txt_couponserial.text isEqualToString:@""] || [txt_outletId.text isEqualToString:@""] ){
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
        MZExpressRedeem * couponredeem=[[MZExpressRedeem alloc]init];
        MZRedeemCouponResponse *retvalredeem4 = [[MZRedeemCouponResponse alloc]init];
        RedeemTransactionData * txnsdata = [[RedeemTransactionData alloc]init];
        RedeemSerialTransactionData * txnsserial = [[RedeemSerialTransactionData alloc]init];
        RedeemTransactionModel * Tredeemmodel = [[RedeemTransactionModel alloc]init];
        [txnsdata setLang:@"en"];
        [txnsdata setTransaction_by:@"App Pin Redemption"];
        [txnsdata setOutlet_id:txt_outletId.text];
        [txnsdata setTransaction_note:@""];
    
        [txnsserial setSerial:txt_couponserial.text];
        [txnsserial setRedeem_value:@"0"];
        NSMutableArray *arraycoupon4 = [[NSMutableArray alloc]init];
        [arraycoupon4 addObject:txnsserial];
        [Tredeemmodel setTxn_serials:arraycoupon4];
        [Tredeemmodel setTxn_redeem: txnsdata];
    
        retvalredeem4 = [couponredeem ExpressRedeemCoupon:Tredeemmodel token:[Common Accesstoken]];
               NSLog(@"%@",retvalredeem4);
    if (retvalredeem4 != NULL) {
        if (retvalredeem4.redeem_response != NULL) {
            UIAlertController *alertController1 = [UIAlertController
                                                   alertControllerWithTitle:@"Result"
                                                   message:[NSString stringWithFormat:@"%@",retvalredeem4]
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
           
        }else  if (retvalredeem4.developerMessage != NULL){
            UIAlertController *alertController2 = [UIAlertController
                                                   alertControllerWithTitle:@""
                                                   message:retvalredeem4.developerMessage
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
