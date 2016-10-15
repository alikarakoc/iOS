//
//  PostTableViewCell.h
//  FirebaseDatabase
//
//  Created by Ali Karakoç on 14.10.2016.
//  Copyright © 2016 Ali Karakoç. All rights reserved.
//

#import <UIKit/UIKit.h>
@import Firebase;

@interface PostTableViewCell : UITableViewCell
@property(weak, nonatomic) IBOutlet UIImageView *authorImage;
@property(weak, nonatomic) IBOutlet UILabel *authorLabel;
@property (weak, nonatomic) IBOutlet UIButton *starButton;
@property(weak, nonatomic) IBOutlet UILabel *numStarsLabel;
@property(weak, nonatomic) IBOutlet UILabel *postTitle;
@property(weak, nonatomic) IBOutlet UITextView *postBody;
@property(weak, nonatomic) NSString *postKey;
@end
