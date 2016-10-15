#import "MyPostsViewController.h"

@implementation MyPostsViewController

- (FIRDatabaseQuery *) getQuery {
    return [[self.ref child:@"user-posts"] child:[super getUid]];
}

@end
