//
//  IssueCouponViewController.h
//  testpos
//
//  
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IssueCouponViewController : UIViewController<UITextFieldDelegate,UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txt_cusName;
@property (weak, nonatomic) IBOutlet UITextField *txt_cusEmail;
@property (weak, nonatomic) IBOutlet UITextField *txt_outletId;
@property (weak, nonatomic) IBOutlet UITextField *txt_couponCode;
- (IBAction)btn_submit:(id)sender;

@end

NS_ASSUME_NONNULL_END
