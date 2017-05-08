//
// Created by Wu, Shifan on 5/5/17.
// Copyright (c) 2017 ShifanW. All rights reserved.
//

#import "MHiTunesSearchImp.h"
#import "MHiTunesSearchResults.h"
#import "MHiTunesItem.h"
#import <LinqToObjectiveC/NSArray+LinqExtensions.h>

@interface MHiTunesSearchImp ()

@end

@implementation MHiTunesSearchImp

- (RACSignal *)iTunesSearchSignal:(NSString *)searchString {
    return [[[[RACSignal empty]
            logAll]
            delay:2.0]
            logAll];
}

@end
