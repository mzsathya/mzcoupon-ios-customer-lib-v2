//
//  UpdateReferenceViewController.m
//  testpos
//
//

#import "UpdateReferenceViewController.h"
#import <MZCustomerCouponLib/MZCustomerCouponLib.h>
#import "Common.h"
@interface UpdateReferenceViewController ()

@end

@implementation UpdateReferenceViewController
@synthesize txt_refNote;
- (void)viewDidLoad {
    [super viewDidLoad];
    txt_refNote.delegate = self;
}

- (void)viewWillAppear:(BOOL)animated {

[super viewWillAppear:animated];

[txt_refNote resignFirstResponder];
txt_refNote.text = @"";

}

- (IBAction)btn_submit:(id)sender {
    [self.view endEditing:YES];
    if ([txt_refNote.text isEqualToString:@""] ){
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
        MZExpressRedeem * couponredeem6=[[MZExpressRedeem alloc]init];
        MZRedeemCouponResponse *retvalredeem6 = [[MZRedeemCouponResponse alloc]init];
        ReferenceData * refdata = [[ReferenceData alloc]init];
        [refdata setTransaction_ref_no:@"Testing"];
        [refdata setReference_image:@""];
        retvalredeem6 = [couponredeem6 UpdateReferenceCouponRedeem:refdata transactionId:txt_refNote.text token:[Common Accesstoken]];
        NSLog(@"%@",retvalredeem6);
    if (retvalredeem6 != NULL) {
        if (retvalredeem6.transaction_ref_no != NULL) {
            UIAlertController *alertController1 = [UIAlertController
                                                   alertControllerWithTitle:@"Result"
                                                   message:[NSString stringWithFormat:@"%@",retvalredeem6]
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
           
        }else if (retvalredeem6.developerMessage != NULL) {
            UIAlertController *alertController2 = [UIAlertController
                                                   alertControllerWithTitle:@""
                                                   message:retvalredeem6.developerMessage
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
