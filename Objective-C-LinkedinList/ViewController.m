//
//  ViewController.m
//  Objective-C-LinkedinList
//
//  Created by Angelos Staboulis on 5/12/24.
//

#import "ViewController.h"
#import "LinkedinList.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createLinkedinList];
    [self createTableViewArray];
    [_tableView setDelegate:self];
    [_tableView setDataSource:self];
    [_tableView registerClass:[UITableViewCell self] forCellReuseIdentifier:@"cell"];
    // Do any additional setup after loading the view.
}
-(void) createLinkedinList{
    _list = [[LinkedinList alloc] init];
    [_list push:@100];
    [_list push:@200];
    [_list push:@300];
    [_list push:@400];
    [_list push:@500];
}
-(void) createTableViewArray{
    _array = [NSMutableArray array];
    [_array addObject:@100];
    [_array addObject:@200];
    [_array addObject:@300];
    [_array addObject:@400];
    [_array addObject:@500];
  
}
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    if (indexPath.row < _array.count) {
        NSString *cellText = [NSString stringWithFormat:@"%@",[_array objectAtIndex:indexPath.row]];
        [cell setText:cellText];
    }
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section { 
    return [_array count];
}



@end
