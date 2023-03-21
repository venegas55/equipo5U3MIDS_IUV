//
//  ViewController.m
//  equipo5
//
//  Created by Juan Carlos on 19/03/23.
//

#import "ViewController.h"
#import "CeldaMascota.h"
#import "DetalleViewController.h"
#import "RegistroViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    mascotas = [[NSMutableArray alloc] init];
    
    //Creando los objetos "Hardcoded" con el tutorial de manzana mágica
    NSDictionary *Atenea = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"atenea.jpg", @"Atenea", @"Perro", @"Wahuki Africano", nil] forKeys:[NSArray arrayWithObjects:@"Imagen", @"Nombre", @"Especie", @"Raza", nil]];
    NSDictionary *Ragnar = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"ragnar.jpg", @"Ragnar", @"Perro", @"Cocker", nil] forKeys:[NSArray arrayWithObjects:@"Imagen", @"Nombre", @"Especie", @"Raza", nil]];
    NSDictionary *Princesa = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"princesa.jpg", @"Princesa", @"Perro", @"Cocker", nil] forKeys:[NSArray arrayWithObjects:@"Imagen", @"Nombre", @"Especie", @"Raza", nil]];
    NSDictionary *Gordo = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"gordo.jpg", @"Gordo", @"Perro", @"Cocker", nil] forKeys:[NSArray arrayWithObjects:@"Imagen", @"Nombre", @"Especie", @"Raza", nil]];
    NSDictionary *Olivia = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"olivia.jpg", @"Olivia", @"Gato", @"Voladore", nil] forKeys:[NSArray arrayWithObjects:@"Imagen", @"Nombre", @"Especie", @"Raza", nil]];
    NSDictionary *Messi = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"messi.jpg", @"Messi", @"Perro", @"Cocker", nil] forKeys:[NSArray arrayWithObjects:@"Imagen", @"Nombre", @"Especie", @"Raza", nil]];
    
    [mascotas addObject:Atenea];
    [mascotas addObject:Ragnar];
    [mascotas addObject:Princesa];
    [mascotas addObject:Gordo];
    [mascotas addObject:Olivia];
    [mascotas addObject:Messi];
    
    // Do any additional setup after loading the view.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

//Con este metodo la cantidad de filas (o celdas)
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [mascotas count];
}

//Con este metodo se poblará la tabla
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *) indexPath
{
    //---Depreciado
    //static NSString *CellIdentifier = @"Cell";
    
    CeldaMascota *cell = [tableView dequeueReusableCellWithIdentifier:@"CeldaMascota"];
    
    //--Depreciado
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    //if (cell == nil)
    //{
    //    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    //}
    
    NSDictionary *mascota = [mascotas objectAtIndex:indexPath.row];
    
    cell.nombreMascota.text = [mascota objectForKey:@"Nombre"];
    cell.especieMascota.text = [mascota objectForKey:@"Especie"];
    cell.imagenMascota.image = [UIImage imageNamed: [mascota objectForKey:@"Imagen"]];
    
    //--Depreciado
    //cell.textLabel.text = [mascota objectForKey:@"Nombre"];
    //cell.detailTextLabel.text = [mascota objectForKey:@"Especie"];
    //cell.imageView.image = [UIImage imageNamed: [mascota objectForKey:@"Imagen"]];
    //cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    //Configuración de celda
    
    return cell;
}

//Con este se hará la lógica de navegación
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath*)indexPath
{
    NSDictionary *mascota = [mascotas objectAtIndex:indexPath.row];
    
    DetalleViewController *detalleVC = [self.storyboard instantiateViewControllerWithIdentifier:@"DetalleViewController"];
    [self.navigationController pushViewController:detalleVC animated:YES];
    
    [detalleVC loadView];
    
    [detalleVC.nombreMascota setText:[mascota objectForKey:@"Nombre"]];
    [detalleVC.especieMascota setText:[mascota objectForKey:@"Especie"]];
    [detalleVC.razaMascota setText:[mascota objectForKey:@"Raza"]];
    [detalleVC.imagenMascota setImage:[UIImage imageNamed:[mascota objectForKey:@"Imagen"]]];
    
    
    
    //Lógica de navegación
}
//Con este se da el tamaño de la celda
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}




//TEST

//Al parecer este metodo inicia el botón para pasar a la siguiente vista


@end
