//
//  ViewController.m
//  JohnsonCarmen_AOC2_Week_1
//
//  Created by Carmen Johnson on 2/7/13.
//  Copyright (c) 2013 Carmen Johnson. All rights reserved.
//

#import "ViewController.h"
#import "BaseClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //
    // ----- Week 1/Project 1 -----
    
    //
    //backgroung color
    self.view.backgroundColor = [UIColor darkGrayColor];
    
    //
    // Title
    title_Label = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 30.0f)];
    if (title_Label != nil)
    {
        title_Label.text = @"WeightRoom Information";
        title_Label.textColor = [UIColor whiteColor];
        title_Label.textAlignment = NSTextAlignmentCenter;
        title_Label.backgroundColor = [UIColor blackColor];
    }
    
    //
    // Ectomorph
    Ectomorph *ectomorphInfo = (Ectomorph*)[WeightRoomFactory createPlayerClass:ECTOMORPH];
    
    if (ectomorphInfo != nil)
    {
        [ectomorphInfo calculateAdvantage];
        [ectomorphInfo MuscleSize:40];
        
        ectomorph_Label = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 40.0f, 320.0f, 65.0f)];
        
        if (ectomorph_Label != nil)
        {
            //
            // NSString - Information about Ectomorph
            ectomorph_Label.text = [NSString stringWithFormat:@"%@ have a hard time gaining weight and muscle. %i pounds of muscle and %i healthy pounds of muscle are good gains, but %i, might be to much.", ectomorphInfo.playerClass, ectomorphInfo._pounds, ectomorphInfo._healthy, ectomorphInfo.MuscleSize];
            //
            // Label customization
            ectomorph_Label.numberOfLines = 3;
            ectomorph_Label.textColor = [UIColor brownColor];
            ectomorph_Label.textAlignment = NSTextAlignmentCenter;
            ectomorph_Label.backgroundColor = [UIColor blackColor];
        }
        else
        {
            //
            // Error message
            ectomorph_Label.text = [NSString stringWithFormat:@"No Information Found."];
            ectomorph_Label.textColor = [UIColor redColor];
            ectomorph_Label.textAlignment = NSTextAlignmentCenter;
            ectomorph_Label.backgroundColor = [UIColor blackColor];
        }
    }
    
    //
    // Body Builders
    BodyBuilders *bodyBuildersInfo = (BodyBuilders*)[WeightRoomFactory createPlayerClass:BODYBUILDERS];
    
    if (bodyBuildersInfo != nil)
    {
        [bodyBuildersInfo calculateAdvantage];
        [bodyBuildersInfo setResources:20]; // Sets resources
        
        bodyBuilders_Label = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 115.0f, 320.0f, 65.0f)];
        
        if (bodyBuilders_Label != nil)
        {
            //
            // NSString - Information about Body Builders
            bodyBuilders_Label.text = [NSString stringWithFormat:@"Mesomorph body types can gain %@ pounds of muscle but can also quickly gain %i fat pounds too.", bodyBuildersInfo.playerClass, bodyBuildersInfo.resources];
            //
            // Label customization
            bodyBuilders_Label.numberOfLines = 3;
            bodyBuilders_Label.textColor = [UIColor blueColor];
            bodyBuilders_Label.textAlignment = NSTextAlignmentCenter;
            bodyBuilders_Label.backgroundColor = [UIColor whiteColor];
        }
        else
        {
            //
            // Error message
            bodyBuilders_Label.text = [NSString stringWithFormat:@"No Information Found."];
            bodyBuilders_Label.textColor = [UIColor redColor];
            bodyBuilders_Label.textAlignment = NSTextAlignmentCenter;
            bodyBuilders_Label.backgroundColor = [UIColor blackColor];
        }
        
        //
        // Muscles of Body Builders
        bodyBuilders_Muscle = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 190.0f, 320.0f, 45.0f)];
        
        if (bodyBuilders_Muscle != nil)
        {
            //
            // NSString Muscles information
            bodyBuilders_Muscle.text = [NSString stringWithFormat:@"%i pounds overall and %i inches per arm can make a big difference in appearance.", bodyBuildersInfo._pounds, bodyBuildersInfo._inches];
            //
            // customization of label
            bodyBuilders_Muscle.numberOfLines = 2;
            bodyBuilders_Muscle.textColor = [UIColor blueColor];
            bodyBuilders_Muscle.textAlignment = NSTextAlignmentCenter;
            bodyBuilders_Muscle.backgroundColor = [UIColor whiteColor];
        }
        else
        {
            //
            // Error message
            bodyBuilders_Muscle.text = [NSString stringWithFormat:@"No Information Found."];
            bodyBuilders_Muscle.textColor = [UIColor redColor];
            bodyBuilders_Muscle.textAlignment = NSTextAlignmentCenter;
            bodyBuilders_Muscle.backgroundColor = [UIColor blackColor];
        }
    }
    
    //
    // The Gym
    Gym *gymInfo = (Gym*)[WeightRoomFactory createPlayerClass:GYM];
    
    if (gymInfo != nil)
    {
        [gymInfo calculateAdvantage];
        [gymInfo setNumberOfPeople:20];
        
        gym_Label = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 245.0f, 320.0f, 65.0f)];
        
        if (gym_Label != nil)
        {
            //
            // NSString - Information about the Gym
            gym_Label.text = [NSString stringWithFormat:@"A %@ filled with %i muscle bound body builders can be overwhelming for a skinny person.", gymInfo.playerClass, gymInfo.numberOfPeople];
            //
            // Label customization
            gym_Label.numberOfLines = 3;
            gym_Label.textColor = [UIColor yellowColor];
            gym_Label.textAlignment = NSTextAlignmentCenter;
            gym_Label.backgroundColor = [UIColor blackColor];
        }
        else
        {
            //
            // Error message
            gym_Label.text = [NSString stringWithFormat:@"No Information Found."];
            gym_Label.textColor = [UIColor redColor];
            gym_Label.textAlignment = NSTextAlignmentCenter;
            gym_Label.backgroundColor = [UIColor blackColor];
        }
    }
    
    //
    // ----- Subviews -----
    [self.view addSubview:title_Label];
    [self.view addSubview:ectomorph_Label];
    [self.view addSubview:bodyBuilders_Label];
    [self.view addSubview:bodyBuilders_Muscle];
    [self.view addSubview:gym_Label];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end

