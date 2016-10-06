//
//  ViewController.m
//  AFNetworkingJsonPost
//
//  Created by Ali Karakoç on 6.10.2016.
//  Copyright © 2016 Ali Karakoç. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "AFHTTPSessionManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AFHTTPSessionManager *session = [AFHTTPSessionManager manager];
    session.requestSerializer = [AFJSONRequestSerializer serializer];
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"email"] = @"email";
    params[@"password"] = @"parola";
    
    [session POST:@"http://jsonsrv.com/login/login" parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"JSON: %@", responseObject);
        //NSDictionary *dict = responseObject[@"sonuc"][0];
        NSString *mesaj = [NSString stringWithFormat:@"%@",responseObject[@"message"]];
        NSString *error = [NSString stringWithFormat:@"%@",responseObject[@"error"]];
        
        if([error boolValue] == true) {
            mesaj(@"Uyarı", mesaj, @"Tamam");
            return;
        }
        
        ViewController *pw = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
        pw.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        [self presentViewController:pw animated:YES completion:nil];
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"JSON: %@", error);
    }];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
