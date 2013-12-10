//
//  TableViewController.h
//  AgendaContactos
//
//  Created by Sergio on 23/11/13.
//  Copyright (c) 2013 s0mniloquia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NuevoContactoDelegate.h"

@interface TableViewController : UITableViewController <NuevoContactoDelegate>

@property(strong, nonatomic) NSMutableArray * contactos;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *botonEditar;
- (IBAction)actionBotonEditar:(id)sender;

@end
