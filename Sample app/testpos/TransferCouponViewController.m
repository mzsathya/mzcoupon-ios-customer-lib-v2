//
//  TransferCouponViewController.m
//  testpos
//
//

#import "TransferCouponViewController.h"
#import <MZCustomerCouponLib/MZCustomerCouponLib.h>
#import "Common.h"
@interface TransferCouponViewController ()

@end

@implementation TransferCouponViewController
@synthesize txt_couponserial,txt_email,txt_message,txt_cudtomerId;
- (void)viewDidLoad {
    [super viewDidLoad];
    txt_email.delegate = self;
    txt_message.delegate = self;
    txt_cudtomerId.delegate = self;
    txt_couponserial.delegate = self;
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    [txt_message resignFirstResponder];
    txt_email.text = @"";
    txt_message.text = @"";
    txt_cudtomerId.text = @"";
    txt_couponserial.text = @"";
}

- (IBAction)btn_submit:(id)sender {
    [self.view endEditing:YES];
    if ([txt_message.text isEqualToString:@""] || [txt_couponserial.text isEqualToString:@""] || [txt_email.text isEqualToString:@""] ||[txt_email.text isEqualToString:@""]){
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
         MZCouponSerial *couponserial7=[[MZCouponSerial alloc]init];
           MZRedeemCouponResponse *retval6 = [[MZRedeemCouponResponse alloc]init];
            CouponTransferModel * txnmodel = [[CouponTransferModel alloc]init];
            CouponTransferData * txndata1 = [[CouponTransferData alloc]init];
    
             NSMutableArray *arraycoupon2 = [[NSMutableArray alloc]init];
             [arraycoupon2 addObject:txt_couponserial.text];
             [txndata1 setCustomer_email:txt_email.text];
              [txndata1 setSerials:arraycoupon2];
              [txnmodel setTransfer_to:txndata1];
                [txnmodel setLang:@"en"];
                [txnmodel setCustomer_id:txt_cudtomerId.text];
                [txnmodel setSender_message:txt_message.text];
             [txnmodel setTransfer_template_id:@""];
                retval6 = [couponserial7 CouponTransfer:txnmodel token:[Common Accesstoken]];
        NSLog(@"%@",retval6);
    if (retval6 != NULL) {
        if (retval6.transfer_id != NULL) {
            UIAlertController *alertController1 = [UIAlertController
                                                   alertControllerWithTitle:@"Result"
                                                   message:[NSString stringWithFormat:@"%@",retval6]
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
           
        }else if (retval6.developerMessage != NULL){
            UIAlertController *alertController2 = [UIAlertController
                                                   alertControllerWithTitle:@""
                                                   message:retval6.developerMessage
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
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [txt_message resignFirstResponder];
    [txt_cudtomerId resignFirstResponder];
    [txt_couponserial resignFirstResponder];
    return YES;
}
@end
