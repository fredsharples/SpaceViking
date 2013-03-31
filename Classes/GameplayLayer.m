//
//  GameplayLayer.m
//  SpaceViking
//
//  Created by Fred Sharples on 3/30/13.
//  Copyright (c) 2013 Fred Sharples. All rights reserved.
//

#import "GameplayLayer.h"

@implementation GameplayLayer
-(id) init
{
	if( (self=[super init])) {
        
		// ask director for the window size
		CGSize screenSize = [[CCDirector sharedDirector] winSize];
        self.touchEnabled = YES;
		
		vikingSprite = [CCSprite spriteWithFile:@"sv_anim_1.png"];
        
        [vikingSprite setPosition: CGPointMake(screenSize.width/2, screenSize.height*0.17f)];
        
        [self addChild: vikingSprite];

        
		if( UI_USER_INTERFACE_IDIOM() != UIUserInterfaceIdiomPad ) {
			
            [vikingSprite setScaleX:screenSize.width/ 1024.0f];
            [vikingSprite setScaleY:screenSize.height/ 768.0f];
            
            }
    }
	
	return self;
}


@end
