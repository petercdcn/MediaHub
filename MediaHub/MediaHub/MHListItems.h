//
//  MHListItems.h
//  MediaHub
//
//  Created by Shifan Wu on 5/1/17.
//  Copyright © 2017 ShifanW. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MHListItem.h"

@interface MHListItems : NSObject

@property (nonatomic) NSInteger count;
@property (nonatomic, strong) NSArray<MHListItem *> * mhItems;

@end
