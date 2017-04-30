//
//  TableViewCell.h
//  MediaHub
//
//  Created by Wu, Shifan on 4/29/17.
//  Copyright © 2017 ShifanW. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MHListItem.h"

@interface MHListCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *preImage;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *type;
@property (weak, nonatomic) IBOutlet UILabel *year;

- (void)configureCell:(MHListItem * )listItem;

@end
