//
//  ViewController.m
//  MediaHub
//
//  Created by Wu, Shifan on 4/29/17.
//  Copyright © 2017 ShifanW. All rights reserved.
//

#import "MHRootViewController.h"
#import "MHListCell.h"
#import "MHListItem.h"
#import "MHListItems.h"

@interface MHRootViewController ()

@property (nonatomic, strong) MHListItems * listItems;

@end

@implementation MHRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.listItems = [self generateData];
}

# pragma mark - UITableViewDatasource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.listItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MHListCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    [cell configureCell:self.listItems.mhItems[indexPath.row]];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 150;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 30)];
    
    UISegmentedControl * segControl = [[UISegmentedControl alloc] initWithItems:[NSArray arrayWithObjects:@"All", @"Songs", @"Movies", @"More", nil]];
    segControl.selectedSegmentIndex = 0;
    segControl.frame = view.frame;
    [segControl addTarget:self action:@selector(MySegmentControlAction:) forControlEvents: UIControlEventValueChanged];

    [view addSubview:segControl];
    return view;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    
    return 30;
}

#pragma helper method

- (void)MySegmentControlAction:(UISegmentedControl *)segment
{
    
    switch (segment.selectedSegmentIndex) {
        case 0:
            NSLog(@"0");
            break;
        case 1:
            NSLog(@"1");
            break;
        case 2:
            NSLog(@"2");
            break;
        case 3:
            NSLog(@"3");
            break;
        default:
            break;
    }
}

#pragma Help method..Will be removed

- (MHListItems * )generateData {
    
    MHListItems * listItems = [MHListItems new];
    
    MHListItem * item1 = [MHListItem new];
    item1.artistName = @"Jack Johnson";
    item1.primaryGenreName = @"Concert Films";
    
    
    MHListItem * item2 = [MHListItem new];
    item2.artistName = @"Jack Johnson";
    item2.primaryGenreName = @"Music Documentaries";
    
    MHListItem * item3 = [MHListItem new];
    item3.artistName = @"Jack Johnson";
    item3.primaryGenreName = @"Action & Adventure";
    
    NSMutableArray * items = [[NSMutableArray alloc] initWithObjects:item1, item2, item3, nil];
    
    listItems.count = 3;
    listItems.mhItems = items;
    
    return listItems;
}

@end
