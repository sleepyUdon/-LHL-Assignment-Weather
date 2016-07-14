//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "CityViewController.h"
#import "City.h"
#import "DetailedViewController.h"

@implementation LHWAppDelegate



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    self.window.rootViewController = tabBarController;
    self.window.backgroundColor = [UIColor colorWithRed:(102.0/255.0) green:(204.0/255.0) blue:(255.0/255.0) alpha:1.0];
    

    // create view controller for each city
    
    CityViewController *vancouverViewController = [[CityViewController alloc]init];
    CityViewController *torontoViewController = [[CityViewController alloc]init];
    CityViewController *brusselsViewController = [[CityViewController alloc]init];
    CityViewController *belgradeViewController = [[CityViewController alloc]init];
    CityViewController *amsterdamViewController = [[CityViewController alloc]init];


    
    // Vancouver
    
    City *vancouver = [[City alloc]initWithCityName:@"Vancouver" WeatherDescription:@"Rain" weathericon:[UIImage imageNamed:@"rain.png"] currentTime:@"1:00PM" currentTemperature:@"29°"  chanceOfPrecipitation:@"10%"];
    
    vancouverViewController.city = vancouver;

    vancouverViewController.title= vancouverViewController.city.CityName;
    

    
    
    // Toronto
//
    City *toronto = [[City alloc]initWithCityName:@"Toronto" WeatherDescription:@"Sunny" weathericon:[UIImage imageNamed:@"sunny.png"] currentTime:@"1:00PM" currentTemperature:@"29°"  chanceOfPrecipitation:@"10%"];
    
    torontoViewController.city = toronto;
    
    torontoViewController.title= torontoViewController.city.CityName;
    


    // Brussels
//
    City *brussels = [[City alloc]initWithCityName:@"Brussels" WeatherDescription:@"Cloudy" weathericon:[UIImage imageNamed:@"cloudy.png"] currentTime:@"7:00PM" currentTemperature:@"24°"  chanceOfPrecipitation:@"30%"];
    
    brusselsViewController.city = brussels;
    
    brusselsViewController.title= brusselsViewController.city.CityName;
    
    
    
    // Belgrade
    
    City *belgrade = [[City alloc]initWithCityName:@"Belgrade" WeatherDescription:@"Partly Cloudy" weathericon:[UIImage imageNamed:@"partly-cloudy.png"] currentTime:@"8:00PM" currentTemperature:@"19°"  chanceOfPrecipitation:@"10%"];
    
    belgradeViewController.city = belgrade;
    
    belgradeViewController.title= belgradeViewController.city.CityName;
    
    
    

    
    //  Amsterdam
    
    City *amsterdam = [[City alloc]initWithCityName:@"Amsterdam" WeatherDescription:@"Fog" weathericon:[UIImage imageNamed:@"fog.png"] currentTime:@"7:00PM" currentTemperature:@"15°"  chanceOfPrecipitation:@"40%"];
    
    amsterdamViewController.city = amsterdam;
    
    amsterdamViewController.title= amsterdamViewController.city.CityName;
    
    // make 5 instances of the NavigationController
    
    UINavigationController *torontoNavigationController = [[UINavigationController alloc] initWithRootViewController:torontoViewController];
    UINavigationController *vancouverNavigationController = [[UINavigationController alloc] initWithRootViewController:vancouverViewController];
    UINavigationController *brusselsNavigationController = [[UINavigationController alloc] initWithRootViewController:brusselsViewController];
    UINavigationController *belgradeNavigationController = [[UINavigationController alloc] initWithRootViewController:belgradeViewController];
    UINavigationController *amsterdamNavigationController = [[UINavigationController alloc] initWithRootViewController:amsterdamViewController];
    

    // create tab controllers
    
    
    
    tabBarController.viewControllers = @[torontoNavigationController, vancouverNavigationController, brusselsNavigationController, belgradeNavigationController, amsterdamNavigationController];
    
    [self.window makeKeyAndVisible];
    return YES;


}

    



@end
