//
//  ViewController.m
//  FFTApp
//
//  Created by Sergii Nesteruk on 11/28/15.
//  Copyright © 2015 greenerpastures. All rights reserved.
//

#import "ViewController.h"
#import "fftw3.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    fftw_complex *ina, *outa;
    fftw_plan p;
    
    int N = 5;
    ina = (fftw_complex*) fftw_malloc(sizeof(fftw_complex) * N);
    for( int i = 0; i < N; i++ )
    {
        ina[i][0] = 10 * pow( -1, i );
        ina[i][1] = 0;
    }
    outa = (fftw_complex*) fftw_malloc(sizeof(fftw_complex) * N);
    p = fftw_plan_dft_1d(N, ina, outa, FFTW_FORWARD, FFTW_ESTIMATE);
    
    fftw_execute(p); /* repeat as needed */
    
    for( int i = 0; i < N; i++ )
    {
        NSLog( @"Value %i is %f + i* %f", i, outa[i][0], outa[i][1] );
    }
    fftw_destroy_plan(p);
    fftw_free(ina); fftw_free(outa);
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
