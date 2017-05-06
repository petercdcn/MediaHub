//
// Created by Wu, Shifan on 5/5/17.
// Copyright (c) 2017 ShifanW. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface UISearchBar (RAC)

- (RACSignal *)rac_textSignal;

@end