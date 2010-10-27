//
//  MainMenuScene.m
//  TetrisRedux
//
//  Created by Chris on 10/26/10.
//  iOS Group / CMSC 495 (Fall 2010) / UMUC
//

#import "MainMenuScene.h"
#import "OptionsScene.h"


@implementation MainMenuScene

+(id) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	MainMenu *layer = [MainMenu node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

- (id) init {
    self = [super init];
    if (self != nil) {
        CCSprite *background = [CCSprite spriteWithFile:@"menu.png"];
        [background setPosition:ccp(240,160)];
        [self addChild:background z:0];
        [self addChild:[MainMenu node] z:1];
    }
    return self;
}
@end

@implementation MainMenu

- (id) init {
    self = [super init];
    if (self != nil) {
        // Set the font attributes for the Main Menu
        [CCMenuItemFont setFontSize:20];
        [CCMenuItemFont setFontName:@"Helvetica"];
        // Create menu items
        CCMenuItem *play = [CCMenuItemFont itemFromString:@"Play Game" target:self selector:@selector(playGame:)];
        CCMenuItem *options = [CCMenuItemFont itemFromString:@"View Options" target:self selector:@selector(viewOptions:)];
        CCMenuItem *scores = [CCMenuItemFont itemFromString:@"View Scores" target:self selector:@selector(viewScores:)];
        CCMenuItem *tutorial = [CCMenuItemFont itemFromString:@"View Tutorial" target:self selector:@selector(viewTutorial:)];
        // Add menu items to menu object and display
        CCMenu *menu = [CCMenu menuWithItems:play, options, scores, tutorial, nil];
        [menu alignItemsVertically];
        [self addChild:menu];
    }
    return self;
}

-(void)playGame:(id)sender {
    NSLog(@"Play Game chosen from Main Menu.");
}

-(void)viewOptions:(id)sender {
    NSLog(@"View Options chosen from Main Menu.");
    OptionsScene * os = [OptionsScene node];
    [[CCDirector sharedDirector] replaceScene:os];
}

-(void)viewScores:(id)sender {
    NSLog(@"View Scores chosen from Main Menu.");
}

-(void)viewTutorial:(id)sender {
    NSLog(@"View Tutorial chosen from Main Menu.");
}

@end

