//
//  TableViewController.m
//  AgendaContactos
//
//  Created by Sergio on 23/11/13.
//  Copyright (c) 2013 s0mniloquia. All rights reserved.
//

#import "TableViewController.h"
#import "NuevoContactoDelegate.h"
#import "NuevoContactoViewController.h"
#import "DetalleViewController.h"
#import "PrototipoCelda.h"

@interface TableViewController ()

@end


@implementation TableViewController

@synthesize contactos;


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    Contacto * inicial = [[Contacto alloc]init];
    inicial.nombre = @"Dolores";
    inicial.apellidos = @"Fuertes de Barriga";
    inicial.telefono = @"675746456";
    contactos = [[NSMutableArray alloc] init];
    [contactos addObject:inicial];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [contactos count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Celda1";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    Contacto * contactoActual = [contactos objectAtIndex:indexPath.row];
    
    cell.tag = indexPath.row;
    
    cell.textLabel.text = [[NSString alloc] initWithFormat:@"%@ %@",contactoActual.nombre, contactoActual.apellidos];
    
    return cell;
}

#pragma mark - goToNewContact

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"goToNewContact"]){
        NuevoContactoViewController * viewNewContact = segue.destinationViewController;
        viewNewContact.delegate = self;
    }
    if([segue.identifier isEqualToString:@"goToDetail"]){
        DetalleViewController * viewDetail = segue.destinationViewController;
        UITableViewCell * selectionCell = (UITableViewCell *)sender;
        viewDetail.detalleContacto = [contactos objectAtIndex:selectionCell.tag];
        
        
        
    }
        
}

-(void) addNewContact:(Contacto *)nuevoContacto{
    
    [contactos addObject:nuevoContacto];
    [self.tableView reloadData];
    
}

#pragma mark - Table view delegate

- (IBAction)actionBotonEditar:(id)sender {
           
        if ([self.tableView isEditing]) {
            
            [self.tableView setEditing:NO];
            self.botonEditar.title=@"Edit";
            [self.botonEditar setStyle:UIBarButtonItemStyleBordered];

        }else{
            
            [self.tableView setEditing:YES];
            self.botonEditar.title=@"Ok";
            [self.botonEditar setStyle:UIBarButtonItemStyleDone];
            
        }
}

#pragma mark - Table view delegate rows

-(void)tableView:(UITableView *)tableView willBeginEditingRowAtIndexPath:(NSIndexPath *)indexPath{
    
    self.botonEditar.title=@"Ok";
    [self.botonEditar setStyle:UIBarButtonItemStyleDone];
}

-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    return YES;
}

-(void)tableView:(UITableView *)tableView didEndEditingRowAtIndexPath:(NSIndexPath *)indexPath{
    self.botonEditar.title=@"Edit";
    [self.botonEditar setStyle:UIBarButtonItemStyleBordered];
}


@end
