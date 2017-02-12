//
//  KCYHLVRViewController.h
//  趣高VR
//
//  Created by 杨海龙 on 16/8/31.
//  Copyright © 2016年 kicom. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface KCYHLVRViewController : UIViewController

@property (strong, nonatomic) NSURL *videoURL;

- (CVPixelBufferRef)retrievePixelBufferToDraw;
- (void)toggleControls;
- (void)setURL:(NSURL *)url;

@end
