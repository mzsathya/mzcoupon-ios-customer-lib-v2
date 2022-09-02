//
//  UpdateReferenceViewController.h
//  testpos
//
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UpdateReferenceViewController : UIViewController<UITextFieldDelegate,UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txt_refNote;
- (IBAction)btn_submit:(id)sender;

@end

NS_ASSUME_NONNULL_END
