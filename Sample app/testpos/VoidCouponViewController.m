//
//  VoidCouponViewController.m
//  testpos
//
//

#import "VoidCouponViewController.h"
#import <MZCustomerCouponLib/MZCustomerCouponLib.h>
#import "Common.h"
@interface VoidCouponViewController ()

@end

@implementation VoidCouponViewController
@synthesize txt_remarks,txt_couponserial,txt_cusID;
- (void)viewDidLoad {
    [super viewDidLoad];
    txt_cusID.delegate = self;
    txt_remarks.delegate = self;
    txt_couponserial.delegate = self;
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    [txt_remarks resignFirstResponder];
    txt_remarks.text = @"";
    txt_cusID.text = @"";
    txt_couponserial.text = @"";
}

- (IBAction)btn_submit:(id)sender {
    [self.view endEditing:YES];
    if ([txt_remarks.text isEqualToString:@""] || [txt_couponserial.text isEqualToString:@""] || [txt_cusID.text isEqualToString:@""] ){
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
        MZCouponSerial *couponserial8=[[MZCouponSerial alloc]init];
           MZRedeemCouponResponse *retval7 = [[MZRedeemCouponResponse alloc]init];
           CouponVoidModel * voidmodel = [[CouponVoidModel alloc]init];
           CouponVoidTransactionData * txnvoiddata = [[CouponVoidTransactionData alloc]init];
    
        NSMutableArray *arraycoupon3 = [[NSMutableArray alloc]init];
        [arraycoupon3 addObject:txt_couponserial.text];
        [txnvoiddata setReference_id:txt_cusID.text];// CustomerId
    [txnvoiddata setRemarks:[NSString stringWithFormat:@"%@ (Void By Customer App)",txt_remarks.text]];
        [txnvoiddata setLang:@"en"];
        [txnvoiddata setTemplate_id:@""];
        [txnvoiddata setDelivery_method:@"E"];
        [voidmodel setTxn_serials:arraycoupon3];
        [voidmodel setTxn_void:txnvoiddata];
    
        retval7 = [couponserial8 CouponVoid:voidmodel token:[Common Accesstoken]];
        NSLog(@"%@",retval7);
    if (retval7 != NULL) {
        if (retval7.transaction_id != NULL) {
            UIAlertController *alertController1 = [UIAlertController
                                                   alertControllerWithTitle:@"Result"
                                                   message:[NSString stringWithFormat:@"%@",retval7]
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
           
        }else if (retval7.developerMessage != NULL){
            UIAlertController *alertController2 = [UIAlertController
                                                   alertControllerWithTitle:@""
                                                   message:retval7.developerMessage
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
    [txt_remarks resignFirstResponder];
    [txt_couponserial resignFirstResponder];
    [txt_cusID resignFirstResponder];
    return YES;
}
@end
