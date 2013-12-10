//
//  NuevoContactoViewController.h
//  AgendaContactos
//
//  Created by Sergio on 24/11/13.
//  Copyright (c) 2013 s0mniloquia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NuevoContactoDelegate.h"

@interface NuevoContactoViewController : UIViewController
- (IBAction)saveContact:(id)sender;
- (IBAction)cancelNewContact:(id)sender;

@property (strong, nonatomic) id delegate;
@property (weak, nonatomic) IBOutlet UITextField *nombre;
@property (weak, nonatomic) IBOutlet UITextField *apellidos;
@property (weak, nonatomic) IBOutlet UITextField *telefono;

@end
