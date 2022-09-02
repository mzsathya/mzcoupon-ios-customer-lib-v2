//
//  SerialListByCustomerIdViewController.h
//  testpos
//
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SerialListByCustomerIdViewController : UIViewController<UITextFieldDelegate,UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txt_customerId;
- (IBAction)btn_submit:(id)sender;

@end

NS_ASSUME_NONNULL_END
