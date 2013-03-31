//
//  GameScene.m
//  SpaceViking
//
//  Created by Fred Sharples on 3/30/13.
//  Copyright (c) 2013 Fred Sharples. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene

-( id) init {
    self = [super init];
    if (self != nil) {
    // Background Layer
    BackgroundLayer *backgroundLayer = [BackgroundLayer node];
    [self addChild:backgroundLayer z: 0];
    // Gameplay Layer
    GameplayLayer *gameplayLayer = [GameplayLayer node];
        [self addChild:gameplayLayer z:5];
    }
    return self; }
@end
