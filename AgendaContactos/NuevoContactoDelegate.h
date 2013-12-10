//
//  NuevoContactoDelegate.h
//  AgendaContactos
//
//  Created by Sergio on 24/11/13.
//  Copyright (c) 2013 s0mniloquia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contacto.h"

@protocol NuevoContactoDelegate <NSObject>

-(void) addNewContact:(Contacto *)nuevoContacto;

@end
