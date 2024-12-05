//
//  ViewController.h
//  Objective-C-LinkedinList
//
//  Created by Angelos Staboulis on 5/12/24.
//

#import <UIKit/UIKit.h>
#import "LinkedinList.h"
@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSMutableArray *array;
@property LinkedinList *list;
@end

