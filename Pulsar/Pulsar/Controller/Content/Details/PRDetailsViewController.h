//
//  PRDetailsViewController.h
//  Pulsar
//
//  Created by fantom on 25.01.16.
//  Copyright © 2016 TAB. All rights reserved.
//

#import "PRRootViewController.h"
#import "PRDetailsViewInteractorProtocol.h"

@interface PRDetailsViewController : PRRootViewController

@property (strong, nonatomic) id<PRDetailsViewInteractorProtocol> interactor;

@end
