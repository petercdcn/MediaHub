//
// Created by Wu, Shifan on 5/5/17.
// Copyright (c) 2017 ShifanW. All rights reserved.
//

#import "MHiTunesSearchImp.h"


@implementation MHiTunesSearchImp

- (RACSignal *)flickerSearchSignal:(NSString *)searchString {
    return [[[[RACSignal empty]
            logAll]
            delay:2.0]
            logAll];
}

@end