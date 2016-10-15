
#import "LoginViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self klavyeButton];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(klavyeKapat)];
    
    [self.view addGestureRecognizer:tap];
    
    UIColor *color = [UIColor colorWithRed:162.0f/255.0f
                                     green:161.0f/255.0f
                                      blue:184.0f/255.0f
                                     alpha:1.0f];
    _username.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Kullanıcı adınız" attributes:@{NSForegroundColorAttributeName: color}];
    _password.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Parolanız" attributes:@{NSForegroundColorAttributeName: color}];

    
    
    _bLogin.layer.cornerRadius = 25;
    _bLogin.clipsToBounds = YES;
    
}


- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [_username becomeFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

-(void)klavyeButton{
    UIColor *color = [UIColor colorWithRed:255.0f/255.0f
                                     green:45.0f/255.0f
                                      blue:85.0f/255.0f
                                     alpha:1.0f];
    UIToolbar* numberToolbar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 320, 50)];
    numberToolbar.barTintColor= color;
    numberToolbar.tintColor = [UIColor whiteColor];
    numberToolbar.items = [NSArray arrayWithObjects:
                           [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil],
                           [[UIBarButtonItem alloc]initWithTitle:@"Klavye Kapat" style:UIBarButtonItemStyleDone target:self action:@selector(klavyeKapat)],
                           nil];
    [numberToolbar sizeToFit];
    _username.inputAccessoryView = numberToolbar;
    _password.inputAccessoryView = numberToolbar;
}
-(void)klavyeKapat{
    [self.view endEditing:YES];
}
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

@end
