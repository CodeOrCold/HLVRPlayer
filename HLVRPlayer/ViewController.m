//
//  ViewController.m
//  HLVRPlayer
//
//  Created by 杨海龙 on 2017/2/12.
//  Copyright © 2017年 杨海龙 趣高科技. All rights reserved.
//

#import "ViewController.h"
#import "KCYHLVRViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *buttonForURL = [UIButton buttonWithType:0];
    [buttonForURL setTitle:@"URL播放" forState:UIControlStateNormal];
    [buttonForURL addTarget:self action:@selector(playWithURL) forControlEvents:1];
    
    UIButton *buttonForLocation = [UIButton buttonWithType:0];
    [buttonForLocation setTitle:@"本地播放" forState:UIControlStateNormal];
    [buttonForLocation addTarget:self action:@selector(playWithLocalVedio) forControlEvents:1];
    
    NSArray *buttonsArray = [NSArray arrayWithObjects:buttonForURL, buttonForLocation, nil];
    [self returnButtonsUI:buttonsArray];
    
    [self.view addSubview:buttonForURL];
    [self.view addSubview:buttonForLocation];
    
    
}

//UI界面
-(NSArray*)returnButtonsUI:(NSArray*)sender {
    
    NSArray *endUIArray = [NSArray array];
    
    for (UIButton* button in sender) {
        button.layer.cornerRadius = 5;
        button.backgroundColor = [UIColor grayColor];
        NSInteger index = [sender indexOfObject:button];
        button.frame = CGRectMake(self.view.bounds.size.width*0.5-50, self.view.bounds.size.height *0.5-100+(index*150), 100, 50);
        
        [endUIArray arrayByAddingObject:button];
    }
    
    return endUIArray;
    
}

//URL播放 实例
-(void)playWithURL{
    
        /**注意 更改https设置*/
        NSString *defaultURLString = @"http://d8d913s460fub.cloudfront.net/krpanocloud/video/airpano/video-1920x960a.mp4";

        NSURL *url = [[NSURL alloc] initWithString:defaultURLString];
        KCYHLVRViewController *vedioController = [[KCYHLVRViewController alloc] init];
    
        [vedioController setURL:url];
    
        [self presentViewController:vedioController animated:YES completion:nil];

    
}

//本地播放 实例
-(void)playWithLocalVedio{
    
    /**视频文件太大自己找一个拖进去吧 格式 XXX.mp4 */
    NSString *path = [[NSBundle mainBundle] pathForResource:@"XXX" ofType:@"mp4"];
    NSURL *url = [[NSURL alloc] initFileURLWithPath:path];
    KCYHLVRViewController *vedioController = [[KCYHLVRViewController alloc] init];
    
    [vedioController setURL:url];
    
    [self presentViewController:vedioController animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
