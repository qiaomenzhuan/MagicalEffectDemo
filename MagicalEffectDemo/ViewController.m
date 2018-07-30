//
//  ViewController.m
//  MagicalEffectDemo
//
//  Created by 杨磊 on 2018/7/30.
//  Copyright © 2018年 csda_Chinadance. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Genie.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *QbsPicView;
@property (nonatomic) BOOL viewIsIn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)botttom:(UIButton *)sender {
    
    CGFloat x = sender.frame.origin.x + sender.frame.size.width/2.f;
    CGFloat y = sender.frame.origin.y;
    CGFloat w = 5;
    CGFloat h = 5;
    CGRect endRect = CGRectMake(x, y, w, h);
    
    [self genieToRect:endRect edge:BCRectEdgeBottom];
}
- (IBAction)top:(UIButton *)sender {
    
    CGFloat w = 5;
    CGFloat h = 5;
    CGFloat x = sender.frame.origin.x + sender.frame.size.width/2.f;
    CGFloat y = sender.frame.origin.y + sender.frame.size.height - h;
    CGRect endRect = CGRectMake(x, y, w, h);
    
    [self genieToRect:endRect edge:BCRectEdgeTop];
}
- (IBAction)right:(UIButton *)sender {
    
    CGFloat x = sender.frame.origin.x;
    CGFloat y = sender.frame.origin.y + sender.frame.size.height/2.f;
    CGFloat w = 5;
    CGFloat h = 5;
    CGRect endRect = CGRectMake(x, y, w, h);
    
    [self genieToRect:endRect edge:BCRectEdgeRight];
}
- (IBAction)left:(UIButton *)sender {
    
    CGFloat w = 5;
    CGFloat h = 5;
    CGFloat x = sender.frame.origin.x + sender.frame.size.width - w;
    CGFloat y = sender.frame.origin.y + sender.frame.size.height/2.f;
    CGRect endRect = CGRectMake(x, y, w, h);
    
    [self genieToRect:endRect edge:BCRectEdgeLeft];
}

- (void) genieToRect:(CGRect)rect edge:(BCRectEdge)edge
{
    NSTimeInterval duration = 1.f;

    if (self.viewIsIn) {
        [self.QbsPicView genieOutTransitionWithDuration:duration startRect:rect startEdge:edge completion:^{
        }];
    } else {
        [self.QbsPicView genieInTransitionWithDuration:duration destinationRect:rect destinationEdge:edge completion:
         ^{
         }];
    }
    
    self.viewIsIn = ! self.viewIsIn;
}
@end
