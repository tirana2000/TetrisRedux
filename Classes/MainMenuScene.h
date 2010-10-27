//
//  MainMenuScene.h
//  TetrisRedux
//
//  Created by Chris Simmons on 10/26/10.
//  iOS Group / CMSC 495 (Fall 2010) / UMUC
//

#import <UIKit/UIKit.h>
#import "cocos2d.h"
#import "OptionsScene.h"

@interface MainMenuScene : CCScene
{
}
+(id) scene;
@end

@interface MainMenu : CCLayer {
}
-(void)playGame:(id)sender;
-(void)viewOptions:(id)sender;
-(void)viewScores:(id)sender;
-(void)viewTutorial:(id)sender;
@end

