//
//  ViewController.m
//  gittest
//
//  Created by akuvox_mini on 2023/3/14.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // Edit from github web
    // Edit from github web 2
    NSLog(@"hello");
    NSLog(@"test");
    NSLog(@"world");
    
    [self test:5 Block:^{
        NSLog(@"hello11111");
    }];
    
    [self test:2 Block:^{
        NSLog(@"hello2");
    }];
    
    [self test:0 Block:^{
        NSLog(@"hello3");
    }];
    
    // Edit from xcode
}

int x = 1;
- (void)test:(int)x Block:(void (^)(void))success {
    NSLog(@"%p", &success);
    
//    NSLog(@"x = %d", x);
//    if (x < 2) {
//        x = 3;
//        [self testBlock:^{
//            NSLog(@"world");
//        }];
//    }
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(x * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        success();
    });
    
    
}


@end
