//
//  MHiTunesSearchViewModel.m
//  MediaHub
//
//  Created by Wu, Shifan on 5/5/17.
//  Copyright © 2017 ShifanW. All rights reserved.
//

#import "MHiTunesSearchViewModel.h"

#import <ReactiveCocoa/ReactiveCocoa.h>


@implementation MHiTunesSearchViewModel


- (instancetype) init {
    self = [super init];
    
    if (self) {
        [self initialize];
    }
    
    return self;
}

- (void) initialize {
    self.searchText = @"Search Text";
    self.title = @"Media Hub";

    RACSignal *validSearchSignal = [[RACObserve(self, searchText)
            map:^id(NSString *text) {
                return @(text.length > 3);
            }]
            distinctUntilChanged];

    [validSearchSignal subscribeNext:^(id x) {
        NSLog(@"Search text is more than 3 chars.  DoSearch: %@", x);
    }];

    //TODO: delete this executeSearch command
    self.executeSearch = [[RACCommand alloc] initWithEnabled:validSearchSignal signalBlock:^RACSignal *(id input) {
        return [self executeSearchSignal];
    }];
}

- (RACSignal *)executeSearchSignal {
    return [[[[RACSignal empty]
            logAll]
            delay:2.0]
            logAll];

}

@end
