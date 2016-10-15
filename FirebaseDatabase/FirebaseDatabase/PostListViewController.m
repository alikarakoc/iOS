#import "PostListViewController.h"
#import "Post.h"
#import "PostTableViewCell.h"
#import "PostDataSource.h"
#import "PostDetailTableViewController.h"

@import Firebase;

@implementation PostListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // [START create_database_reference]
    self.ref = [[FIRDatabase database] reference];
    // [END create_database_reference]
    
    self.dataSource = [[PostDataSource alloc] initWithQuery:[self getQuery]
                                                 modelClass:[Post class]
                                                   nibNamed:@"PostTableViewCell"
                                        cellReuseIdentifier:@"post"
                                                       view:self.tableView];
    
    [self.dataSource
     populateCellWithBlock:^void(PostTableViewCell *__nonnull cell,
                                 Post *__nonnull post) {
         cell.authorImage.image = [UIImage imageNamed:@"ic_account_circle"];
         cell.authorLabel.text = post.author;
         NSString *imageName = [post.stars objectForKey:[self getUid]] ? @"ic_star" : @"ic_star_border";
         [cell.starButton setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
         cell.numStarsLabel.text = [NSString stringWithFormat:@"%d", post.starCount];
         cell.postTitle.text = post.title;
         cell.postBody.text = post.body;
     }];
    
    self.tableView.dataSource = self.dataSource;
    self.tableView.delegate = self;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self performSegueWithIdentifier:@"detail" sender:indexPath];
}

- (void)viewWillAppear:(BOOL)animated {
    [self.tableView reloadData];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 150;
}

- (NSString *) getUid {
    return [FIRAuth auth].currentUser.uid;
}

- (FIRDatabaseQuery *) getQuery {
    return self.ref;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath *path = sender;
    PostDetailTableViewController *detail = segue.destinationViewController;
    FirebaseTableViewDataSource *source = self.dataSource;
    FIRDataSnapshot *snapshot = [source objectAtIndex:path.row];
    detail.postKey = snapshot.key;
}
@end
