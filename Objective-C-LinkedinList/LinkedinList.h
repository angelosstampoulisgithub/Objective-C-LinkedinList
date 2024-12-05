//
//  LinkedinList.h
//  Objective-C-LinkedinList
//
//  Created by Angelos Staboulis on 5/12/24.
//

#import <Foundation/Foundation.h>
#import "Node.h"
NS_ASSUME_NONNULL_BEGIN

@interface LinkedinList<T> : NSObject
@property (nonatomic, strong) Node<T> *head;
@property (nonatomic, strong) Node<T> *tail;

- (BOOL)isEmpty;
- (void)push:(T)value;
- (T)pop;

@end

NS_ASSUME_NONNULL_END
