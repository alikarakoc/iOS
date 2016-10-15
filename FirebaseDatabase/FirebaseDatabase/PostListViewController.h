#import <UIKit/UIKit.h>
@import FirebaseDatabaseUI;
@import Firebase;

@interface PostListViewController : UIViewController <UITableViewDelegate>
// [START define_database_reference]
@property (strong, nonatomic) FIRDatabaseReference *ref;
// [END define_database_reference]
@property (strong, nonatomic) FirebaseTableViewDataSource *dataSource;

@property (weak, nonatomic) IBOutlet UITableView *tableView;
- (NSString *) getUid;
@end
