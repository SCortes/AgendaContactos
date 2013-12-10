//
//  DetalleViewController.h
//  AgendaContactos
//
//  Created by Sergio on 24/11/13.
//  Copyright (c) 2013 s0mniloquia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contacto.h"

@interface DetalleViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField * nombreDetalle;
@property (weak, nonatomic) IBOutlet UITextField * apellidosDetalle;
@property (weak, nonatomic) IBOutlet UITextField * telefonoDetalle;
@property (strong, nonatomic) Contacto * detalleContacto;

@end
