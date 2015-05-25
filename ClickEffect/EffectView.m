//
//  EffectView.m
//  ClickEffect
//
//  Created by Yongjia Liu on 13-12-13.
//  Copyright (c) 2013年 Yongjia Liu. All rights reserved.
//

#import "EffectView.h"
#import <QuartzCore/QuartzCore.h>
@implementation EffectView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    CGPoint touchPoint=[[touches anyObject]locationInView:self];
    CALayer *waveLayer=[CALayer layer];
    waveLayer.frame=CGRectMake(touchPoint.x-1, touchPoint.y-1, 10, 10);
    waveLayer.borderColor=[UIColor grayColor].CGColor;
    waveLayer.borderWidth=0.5;
    waveLayer.cornerRadius=5.0;
    
    [self.layer addSublayer:waveLayer];
    [self scaleBegin:waveLayer];
}
-(void)scaleBegin:(CALayer *)aLayer
{
    const float maxScale=20.0;
    if (aLayer.transform.m11<maxScale) {
        if (aLayer.transform.m11==1) {
            [aLayer setTransform:CATransform3DMakeScale(1.1, 1.1, 1.0)];
        }else{
            [aLayer setTransform:CATransform3DScale(aLayer.transform, 1.1, 1.1, 1.0)];
        }
        [self performSelector:_cmd withObject:aLayer afterDelay:0.01];
    }else [aLayer removeFromSuperlayer];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
