//
//  TransferCouponViewController.h
//  testpos
//
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TransferCouponViewController : UIViewController<UITextFieldDelegate,UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txt_couponserial;
@property (weak, nonatomic) IBOutlet UITextField *txt_email;
@property (weak, nonatomic) IBOutlet UITextField *txt_message;
@property (weak, nonatomic) IBOutlet UITextField *txt_cudtomerId;
- (IBAction)btn_submit:(id)sender;

@end

NS_ASSUME_NONNULL_END
