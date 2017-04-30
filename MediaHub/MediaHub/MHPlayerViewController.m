//
//  MHPlayerViewController.m
//  MediaHub
//
//  Created by Kai Song on 4/29/17.
//  Copyright © 2017 ShifanW. All rights reserved.
//

#import "MHPlayerViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>

@interface MHPlayerViewController ()

@end

@implementation MHPlayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    NSURL *videoURL = [NSURL URLWithString:@"http://video.itunes.apple.com/apple-assets-us-std-000001/Video7/v4/e3/6d/f8/e36df87a-58c6-842c-ff02-d818b855b609/mzvf_4941986958876527359.640x478.h264lc.D2.p.m4v"];
    AVPlayer *player = [AVPlayer playerWithURL:videoURL];
    AVPlayerViewController * controller = [AVPlayerViewController new];
    controller.player = player;
    controller.view.frame = self.view.bounds;
    [self.view addSubview:controller.view];
    [self addChildViewController:controller];
    [player play];
}

@end
