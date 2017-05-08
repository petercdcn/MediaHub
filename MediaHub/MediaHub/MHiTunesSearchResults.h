//
//  MHiTunesSearchResults.h
//  MediaHub
//
//  Created by Shifan Wu on 5/1/17.
//  Copyright © 2017 ShifanW. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MHiTunesItem.h"

@interface MHiTunesSearchResults : NSObject

@property (strong, nonatomic) NSString *searchString;
@property (nonatomic) NSInteger totalResults;
@property (nonatomic, strong) NSArray<MHiTunesItem *> * mhItems;

@end
