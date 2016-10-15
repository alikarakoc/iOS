#import "Comment.h"

@implementation Comment

- (instancetype)init {
    return [self initWithUid:@"" andAuthor:@"" andText:@""];
}

- (instancetype)initWithUid:(NSString *)uid andAuthor:(NSString *)author andText:(NSString *)text {
    self = [super init];
    if (self) {
        self.uid = uid;
        self.author = author;
        self.text = text;
    }
    return self;
}

@end
