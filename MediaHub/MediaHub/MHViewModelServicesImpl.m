//
// Created by Shifan Wu on 5/7/17.
// Copyright (c) 2017 ShifanW. All rights reserved.
//

#import "MHViewModelServicesImpl.h"
#import "MHiTunesSearchImp.h"

@interface MHViewModelServicesImpl ()

@property (strong, nonatomic) MHiTunesSearchImp *searchService;

@end

@implementation MHViewModelServicesImpl

-(instancetype) init {
    if (self = [super init]) {
        _searchService = [MHiTunesSearchImp new];
    }

    return self;
}

- (id<MHiTunesSearch>)getiTunesSearchService {
    return self.searchService;
}

@end