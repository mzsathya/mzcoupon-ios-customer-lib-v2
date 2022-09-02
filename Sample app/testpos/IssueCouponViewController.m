//
//  IssueCouponViewController.m
//  testpos
//
//  
//

#import "IssueCouponViewController.h"
#import <MZCustomerCouponLib/MZCustomerCouponLib.h>
#import "Common.h"

@interface IssueCouponViewController ()

@end

@implementation IssueCouponViewController
@synthesize txt_outletId,txt_cusName,txt_cusEmail,txt_couponCode;
- (void)viewDidLoad {
    [super viewDidLoad];
    txt_cusName.delegate = self;
    txt_cusEmail.delegate = self;
    txt_couponCode.delegate = self;
    txt_outletId.delegate = self;
    
    
}
- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    [txt_couponCode resignFirstResponder];
    txt_cusName.text = @"";
    txt_cusEmail.text = @"";
    txt_outletId.text = @"";
    txt_couponCode.text = @"";
   
}
- (IBAction)btn_submit:(id)sender {
    [self.view endEditing:YES];
    if ([txt_cusName.text isEqualToString:@""] || [txt_outletId.text isEqualToString:@""] || [txt_couponCode.text isEqualToString:@""] ||[txt_cusEmail.text isEqualToString:@""]){
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
        MZCoupon *objcoupon2=[[MZCoupon alloc]init];
        MZIssueCouponResponse *retvalcoupon2 = [[MZIssueCouponResponse alloc]init];
        IssueCustomerData * customer = [[IssueCustomerData alloc]init];
        IssueCouponModel * issuemodel = [[IssueCouponModel alloc]init];
        [customer setName:txt_cusName.text];
        [customer setEmail:txt_cusEmail.text];
        NSMutableArray *arraycoupon = [[NSMutableArray alloc]init];
        CouponData *coupon = [[CouponData alloc]init];
        [coupon setCoupon_code:txt_couponCode.text];
        [coupon setCoupon_count:@"1"];
        [arraycoupon addObject:coupon];
    
        [issuemodel setDelivery_method:@"E"];
        [issuemodel setTransaction_amount:@""];
        [issuemodel setLang:@"en"];
        [issuemodel setOutlet_id:txt_outletId.text];
        [issuemodel setCoupons:arraycoupon];
        [issuemodel setCustomer: customer];
    
        retvalcoupon2 = [objcoupon2 PostIssueCouponHold:issuemodel token:[Common Accesstoken]];
        NSString *txnid = retvalcoupon2.transaction_id;
        NSLog(@"%@",retvalcoupon2);
    if (retvalcoupon2 != NULL) {
    //Issue Coupon Commit Api///////////////////////////////////////////
    if (txnid != NULL) {
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
            
                retvalcoupon3 = [objcoupon3 PostIssueCouponCommit:commmitdata transactionId:txnid  token:[Common Accesstoken]];
                NSLog(@"%@",retvalcoupon3);
            if (retvalcoupon3 != NULL) {
                if (retvalcoupon3.transaction_id != NULL) {
                    UIAlertController *alertController2 = [UIAlertController
                                                           alertControllerWithTitle:@"Result"
                                                           message:[NSString stringWithFormat:@"%@",retvalcoupon3]
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
                }else if (retvalcoupon3.developerMessage != NULL){
                    UIAlertController *alertController3 = [UIAlertController
                                                           alertControllerWithTitle:@""
                                                           message:retvalcoupon3.message
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
           
        }else if (retvalcoupon2.developerMessage != NULL){
            UIAlertController *alertController4 = [UIAlertController
                                                   alertControllerWithTitle:@""
                                                   message:retvalcoupon2.message
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
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [txt_outletId resignFirstResponder];
    [txt_cusName resignFirstResponder];
    [txt_couponCode resignFirstResponder];
    return YES;
}
@end
