# HLVRPlayer
1.U can use it to play the VR-vedio or normal vedio.
可用于播放VR视频和普通视频
2.If your url likes "http://", U should change the safe setting.
url链接需要修改X-Code的https://设置
3.U should drop a vedio into the project to test the local way.
本地文件播放需要自己拖拽一个视频进去测试
4.HLVRPlayer uses Masonry to layout.
布局采用Masory，项目中不需要重复导包

example:

1.url
	NSString *defaultURLString = @"http://HLVedio.cloudfront.net/krpanocloud/video/airpano/video-1920x960a.mp4";

<!——you also can-—>

	NSString *path = [[NSBundle mainBundle] pathForResource:@"XXX" ofType:@"mp4"];
    NSURL *url = [[NSURL alloc] initFileURLWithPath:path];

2.init
	KCYHLVRViewController *vedioController = [[KCYHLVRViewController alloc] init];

3.setURL
	[vedioController setURL:url];


4.push
	[self presentViewController:vedioController animated:YES completion:nil];


