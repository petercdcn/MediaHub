//
//  TableViewCell.m
//  MediaHub
//
//  Created by Wu, Shifan on 5/1/17.
//  Copyright © 2017 ShifanW. All rights reserved.
//

#import "MHListCell.h"

@implementation MHListCell

- (void)configureCell:(MHiTunesItem * )listItem {
    
    self.title.text = listItem.artistName;
    self.type.text = listItem.primaryGenreName;
}

@end
