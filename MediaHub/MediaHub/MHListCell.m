//
//  TableViewCell.m
//  MediaHub
//
//  Created by Wu, Shifan on 4/29/17.
//  Copyright © 2017 ShifanW. All rights reserved.
//

#import "MHListCell.h"

@implementation MHListCell

- (void)configureCell:(MHListItem * )listItem {
    
    self.title.text = listItem.artistName;
    self.type.text = listItem.primaryGenreName;
}

@end
