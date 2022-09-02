//
//  TransactionLogViewController.m
//  testpos
//
//

#import "TransactionLogViewController.h"
#import <MZCustomerCouponLib/MZCustomerCouponLib.h>
#import "Common.h"
@interface TransactionLogViewController ()

@end

@implementation TransactionLogViewController
@synthesize txt_customerid;
- (void)viewDidLoad {
    [super viewDidLoad];
    txt_customerid.delegate = self;
}

- (void)viewWillAppear:(BOOL)animated {

[super viewWillAppear:animated];

[txt_customerid resignFirstResponder];
txt_customerid.text = @"";

}

- (IBAction)btn_submit:(id)sender {
    [self.view endEditing:YES];
    if ([txt_customerid.text isEqualToString:@""]){
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
        MZTransactionLog *log = [[MZTransactionLog alloc]init];
        MZTransactionLogResponse *returnlog = [[MZTransactionLogResponse alloc]init];
        returnlog = [log GetTransactionLogByCustomerId:txt_customerid.text skip:@"0" limit:@"20" token:[Common Accesstoken]];
        NSLog(@"%@",returnlog);
    if (returnlog != NULL) {
        if (returnlog.results != NULL) {
            UIAlertController *alertController1 = [UIAlertController
                                                   alertControllerWithTitle:@"Result"
                                                   message:[NSString stringWithFormat:@"%@",returnlog]
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
           
        }else if (returnlog.developerMessage != NULL) {
            UIAlertController *alertController2 = [UIAlertController
                                                   alertControllerWithTitle:@""
                                                   message:returnlog.developerMessage
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
