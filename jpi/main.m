//
//  main.m
//  jpi
//
//  Created by lenben on 6/7/13.
//  Copyright (c) 2013 ganjp. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "JpAppDelegate.h"

int main(int argc, char *argv[])
{
    //ARC provides automatic object-lifetime management for the app.
    @autoreleasepool {
        //creates an instance of the UIApplication class, an instance of the app delegate and scans the app's Info.plist file. 
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([JpAppDelegate class]));
    }
}
