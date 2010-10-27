//
//  main.m
//  TetrisRedux
//
//  Created by Chris on 10/26/10.
//  Copyright Chris Simmons 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

int main(int argc, char *argv[]) {
	NSAutoreleasePool *pool = [NSAutoreleasePool new];
	int retVal = UIApplicationMain(argc, argv, nil, @"TetrisReduxAppDelegate");
	[pool release];
	return retVal;
}
