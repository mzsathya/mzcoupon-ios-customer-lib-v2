//
//  HomeTableViewController.m
//  testpos
//
//

#import "HomeTableViewController.h"
#import <MZCustomerCouponLib/MZCustomerCouponLib.h>
#import "Common.h"
@interface HomeTableViewController ()

@end

@implementation HomeTableViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
- (void)viewWillDisappear:(BOOL)animated {
    
    //[super viewWillAppear:animated];
    NSString *straccess = [Common Accesstoken];
    NSLog(@"%@",straccess);
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 6;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell=NULL;
    if (indexPath.row == 0) {
        UITableViewCell* cell0 = [tableView dequeueReusableCellWithIdentifier:@"cell1" forIndexPath:indexPath];
        
        cell=cell0;
    }else if (indexPath.row == 1) {
        UITableViewCell* cell1 = [tableView dequeueReusableCellWithIdentifier:@"cell2" forIndexPath:indexPath];
        
        cell=cell1;
        
    }else if (indexPath.row == 2) {
        UITableViewCell* cell2 = [tableView dequeueReusableCellWithIdentifier:@"cell3" forIndexPath:indexPath];
        
        cell=cell2;
    }else if (indexPath.row == 3) {
        UITableViewCell* cell3 = [tableView dequeueReusableCellWithIdentifier:@"cell4" forIndexPath:indexPath];
        
        cell=cell3;
    }else if (indexPath.row == 4) {
        UITableViewCell* cell4 = [tableView dequeueReusableCellWithIdentifier:@"cell5" forIndexPath:indexPath];
        
        cell=cell4;
    }else if (indexPath.row == 5) {
        UITableViewCell* cell5 = [tableView dequeueReusableCellWithIdentifier:@"cell6" forIndexPath:indexPath];
        
        cell=cell5;
//    }else if (indexPath.row == 6) {
//        UITableViewCell* cell6 = [tableView dequeueReusableCellWithIdentifier:@"cell7" forIndexPath:indexPath];
//
//        cell=cell6;
//    }else if (indexPath.row == 7) {
//        UITableViewCell* cell7 = [tableView dequeueReusableCellWithIdentifier:@"cell8" forIndexPath:indexPath];
//
//        cell=cell7;
//    }else if (indexPath.row == 8) {
//        UITableViewCell* cell8 = [tableView dequeueReusableCellWithIdentifier:@"cell9" forIndexPath:indexPath];
//
//        cell=cell8;
//    }else if (indexPath.row == 9) {
//        UITableViewCell* cell9 = [tableView dequeueReusableCellWithIdentifier:@"cell10" forIndexPath:indexPath];
//
//        cell=cell9;
//    }else if (indexPath.row == 10) {
//        UITableViewCell* cell10 = [tableView dequeueReusableCellWithIdentifier:@"cell11" forIndexPath:indexPath];
//
//        cell=cell10;
//    }else if (indexPath.row == 11) {
//        UITableViewCell* cell11 = [tableView dequeueReusableCellWithIdentifier:@"cell12" forIndexPath:indexPath];
//
//        cell=cell11;
//    }else if (indexPath.row == 12) {
//        UITableViewCell* cell12 = [tableView dequeueReusableCellWithIdentifier:@"cell13" forIndexPath:indexPath];
//
//        cell=cell12;
//    }else if (indexPath.row == 13) {
//        UITableViewCell* cell13 = [tableView dequeueReusableCellWithIdentifier:@"cell14" forIndexPath:indexPath];
//
//        cell=cell13;
//    }else if (indexPath.row == 14) {
//        UITableViewCell* cell14 = [tableView dequeueReusableCellWithIdentifier:@"cell15" forIndexPath:indexPath];
//
//        cell=cell14;
//    }else if (indexPath.row == 15) {
//        UITableViewCell* cell15 = [tableView dequeueReusableCellWithIdentifier:@"cell16" forIndexPath:indexPath];
//
//        cell=cell15;
//    }else if (indexPath.row == 16) {
//        UITableViewCell* cell16 = [tableView dequeueReusableCellWithIdentifier:@"cell17" forIndexPath:indexPath];
//
//        cell=cell16;
//    }else if (indexPath.row == 17) {
//        UITableViewCell* cell17 = [tableView dequeueReusableCellWithIdentifier:@"cell18" forIndexPath:indexPath];
//
//        cell=cell17;
//    }else if (indexPath.row == 18) {
//        UITableViewCell* cell18 = [tableView dequeueReusableCellWithIdentifier:@"cell19" forIndexPath:indexPath];
//
//        cell=cell18;
//    }else if (indexPath.row == 19) {
//        UITableViewCell* cell19 = [tableView dequeueReusableCellWithIdentifier:@"cell20" forIndexPath:indexPath];
//
//        cell=cell19;
//    }else if (indexPath.row == 20) {
//        UITableViewCell* cell20 = [tableView dequeueReusableCellWithIdentifier:@"cell21" forIndexPath:indexPath];
//
//        cell=cell20;
//    }else if (indexPath.row == 21) {
//        UITableViewCell* cell21 = [tableView dequeueReusableCellWithIdentifier:@"cell22" forIndexPath:indexPath];
//
//        cell=cell21;
//    }else if (indexPath.row == 22) {
//        UITableViewCell* cell22 = [tableView dequeueReusableCellWithIdentifier:@"cell23" forIndexPath:indexPath];
//
//        cell=cell22;
//    }else if (indexPath.row == 23) {
//        UITableViewCell* cell23 = [tableView dequeueReusableCellWithIdentifier:@"cell24" forIndexPath:indexPath];
//
//        cell=cell23;
//    }else if (indexPath.row == 24) {
//        UITableViewCell* cell24 = [tableView dequeueReusableCellWithIdentifier:@"cell25" forIndexPath:indexPath];
//
//        cell=cell24;
//    }else if (indexPath.row == 25) {
//        UITableViewCell* cell25 = [tableView dequeueReusableCellWithIdentifier:@"cell26" forIndexPath:indexPath];
//
//        cell=cell25;
//    }else if (indexPath.row == 26) {
//        UITableViewCell* cell26 = [tableView dequeueReusableCellWithIdentifier:@"cell27" forIndexPath:indexPath];
//
//        cell=cell26;
//
//    }else if (indexPath.row == 27) {
//            UITableViewCell* cell27 = [tableView dequeueReusableCellWithIdentifier:@"cell28" forIndexPath:indexPath];
//
//            cell=cell27;
//        }else if (indexPath.row == 28) {
//            UITableViewCell* cell28 = [tableView dequeueReusableCellWithIdentifier:@"cell29" forIndexPath:indexPath];
//
//            cell=cell28;
//        }else if (indexPath.row == 29) {
//            UITableViewCell* cell29 = [tableView dequeueReusableCellWithIdentifier:@"cell30" forIndexPath:indexPath];
//
//            cell=cell29;
        }
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    if(indexPath.row==0){
        [self performSegueWithIdentifier:@"cell1" sender:self];
    }
    if(indexPath.row==1){
        [self performSegueWithIdentifier:@"cell2" sender:self];
    }
    if(indexPath.row==2){
        [self performSegueWithIdentifier:@"cell3" sender:self];
    }
    if(indexPath.row==3){
        [self performSegueWithIdentifier:@"cell4" sender:self];
    }
    if(indexPath.row==4){
        [self performSegueWithIdentifier:@"cell5" sender:self];
    }
    if(indexPath.row==5){
        [self performSegueWithIdentifier:@"cell6" sender:self];
    }
    if(indexPath.row==6){
        [self performSegueWithIdentifier:@"cell7" sender:self];
    }
//    if(indexPath.row==7){
//        [self performSegueWithIdentifier:@"cell8" sender:self];
//    }
//    if(indexPath.row==8){
//        [self performSegueWithIdentifier:@"cell9" sender:self];
//    }
//    if(indexPath.row==9){
//        MZMerchant *merchent = [[MZMerchant alloc]init];
//        MZMerchantSettingResponse *returnmerchantres2 = [[MZMerchantSettingResponse alloc]init];
//        returnmerchantres2 = [merchent GetMerchantDownloadSetting:[Common Accesstoken]];
//        NSLog(@"%@",returnmerchantres2);
//    if (returnmerchantres2 != NULL) {
//        if (returnmerchantres2.developerMessage == NULL) {
//            UIAlertController *alertController1 = [UIAlertController
//                                                   alertControllerWithTitle:@""
//                                                   message:@"Getting Merchant Download Setting details Successfully"
//                                                   preferredStyle:UIAlertControllerStyleAlert];
//            UIAlertAction *okAction = [UIAlertAction
//                                       actionWithTitle:@"OK"
//                                       style:UIAlertActionStyleDefault
//                                       handler:^(UIAlertAction *action)
//                                       { [self dismissViewControllerAnimated:YES completion:nil];}];
//
//
//            [alertController1 addAction:okAction];
//            dispatch_async(dispatch_get_main_queue(), ^{
//                [self presentViewController:alertController1 animated:YES completion:nil];
//            });
//
//        }else {
//            UIAlertController *alertController2 = [UIAlertController
//                                                   alertControllerWithTitle:@""
//                                                   message:returnmerchantres2.developerMessage
//                                                   preferredStyle:UIAlertControllerStyleAlert];
//            UIAlertAction *okAction = [UIAlertAction
//                                       actionWithTitle:@"OK"
//                                       style:UIAlertActionStyleDefault
//                                       handler:^(UIAlertAction *action)
//                                       { [self dismissViewControllerAnimated:YES completion:nil];}];
//
//
//            [alertController2 addAction:okAction];
//            dispatch_async(dispatch_get_main_queue(), ^{
//                [self presentViewController:alertController2 animated:YES completion:nil];
//            });
//        }
//    }
//
//    }
//    if(indexPath.row==10){
//        [self performSegueWithIdentifier:@"cell10" sender:self];
//    }
//    if(indexPath.row==11){
//        MZCoupon *objcoupon=[[MZCoupon alloc]init];
//        MZCouponResponse *retvalcoupon = [[MZCouponResponse alloc]init];
//        retvalcoupon = [objcoupon getCoupons:@"0" limit:@"20" token:[Common Accesstoken]];
//        NSLog(@"%@",retvalcoupon);
//        NSString *result = [NSString stringWithFormat:@"%@", retvalcoupon];
//    if (retvalcoupon != NULL) {
//        if (retvalcoupon.developerMessage == NULL) {
//            UIAlertController *alertController1 = [UIAlertController
//                                                   alertControllerWithTitle:@"Result"
//                                                   message:result
//                                                   preferredStyle:UIAlertControllerStyleAlert];
//            UIAlertAction *okAction = [UIAlertAction
//                                       actionWithTitle:@"OK"
//                                       style:UIAlertActionStyleDefault
//                                       handler:^(UIAlertAction *action)
//                                       { [self dismissViewControllerAnimated:YES completion:nil];}];
//
//
//            [alertController1 addAction:okAction];
//            dispatch_async(dispatch_get_main_queue(), ^{
//                [self presentViewController:alertController1 animated:YES completion:nil];
//            });
//
//        }else {
//            UIAlertController *alertController2 = [UIAlertController
//                                                   alertControllerWithTitle:@""
//                                                   message:retvalcoupon.developerMessage
//                                                   preferredStyle:UIAlertControllerStyleAlert];
//            UIAlertAction *okAction = [UIAlertAction
//                                       actionWithTitle:@"OK"
//                                       style:UIAlertActionStyleDefault
//                                       handler:^(UIAlertAction *action)
//                                       { [self dismissViewControllerAnimated:YES completion:nil];}];
//
//
//            [alertController2 addAction:okAction];
//            dispatch_async(dispatch_get_main_queue(), ^{
//                [self presentViewController:alertController2 animated:YES completion:nil];
//            });
//        }
//    }
//
//
//    }
//    if(indexPath.row==12){
//        [self performSegueWithIdentifier:@"cell11" sender:self];
//    }
//    if(indexPath.row==13){
//        [self performSegueWithIdentifier:@"cell12" sender:self];
//    }
//    if(indexPath.row==14){
//            MZPayment *objpay=[[MZPayment alloc]init];
//            MZPaymentResponse *retvalpay = [[MZPaymentResponse alloc]init];
//            retvalpay = [objpay getPaymentList:[Common Accesstoken]];
//            NSLog(@"%@",retvalpay);
//        if (retvalpay != NULL) {
//            if (retvalpay.developerMessage == NULL) {
//                UIAlertController *alertController1 = [UIAlertController
//                                                       alertControllerWithTitle:@""
//                                                       message:@"Getting Payment List Successfully"
//                                                       preferredStyle:UIAlertControllerStyleAlert];
//                UIAlertAction *okAction = [UIAlertAction
//                                           actionWithTitle:@"OK"
//                                           style:UIAlertActionStyleDefault
//                                           handler:^(UIAlertAction *action)
//                                           { [self dismissViewControllerAnimated:YES completion:nil];}];
//
//
//                [alertController1 addAction:okAction];
//                dispatch_async(dispatch_get_main_queue(), ^{
//                    [self presentViewController:alertController1 animated:YES completion:nil];
//                });
//
//            }else {
//                UIAlertController *alertController2 = [UIAlertController
//                                                       alertControllerWithTitle:@""
//                                                       message:retvalpay.developerMessage
//                                                       preferredStyle:UIAlertControllerStyleAlert];
//                UIAlertAction *okAction = [UIAlertAction
//                                           actionWithTitle:@"OK"
//                                           style:UIAlertActionStyleDefault
//                                           handler:^(UIAlertAction *action)
//                                           { [self dismissViewControllerAnimated:YES completion:nil];}];
//
//
//                [alertController2 addAction:okAction];
//                dispatch_async(dispatch_get_main_queue(), ^{
//                    [self presentViewController:alertController2 animated:YES completion:nil];
//                });
//            }
//        }
//
//    }
//    if(indexPath.row==15){
//        [self performSegueWithIdentifier:@"cell13" sender:self];
//    }
//    if(indexPath.row==16){
//        [self performSegueWithIdentifier:@"cell14" sender:self];
//    }
//    if(indexPath.row==17){
//        [self performSegueWithIdentifier:@"cell15" sender:self];
//    }
//    if(indexPath.row==18){
//        [self performSegueWithIdentifier:@"cell16" sender:self];
//    }
//    if(indexPath.row==19){
//        [self performSegueWithIdentifier:@"cell17" sender:self];
//    }
//    if(indexPath.row==20){
//        [self performSegueWithIdentifier:@"cell18" sender:self];
//    }
//    if(indexPath.row==21){
//        [self performSegueWithIdentifier:@"cell19" sender:self];
//    }
//    if(indexPath.row==22){
//        [self performSegueWithIdentifier:@"cell20" sender:self];
//    }
//    if(indexPath.row==23){
//        [self performSegueWithIdentifier:@"cell21" sender:self];
//    }
//    if(indexPath.row==24){
//        [self performSegueWithIdentifier:@"cell22" sender:self];
//    }
//    if(indexPath.row==25){
//        [self performSegueWithIdentifier:@"cell23" sender:self];
//    }
//    if(indexPath.row==26){
//        [self performSegueWithIdentifier:@"cell24" sender:self];
//    }
//    if(indexPath.row==27){
//        [self performSegueWithIdentifier:@"cell25" sender:self];
//    }
//    if(indexPath.row==28){
//        [self performSegueWithIdentifier:@"cell26" sender:self];
//    }
//    if(indexPath.row==29){
//        [self performSegueWithIdentifier:@"cell27" sender:self];
//    }
    
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
