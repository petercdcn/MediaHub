//
//  ViewController.h
//  MediaHub
//
//  Created by Wu, Shifan on 5/1/17.
//  Copyright © 2017 ShifanW. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MHiTunesSearchViewModel.h"

@interface MHiTunesSearchViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

- (instancetype)initWithViewModel:(MHiTunesSearchViewModel *)viewModel;

@end

