//
//  RegisterViewController.h
//  testpos
//
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RegisterViewController : UIViewController<UITextFieldDelegate,UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txt_customerName;
@property (weak, nonatomic) IBOutlet UITextField *txt_customerEmail;
@property (weak, nonatomic) IBOutlet UITextField *txt_customerPassword;
@property (weak, nonatomic) IBOutlet UITextField *txt_customerMobile;
- (IBAction)btn_Submit:(id)sender;

@end

NS_ASSUME_NONNULL_END
