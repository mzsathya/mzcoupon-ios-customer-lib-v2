//
//  MerchantTableViewController.m
//  testpos
//
//  Created by Sathiyamoorthy on 01/09/22.
//

#import "MerchantTableViewController.h"
#import <MZCustomerCouponLib/MZCustomerCouponLib.h>
#import "Common.h"

@interface MerchantTableViewController ()

@end

@implementation MerchantTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 2;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell=NULL;
    if (indexPath.row == 0) {
        UITableViewCell* cell0 = [tableView dequeueReusableCellWithIdentifier:@"cell1" forIndexPath:indexPath];
        
        cell=cell0;
    }else if (indexPath.row == 1) {
        UITableViewCell* cell1 = [tableView dequeueReusableCellWithIdentifier:@"cell2" forIndexPath:indexPath];
        
        cell=cell1;
        
    }
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    if(indexPath.row==0){
        [self performSegueWithIdentifier:@"merchcell1" sender:self];
    }
    if(indexPath.row==1){
        MZMerchant *merchent = [[MZMerchant alloc]init];
                MZMerchantSettingResponse *returnmerchantres2 = [[MZMerchantSettingResponse alloc]init];
                returnmerchantres2 = [merchent GetMerchantDownloadSetting:[Common Accesstoken]];
                NSLog(@"%@",returnmerchantres2);
            if (returnmerchantres2 != NULL) {
                if (returnmerchantres2.merchant_id != NULL) {
                    UIAlertController *alertController1 = [UIAlertController
                                                           alertControllerWithTitle:@"Result"
                                                           message:[NSString stringWithFormat:@"%@",returnmerchantres2]
                                                           preferredStyle:UIAlertControllerStyleAlert];
                    UIAlertAction *okAction = [UIAlertAction
                                               actionWithTitle:@"OK"
                                               style:UIAlertActionStyleDefault
                                               handler:^(UIAlertAction *action)
                                               { [self dismissViewControllerAnimated:YES completion:nil];}];
        
        
                    [alertController1 addAction:okAction];
                    dispatch_async(dispatch_get_main_queue(), ^{
                        [self presentViewController:alertController1 animated:YES completion:nil];
                    });
        
                }else  if (returnmerchantres2.developerMessage != NULL){
                    UIAlertController *alertController2 = [UIAlertController
                                                           alertControllerWithTitle:@""
                                                           message:returnmerchantres2.developerMessage
                                                           preferredStyle:UIAlertControllerStyleAlert];
                    UIAlertAction *okAction = [UIAlertAction
                                               actionWithTitle:@"OK"
                                               style:UIAlertActionStyleDefault
                                               handler:^(UIAlertAction *action)
                                               { [self dismissViewControllerAnimated:YES completion:nil];}];
        
        
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
                                           { [self dismissViewControllerAnimated:YES completion:nil];}];
    
    
                [alertController3 addAction:okAction];
                dispatch_async(dispatch_get_main_queue(), ^{
                    [self presentViewController:alertController3 animated:YES completion:nil];
                });
            }
            }
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
