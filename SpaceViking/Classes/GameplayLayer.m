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

-(void)initJoystickAndButtons {
    CGSize screenSize = [CCDirector sharedDirector].winSize;
    CGRect joystickBaseDimensions = CGRectMake(0,0, 128.0f, 128.0f);
    CGRect jumpButtonDimensions = CGRectMake(0,0, 64.0f, 64.0f);
     CGRect attackButtonDimensions = CGRectMake(0,0, 64.0f, 64.0f);
    CGPoint joystickBasePosition;
    CGPoint jumpButtonPosition;
    CGPoint attackButtonPosition;
    if( UI_USER_INTERFACE_IDIOM() != UIUserInterfaceIdiomPad ) {
        joystickBasePosition = ccp(screenSize.width*0.0625f, screenSize.height*0.052f);
         jumpButtonPosition = ccp(screenSize.width*0.0946f, screenSize.height*0.052f);
        attackButtonPosition = ccp(screenSize.width*0.0947f, screenSize.height*0.169f);
    }else{
        //This device is an iPhone or iPod Touch
        joystickBasePosition = ccp(screenSize.width*0.07f, screenSize.height*0.11f);
        jumpButtonPosition = ccp(screenSize.width*0.093f, screenSize.height*0.11f);
        attackButtonPosition = ccp(screenSize.width*0.093f, screenSize.height*0.35f);
    }
    //Init the Joystick
    SneakyJoystickSkinnedBase *joyStickBase = [[[SneakyJoystickSkinnedBase alloc]init]autorelease];
    joyStickBase.position = joystickBasePosition;
    joyStickBase.backgroundSprite = [CCSprite spriteWithFile:(@"dpadDown.png")];
    joyStickBase.thumbSprite = [CCSprite spriteWithFile:(@"joystickDown.png")];
    joyStickBase.joystick = [[SneakyJoystick alloc]initWithRect:(joystickBaseDimensions)];
    leftJoystick = [joyStickBase.joystick retain];
    [self addChild:joyStickBase];
    
    //Init the Jump Button
    SneakyButtonSkinnedBase *jumpButtonBase = [[[SneakyButtonSkinnedBase alloc]init]autorelease];
    jumpButtonBase.position = jumpButtonPosition;
    jumpButtonBase.defaultSprite = [CCSprite spriteWithFile:(@"jumpUp.png")];
    jumpButtonBase.activatedSprite = [CCSprite spriteWithFile:(@"jumpDown.png")];
    jumpButtonBase.pressSprite = [CCSprite spriteWithFile:(@"jumpDown.png")];
    jumpButtonBase.button = [[SneakyButton alloc]initWithRect:(jumpButtonDimensions)];
    jumpButton = [jumpButtonBase.button retain];
    jumpButton.isToggleable = NO;
    [self addChild:jumpButtonBase];
    
    //Init the Attack Button
    SneakyButtonSkinnedBase *attackButtonBase = [[[SneakyButtonSkinnedBase alloc]init]autorelease];
    attackButtonBase.position = attackButtonPosition;
    attackButtonBase.defaultSprite = [CCSprite spriteWithFile:(@"handUp.png")];
    attackButtonBase.activatedSprite = [CCSprite spriteWithFile:(@"handDown.png")];
    attackButtonBase.pressSprite = [CCSprite spriteWithFile:(@"handDown.png")];
    attackButtonBase.button = [[SneakyButton alloc]initWithRect:(attackButtonDimensions)];
    jumpButton = [attackButtonBase.button retain];
    jumpButton.isToggleable = NO;
    [self addChild:attackButtonBase];
  
    
}


@end
