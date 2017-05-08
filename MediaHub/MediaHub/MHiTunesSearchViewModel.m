//
//  MHiTunesSearchViewModel.m
//  MediaHub
//
//  Created by Wu, Shifan on 5/5/17.
//  Copyright © 2017 ShifanW. All rights reserved.
//

#import "MHiTunesSearchViewModel.h"

@interface MHiTunesSearchViewModel ()

@property (nonatomic, weak) id<MHViewModelServices> services;

@end

@implementation MHiTunesSearchViewModel


- (instancetype) initWithService:(id<MHViewModelServices>)services {
    self = [super init];
    
    if (self) {
        _services = services;
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

    self.executeSearch = [[RACCommand alloc] initWithEnabled:validSearchSignal signalBlock:^RACSignal *(id input) {
        return [self executeSearchSignal];
    }];
}

- (RACSignal *)executeSearchSignal {
    return [[self.services getiTunesSearchService] iTunesSearchSignal:self.searchText];
}

@end
