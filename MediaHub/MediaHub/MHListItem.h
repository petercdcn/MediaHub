//
//  MHListItem.h
//  MediaHub
//
//  Created by Wu, Shifan on 5/1/17.
//  Copyright © 2017 ShifanW. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MHListItem : NSObject

@property (nonatomic, strong) NSString * wrapperType;
@property (nonatomic, strong) NSString * kind;
@property (nonatomic, strong) NSDecimalNumber * artistId;
@property (nonatomic, strong) NSDecimalNumber * trackId;
@property (nonatomic, strong) NSString * artistName;
@property (nonatomic, strong) NSString * trackName;
@property (nonatomic, strong) NSString * trackCensoredName;
@property (nonatomic, strong) NSString * artistViewUrl;
@property (nonatomic, strong) NSString * trackViewUrl;
@property (nonatomic, strong) NSString * artworkImageUrl;
@property (nonatomic, strong) NSDecimalNumber * collectionPrice;
@property (nonatomic, strong) NSDecimalNumber * trackPrice;
@property (nonatomic, strong) NSDecimalNumber * trackTimeMillis;
@property (nonatomic, strong) NSDate * releaseDate;
@property (nonatomic, strong) NSString * trackExplicitness;
@property (nonatomic, strong) NSString * country;
@property (nonatomic, strong) NSString * currency;
@property (nonatomic, strong) NSString * primaryGenreName;
@property (nonatomic, strong) NSString * contentAdvisoryRating;
@property (nonatomic, strong) NSString * longDescription;

@end
