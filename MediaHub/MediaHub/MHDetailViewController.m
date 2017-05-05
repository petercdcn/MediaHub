//
//  MHDetailViewController.m
//  MediaHub
//
//  Created by Shifan Wu on 5/1/17.
//  Copyright © 2017 ShifanW. All rights reserved.
//

#import "MHDetailViewController.h"

@interface MHDetailViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *shortDesc;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segControl;
@property (weak, nonatomic) IBOutlet UITextView *longDesc;
@property (weak, nonatomic) IBOutlet UITableView *informationTableView;
@property (weak, nonatomic) IBOutlet UIView *playerView;

@end

@implementation MHDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.informationTableView.dataSource = self;
    self.informationTableView.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)segValueDidChange:(UISegmentedControl *)segment {
    
    switch (segment.selectedSegmentIndex) {
        case 0:
            self.informationTableView.hidden = false;
            self.longDesc.hidden = true;
            self.playerView.hidden = true;
            break;
        case 1:
            self.informationTableView.hidden = true;
            self.playerView.hidden = true;
            self.longDesc.hidden = false;
            break;
        case 2:
            self.informationTableView.hidden = true;
            self.longDesc.hidden = true;
            self.playerView.hidden = false;
            break;
        default:
            break;
    }
}

# pragma mark - UITableViewDatasource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return [UITableViewCell new];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
