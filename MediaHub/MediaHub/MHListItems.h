//
//  MHListItems.h
//  MediaHub
//
//  Created by Kai Song on 4/29/17.
//  Copyright © 2017 ShifanW. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MHListItem.h"

@interface MHListItems : NSObject

@property (nonatomic) NSInteger count;
@property (nonatomic, strong) NSArray<MHListItem *> * mhItems;

@end
