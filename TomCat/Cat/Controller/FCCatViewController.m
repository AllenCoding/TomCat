//
//  FCCatViewController.m
//  FastCounter
//
//  Created by LiuYong on 2018/4/15.
//  Copyright © 2018年 LiuYong. All rights reserved.
//

#import "FCCatViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface FCCatViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *catView;
@property(nonatomic,strong)AVAudioPlayer*player;

@end

@implementation FCCatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden=YES;
}
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden=NO;

}
- (IBAction)back:(UIButton *)sender {
    
}

- (IBAction)animateCatPlay:(UIButton *)sender {
    if (sender.tag==100) {
        [self animationWithImageCount:81 Action:@"drink"];
    }else if (sender.tag==101){
        [self animationWithImageCount:13 Action:@"cymbal"];
    }else if (sender.tag==102){
        [self animationWithImageCount:40 Action:@"eat"];
    }else if (sender.tag==103){
        [self animationWithImageCount:28 Action:@"fart"];
    }else if (sender.tag==104){
        [self animationWithImageCount:24 Action:@"pie"];
    }else if (sender.tag==105){
        [self animationWithImageCount:56 Action:@"scratch"];
    }else if (sender.tag==106){
        [self animationWithImageCount:25 Action:@"angry"];
    }else if (sender.tag==107){
        [self animationWithImageCount:80 Action:@"knockout"];
    }else if (sender.tag==108){
        [self animationWithImageCount:33 Action:@"stomach"];
    }else if (sender.tag==109){
        [self animationWithImageCount:29 Action:@"footRight"];
    }else{
        [self animationWithImageCount:29 Action:@"footLeft"];
    }
}

-(void)animationWithImageCount:(NSInteger)imageCount Action:(NSString*)action{
    if (self.catView.isAnimating) {
        return;
    }
    NSMutableArray *arr=[[NSMutableArray alloc] init];
    for (int i=0; i<imageCount; i++) {
        
        NSString *name=[NSString stringWithFormat:@"%@_%02d.jpg",action,i];
        UIImage *image=[UIImage imageNamed:name];
        [arr addObject:image];
    }

    self.catView.animationImages=arr;
    self.catView.animationRepeatCount=1;
    self.catView.animationDuration=arr.count*0.05;
    [self.catView startAnimating];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
