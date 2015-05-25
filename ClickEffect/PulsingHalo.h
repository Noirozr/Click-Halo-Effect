//
//  PulsingHalo.h
//  ClickEffect
//
//  Created by Yongjia Liu on 13-12-18.
//  Copyright (c) 2013年 Yongjia Liu. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface PulsingHalo : CALayer
@property(nonatomic,assign)CGFloat radius;
@property(nonatomic,assign)NSTimeInterval animationDUration;
@property(nonatomic,assign)NSTimeInterval pulseInterval;
@end
