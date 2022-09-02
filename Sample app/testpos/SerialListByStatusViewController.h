//
//  SerialListByStatusViewController.h
//  testpos
//
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SerialListByStatusViewController : UIViewController<UITextFieldDelegate,UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txt_customerId;
@property (weak, nonatomic) IBOutlet UITextField *txt_status;
- (IBAction)btn_submit:(id)sender;

@end

NS_ASSUME_NONNULL_END
