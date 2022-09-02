//
//  ProfileUpdateViewController.h
//  testpos
//
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ProfileUpdateViewController : UIViewController<UITextFieldDelegate,UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txt_email;
@property (weak, nonatomic) IBOutlet UITextField *txt_cusFirstname;

@property (weak, nonatomic) IBOutlet UITextField *txt_cusAddress;
@property (weak, nonatomic) IBOutlet UITextField *txt_cusMobile;
@property (weak, nonatomic) IBOutlet UITextField *txt_cusLastName;
@property (weak, nonatomic) IBOutlet UITextField *txt_customerId;
- (IBAction)btn_submit:(id)sender;
@end

NS_ASSUME_NONNULL_END
