//
//  OptionsScene.m
//  TetrisRedux
//
//  Created by Chris on 10/26/10.
//  Copyright 2010 Chris Simmons. All rights reserved.
//

#import "OptionsScene.h"


@implementation OptionsScene
+(id) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	OptionsMenu *layer = [OptionsMenu node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

- (id) init {
    self = [super init];
    if (self != nil) {
        //CCSprite *background = [CCSprite spriteWithFile:@"menu.png"];
        // [background setPosition:ccp(240,160)];
        // [self addChild:background z:0];
        [self addChild:[OptionsMenu node] z:1];
    }
    return self;
}
@end

@implementation OptionsMenu

- (id) init {
    self = [super init];
    if (self != nil) {
        // Set the font attributes for the Options Menu
        [CCMenuItemFont setFontSize:20];
        [CCMenuItemFont setFontName:@"Helvetica"];
        // Create menu items
        CCMenuItem *backgroundMusic = [CCMenuItemFont itemFromString:@"Background Music" target:self selector:@selector(backgroundMusicToggle:)];
        CCMenuItem *soundEffects = [CCMenuItemFont itemFromString:@"Sound Effects" target:self selector:@selector(soundEffectsToggle:)];
        // Add menu items to menu object and display
        CCMenu *menu = [CCMenu menuWithItems:backgroundMusic, soundEffects, nil];
        [menu alignItemsVertically];
        [self addChild:menu];
    }
    return self;
}

-(void)backgroundMusicToggle:(id)sender {
    NSLog(@"Background Music Toggle chosen from Options Menu.");
}

-(void)soundEffectsToggle:(id)sender {
    NSLog(@"Sound Effects Toggle chosen from Options Menu.");
}

@end

