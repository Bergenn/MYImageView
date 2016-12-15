//
//  ViewController.m
//  MYImageView
//
//  Created by design02 on 16/12/15.
//  Copyright © 2016年 com.youmuzhe.bestsch123456. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic) NSTimer *myAnimatedTimer;
@property (nonatomic, strong) UIImageView *myAnimatedView;
@property (nonatomic) NSInteger next;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupImageView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)setupImageView {
    
/*
    //方法一
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i<5; i++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"img%d",i]];
        [array addObject:image];
    }
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.view.frame];
    imageView.backgroundColor = [UIColor cyanColor];
    
    imageView.contentMode = UIViewContentModeScaleToFill;
    
    imageView.animationImages = array;
    
    //一圈下来总共需要多久
    imageView.animationDuration = 5;
    // = 0 表示无线循环
    imageView.animationRepeatCount = 0;
    
    [self.view addSubview:imageView];
    //开始执行循环
    [imageView startAnimating];
    //结束执行循环
    //    [imageView stopAnimating];
*/
    
    //方法一
    self.myAnimatedView = [[UIImageView alloc] initWithFrame:self.view.frame];
    self.myAnimatedView.backgroundColor = [UIColor cyanColor];
    self.myAnimatedView.image = [UIImage imageNamed:@"img0.png"];
    [self.view addSubview:self.myAnimatedView];
    
    self.myAnimatedView.contentMode = UIViewContentModeScaleToFill;
    self.myAnimatedTimer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(setNextImage) userInfo:nil repeats:YES];
    self.next = 0;
//[myTimer setFireDate:[NSDate distantPast]];  

}

-(void)setNextImage {
    
    self.next += 1;
    if (self.next == 4) {
        self.next = 0;
    }
    self.myAnimatedView.image = [UIImage imageNamed:[NSString stringWithFormat:@"img%ld.png",(long)self.next]];
//    [myAnimatedTimer setFireDate:[NSDate distantPast]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
