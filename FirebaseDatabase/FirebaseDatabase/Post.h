#import <Foundation/Foundation.h>

@interface Post : NSObject
@property(strong, nonatomic) NSString *uid;
@property(strong, nonatomic) NSString *author;
@property(strong, nonatomic) NSString *title;
@property(strong, nonatomic) NSString *body;
@property(assign, nonatomic) int starCount;
@property(strong, nonatomic) NSDictionary <NSString *, NSNumber *> *stars;

- (instancetype)initWithUid:(NSString *)uid
                  andAuthor:(NSString *)author
                   andTitle:(NSString *)title
                    andBody:(NSString *)body;

@end
