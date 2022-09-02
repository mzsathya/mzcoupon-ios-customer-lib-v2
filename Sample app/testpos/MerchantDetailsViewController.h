//
//  MerchantDetailsViewController.h
//  testpos
//
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MerchantDetailsViewController : UIViewController<UITextFieldDelegate,UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txt_merchantId;
- (IBAction)btn_submit:(id)sender;

@end

NS_ASSUME_NONNULL_END
