

#import "ViewController.h"

@import Firebase;

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *password;
- (IBAction)bSave:(id)sender;
@property (strong, nonatomic) FIRDatabaseReference *ref;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.ref = [[FIRDatabase database] reference];
    
    
    /*
     
     GÜNCELLEME İÇİN [[_ref child:@"posts"] child:@"-KU2Kmv53i3c1RHuXUnu"].key
     
     YENİ KAYIT İÇİN [[_ref child:@"posts"] childByAutoId].key
     */
 
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (IBAction)bSave:(id)sender {
    
    NSString *key = [[_ref child:@"posts"] childByAutoId].key;
    NSDictionary *post = @{@"uid": key, @"author": _name.text, @"title": _email.text, @"body": _password.text};
    NSDictionary *childUpdates = @{[@"/posts/" stringByAppendingString:key]: post};
    [_ref updateChildValues:childUpdates];
    
    
}
@end
