//
//  ViewController.m
//  PanoramaGL
//
//  Created by apple on 14-3-19.
//  Copyright (c) 2014年 Taagoo. All rights reserved.
//

#define kIdMax 1000
#define kIdMin 1

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    plView = [[PLView alloc]initWithFrame:CGRectMake(0, 0, 320, 568)];
    plView.delegate = self;
    
    NSObject<PLIPanorama> *panorama = nil;
    panorama = [PLSpherical2Panorama panorama];
    [(PLSpherical2Panorama *)panorama setImage:[PLImage imageWithPath:[[NSBundle mainBundle] pathForResource:@"pano_sphere2" ofType:@"jpg"]]];
    
    PLTexture *hotspotTexture = [PLTexture textureWithImage:[PLImage imageWithPath:[[NSBundle mainBundle] pathForResource:@"hotspot" ofType:@"png"]]];
    PLHotspot *hotspot = [PLHotspot hotspotWithId:(kIdMin + random() % ((kIdMax + 1) - kIdMin)) texture:hotspotTexture atv:0.0f ath:0.0f width:0.08f height:0.08f];
    [panorama addHotspot:hotspot];
    [plView setPanorama:panorama];
    [self.view addSubview:plView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
