//
//  LoginViewController.h
//  MyFirstProject
//
//  Created by Ali Karakoç on 8.10.2016.
//  Copyright © 2016 Ali Karakoç. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UIButton *bLogin;

@end
