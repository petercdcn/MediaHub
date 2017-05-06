//
//  MHiTunesSearchViewModel.h
//  MediaHub
//
//  Created by Wu, Shifan on 5/5/17.
//  Copyright © 2017 ShifanW. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface MHiTunesSearchViewModel : NSObject

@property (strong, nonatomic) NSString *searchText;
@property (strong, nonatomic) NSString *title;

@property (strong, nonatomic) RACCommand *executeSearch;

@end
