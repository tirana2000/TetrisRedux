//
//  OptionsScene.h
//  TetrisRedux
//
//  Created by Chris Simmons on 10/26/10.
//  iOS Group / CMSC 495 (Fall 2010) / UMUC
//

#import <UIKit/UIKit.h>
#import "cocos2d.h"

@interface OptionsScene : CCScene
{
}
+(id) scene;
@end

@interface OptionsMenu : CCLayer {
}
-(void)backgroundMusicToggle:(id)sender;
-(void)soundEffectsToggle:(id)sender;
@end


