//
// Created by Wu, Shifan on 5/5/17.
// Copyright (c) 2017 ShifanW. All rights reserved.
//

#import <ReactiveCocoa/ReactiveCocoa.h>
@import Foundation;

@protocol MHiTunesSearch <NSObject>

- (RACSignal *)iTunesSearchSignal:(NSString *)searchString;

@end