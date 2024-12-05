//
//  Node.h
//  Objective-C-LinkedinList
//
//  Created by Angelos Staboulis on 5/12/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Node<T> : NSObject
@property (nonatomic, strong) T value;
@property (nonatomic, strong) Node<T> *next;

- (instancetype)initWithValue:(T)value next:(Node<T> *)next;
@end

NS_ASSUME_NONNULL_END
