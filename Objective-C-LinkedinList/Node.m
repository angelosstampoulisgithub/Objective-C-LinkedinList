//
//  Node.m
//  Objective-C-LinkedinList
//
//  Created by Angelos Staboulis on 5/12/24.
//

#import "Node.h"

@implementation Node
- (instancetype)initWithValue:(id)value next:(Node *)next {
    self = [super init];
    if (self) {
        _value = value;
        _next = next;
    }
    return self;
}
@end
