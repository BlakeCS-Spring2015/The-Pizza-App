//
//  ViewController.m
//  The Pizza App
//
//  Created by Sean Hickey on 2/10/15.
//  Copyright (c) 2015 The Blake School. All rights reserved.
//

#import "PizzaOptionsViewController.h"
#import "Pizza.h"
#import "PizzaDeetsViewController.h"

@interface PizzaOptionsViewController ()

@property (strong, nonatomic) NSArray *pizzas;

@end

@implementation PizzaOptionsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Pizza *pizza1 = [[Pizza alloc] init];
    pizza1.name = @"Hawaiian";
    pizza1.ingredients = @"Dough, sauce, cheese, pineapple, ham";
    pizza1.review = @"7 thumbs up!";
    
    Pizza *pizza2 = [[Pizza alloc] init];
    pizza2.name = @"Pepperoni";
    pizza2.ingredients = @"Dough, sauce, cheese, pepperoni";
    pizza2.review = @"3 thumbs up";
    
    Pizza *pizza3 = [[Pizza alloc] init];
    pizza3.name = @"Cheese";
    pizza3.ingredients = @"Dough, sauce, cheese";
    pizza3.review = @"5 thumbs up";
    
    NSArray *allPizzas = @[pizza1, pizza2, pizza3];
    
    self.pizzas = allPizzas;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    PizzaDeetsViewController *pdvc = segue.destinationViewController;
    Pizza *nextPizza = self.pizzas[0];
    pdvc.pizza = nextPizza;
}

@end
