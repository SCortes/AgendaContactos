//
//  NuevoContactoViewController.m
//  AgendaContactos
//
//  Created by Sergio on 24/11/13.
//  Copyright (c) 2013 s0mniloquia. All rights reserved.
//

#import "NuevoContactoViewController.h"

@interface NuevoContactoViewController ()

@end




@implementation NuevoContactoViewController

@synthesize nombre = nombreTextField;
@synthesize apellidos = apellidosTextField;
@synthesize telefono = telefonoTextField;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveContact:(id)sender {
    Contacto * nuevoContacto = [[Contacto alloc] init];
    nuevoContacto.nombre = nombreTextField.text;
    nuevoContacto.apellidos = apellidosTextField.text;
    nuevoContacto.telefono = telefonoTextField.text;
    
    [self.delegate addNewContact:nuevoContacto];
    [self dismissViewControllerAnimated:YES completion:nil];

    
}

- (IBAction)cancelNewContact:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
