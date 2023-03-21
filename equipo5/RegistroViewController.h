//
//  RegistroViewController.h
//  equipo5
//
//  Created by Juan Carlos on 20/03/23.
//

#import <UIKit/UIKit.h>



@interface RegistroViewController : UIViewController
{
    NSMutableArray *registroMascotas;
}

@property (weak, nonatomic) IBOutlet UITextField *regNombre;
@property (weak, nonatomic) IBOutlet UITextField *regEspecie;
@property (weak, nonatomic) IBOutlet UITextField *regRaza;
@property (weak, nonatomic) IBOutlet UILabel *labNombre;
@property (weak, nonatomic) IBOutlet UILabel *labEspecie;
@property (weak, nonatomic) IBOutlet UILabel *labRaza;

- (IBAction)registrar:(id)sender;


@end


