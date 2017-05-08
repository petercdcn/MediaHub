//
//  MHiTunesSearchResults.m
//  MediaHub
//
//  Created by Shifan Wu on 5/1/17.
//  Copyright © 2017 ShifanW. All rights reserved.
//

#import "MHiTunesSearchResults.h"

@implementation MHiTunesSearchResults

- (NSString *)description {
    return [NSString stringWithFormat:@"searchString=%@, totalresults=%lU, mhItems=%@",
                    self.searchString, self.totalResults, self.mhItems];
}

@end
