//
//  ViewController.h
//  PanoramaGL
//
//  Created by apple on 14-3-19.
//  Copyright (c) 2014年 Taagoo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PLView.h"
@interface ViewController : UIViewController <PLViewDelegate>
{
    PLView *plView;
    NSTimer *timer;
}
@end
