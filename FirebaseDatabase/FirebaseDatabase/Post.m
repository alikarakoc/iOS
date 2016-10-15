#import "Post.h"

@implementation Post

- (instancetype)init {
    return [self initWithUid:@"" andAuthor:@"" andTitle:@"" andBody:@""];
}

- (instancetype)initWithUid:(NSString *)uid
                  andAuthor:(NSString *)author
                   andTitle:(NSString *)title
                    andBody:(NSString *)body {
    self = [super init];
    if (self) {
        self.uid = uid;
        self.author = author;
        self.title = title;
        self.body = body;
    }
    return self;
}
@end
