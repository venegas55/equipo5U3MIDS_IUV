//
//  CeldaMascota.h
//  equipo5
//
//  Created by Juan Carlos on 19/03/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CeldaMascota : UITableViewCell

@property (nonatomic, retain) IBOutlet UILabel *nombreMascota;
@property (nonatomic, retain) IBOutlet UILabel *especieMascota;
@property (nonatomic, retain) IBOutlet UIImageView *imagenMascota;


@end

NS_ASSUME_NONNULL_END
