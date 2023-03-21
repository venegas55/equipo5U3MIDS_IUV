//
//  RegistroViewController.m
//  equipo5
//
//  Created by Juan Carlos on 20/03/23.
//

#import "RegistroViewController.h"
#import "ViewController.h"


@interface RegistroViewController ()

@end

@implementation RegistroViewController
@synthesize regRaza,regNombre,regEspecie,labNombre,labEspecie,labRaza;





-(IBAction)registrar:(id)sender
{
    registroMascotas = [[NSMutableArray alloc] init];
    
    NSDictionary *NuevoRegistro = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:regNombre.text, regEspecie.text, regRaza.text, nil] forKeys:[NSArray arrayWithObjects:@"Nombre", @"Especie", @"Raza", nil]];
    
    [registroMascotas addObject:NuevoRegistro];
    
    //labNombre.text = [registroMascotas objectForKey:@"Nombre"];
    
    [labNombre setText:[[NSString alloc] initWithFormat:@"%@", regNombre.text]];
    
    
    
    
    
    
    
    
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
