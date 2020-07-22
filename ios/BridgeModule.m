//
//  BridgeModule.m
//  bridgeexample
//
//  Created by Ori Hyams on 21/07/2020.
//

#import <Foundation/Foundation.h>
#import "React/RCTViewManager.h"
#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(BridgeModule, RCTViewManager)
RCT_EXTERN_METHOD(onOpenScreenButtonPressed:(nonnull NSNumber *)node)
@end
