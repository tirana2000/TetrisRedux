//
//  TetrisReduxAppDelegate.h
//  TetrisRedux
//
//  Created by Chris on 10/26/10.
//  iOS Group / CMSC 495 (Fall 2010) / UMUC
//

#import <UIKit/UIKit.h>
#import "cocos2d.h"
#import "MainMenuScene.h"


@interface TetrisReduxAppDelegate : NSObject <UIApplicationDelegate> {
	UIWindow *window;
}

@property (nonatomic, retain) UIWindow *window;

@end
