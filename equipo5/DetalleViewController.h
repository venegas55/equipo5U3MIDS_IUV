//
//  DetalleViewController.h
//  equipo5
//
//  Created by Juan Carlos on 19/03/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetalleViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imagenMascota;
@property (weak, nonatomic) IBOutlet UILabel *nombreMascota;
@property (weak, nonatomic) IBOutlet UILabel *especieMascota;
@property (weak, nonatomic) IBOutlet UILabel *razaMascota;

@end

NS_ASSUME_NONNULL_END
