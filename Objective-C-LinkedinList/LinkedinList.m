//
//  LinkedinList.m
//  Objective-C-LinkedinList
//
//  Created by Angelos Staboulis on 5/12/24.
//

#import "LinkedinList.h"

@implementation LinkedinList
- (BOOL)isEmpty {
    return self.head == nil;
}

- (void)push:(id)value {
    self.head = [[Node alloc] initWithValue:value next:self.head];
    
    if (self.tail == nil) {
        self.tail = self.head;
    }
}

- (id)pop {
    id value = self.head.value;
    self.head = self.head.next;
    
    if ([self isEmpty]) {
        self.tail = NULL;
    }
    
    return value;
}
@end
