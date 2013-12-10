//
//  DetalleViewController.m
//  AgendaContactos
//
//  Created by Sergio on 24/11/13.
//  Copyright (c) 2013 s0mniloquia. All rights reserved.
//

#import "DetalleViewController.h"

@interface DetalleViewController ()

@end

@implementation DetalleViewController

@synthesize nombreDetalle;
@synthesize apellidosDetalle;
@synthesize telefonoDetalle;

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

- (void)viewWillAppear:(BOOL)animated{
    self.nombreDetalle.text = self.detalleContacto.nombre;
    self.apellidosDetalle.text = [self.detalleContacto apellidos];
    self.telefonoDetalle.text = [self.detalleContacto telefono];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
