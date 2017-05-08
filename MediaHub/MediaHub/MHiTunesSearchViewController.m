//
//  ViewController.m
//  MediaHub
//
//  Created by Wu, Shifan on 5/1/17.
//  Copyright © 2017 ShifanW. All rights reserved.
//

#import "MHiTunesSearchViewController.h"
#import "MHListCell.h"
#import "MHiTunesItem.h"
#import "MHiTunesSearchResults.h"

#import <ReactiveCocoa/ReactiveCocoa.h>
#import "UISearchBar+RAC.h"

@interface MHiTunesSearchViewController ()

@property (weak, nonatomic)MHiTunesSearchViewModel *viewModel;
@property (nonatomic, strong) MHiTunesSearchResults * listItems;
@property (weak, nonatomic) IBOutlet UITextField *searchTextField;
@property (weak, nonatomic) IBOutlet UIButton *btnSearch;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *loadingIndicator;


@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@end

@implementation MHiTunesSearchViewController

- (instancetype)initWithViewModel:(MHiTunesSearchViewModel *)viewModel {
    self = [super init];
    if (self) {
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        self = [sb instantiateViewControllerWithIdentifier:@"MHiTunesSearchViewController"];
        _viewModel = viewModel;
    }


    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    self.listItems = [self generateData];

    [self bindViewModel];
}

- (void)bindViewModel {
    self.title = self.viewModel.title;
    self.searchTextField.text = self.viewModel.searchText;

    RAC(self.viewModel, searchText) = self.searchTextField.rac_textSignal;

    self.btnSearch.rac_command = self.viewModel.executeSearch;

    RAC([UIApplication sharedApplication], networkActivityIndicatorVisible) = self.viewModel.executeSearch.executing;
    RAC(self.loadingIndicator, hidden) = [self.viewModel.executeSearch.executing not];

    [self.viewModel.executeSearch.executionSignals
            subscribeNext:^(id x) {
                [self.searchTextField resignFirstResponder];
            }];
}

# pragma mark - UITableViewDatasource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.listItems.totalResults;
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

- (MHiTunesSearchResults * )generateData {
    
    MHiTunesSearchResults * listItems = [MHiTunesSearchResults new];
    
    MHiTunesItem * item1 = [MHiTunesItem new];
    item1.artistName = @"Jack Johnson";
    item1.primaryGenreName = @"Concert Films";
    
    
    MHiTunesItem * item2 = [MHiTunesItem new];
    item2.artistName = @"Jack Johnson";
    item2.primaryGenreName = @"Music Documentaries";
    
    MHiTunesItem * item3 = [MHiTunesItem new];
    item3.artistName = @"Jack Johnson";
    item3.primaryGenreName = @"Action & Adventure";
    
    NSMutableArray * items = [[NSMutableArray alloc] initWithObjects:item1, item2, item3, nil];
    
    listItems.totalResults = 3;
    listItems.mhItems = items;
    
    return listItems;
}

@end
