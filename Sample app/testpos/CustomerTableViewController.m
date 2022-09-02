//
//  CustomerTableViewController.m
//  testpos
//
//  Created by Sathiyamoorthy on 01/09/22.
//

#import "CustomerTableViewController.h"

@interface CustomerTableViewController ()

@end

@implementation CustomerTableViewController

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
    return 7;
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
    }else if (indexPath.row == 6) {
        UITableViewCell* cell6 = [tableView dequeueReusableCellWithIdentifier:@"cell7" forIndexPath:indexPath];

        cell=cell6;
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
