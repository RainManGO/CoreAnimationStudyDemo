//
//  LayerTableViewController.m
//  LayerStudyDemo
//
//  Created by apple on 2017/9/18.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import "LayerTableViewController.h"
#import "LayerRouteManager.h"
@interface LayerTableViewController ()

@end

@implementation LayerTableViewController
{
    LayerRouteManager *  layerManager;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    layerManager  =  [[LayerRouteManager alloc]init];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    switch (indexPath.row) {
        case 0:
            [layerManager openUrl:@"LayerApp://layer/creat/:0" withOptions:@{@"row":@(indexPath.row)}];
            break;
        case 1:
            [layerManager openUrl:@"LayerApp://layer/contents/:1" withOptions:@{@"row":@(indexPath.row)}];
            break;
        case 2:
            [layerManager openUrl:@"LayerApp://layer/customDrawing/:2" withOptions:@{@"row":@(indexPath.row)}];
            break;
        case 3:
            [layerManager openUrl:@"LayerApp://layer/anchorPoint/:3" withOptions:@{@"row":@(indexPath.row)}];
            break;
        case 4:
            [layerManager openUrl:@"LayerApp://layer/clock/:4" withOptions:@{@"row":@(indexPath.row)}];
            break;
        case 5:
            [layerManager openUrl:@"LayerApp://layer/hitTesting/:5" withOptions:@{@"row":@(indexPath.row)}];
            break;
        case 6:
            [layerManager openUrl:@"LayerApp://layer/VisualEffect/:6" withOptions:@{@"row":@(indexPath.row)}];
            break;
        case 7:
            [layerManager openUrl:@"LayerApp://layer/maskLayer/:7" withOptions:@{@"row":@(indexPath.row)}];
            break;
        case 8:
            [layerManager openUrl:@"LayerApp://layer/TensileFilter/:8" withOptions:@{@"row":@(indexPath.row)}];
            break;
        case 9:
            [layerManager openUrl:@"LayerApp://layer/CGAffineTransform/:9" withOptions:@{@"row":@(indexPath.row)}];
            break;
        case 10:
            [layerManager openUrl:@"LayerApp://layer/3DAffinetrans/:10" withOptions:@{@"row":@(indexPath.row)}];
            break;
        case 11:
            [layerManager openUrl:@"LayerApp://layer/Stereomodel/:11" withOptions:@{@"row":@(indexPath.row)}];
            break;
        case 12:
            [layerManager openUrl:@"LayerApp://layer/CAReplicatorLayer/:12" withOptions:@{@"row":@(indexPath.row)}];
            break;
        case 13:
            [layerManager openUrl:@"LayerApp://layer/ReflectView/:13" withOptions:@{@"row":@(indexPath.row)}];
            break;
        case 14:
            [layerManager openUrl:@"LayerApp://layer/DefaultAnimation/:14" withOptions:@{@"row":@(indexPath.row)}];
            break;
        case 15:
            [layerManager openUrl:@"LayerApp://layer/LayerModel/:15" withOptions:@{@"row":@(indexPath.row)}];
            break;
        case 16:
            [layerManager openUrl:@"LayerApp://layer/ShowAnimation/:16" withOptions:@{@"row":@(indexPath.row)}];
            break;
        case 17:
            [layerManager openUrl:@"LayerApp://layer/Transition/:17" withOptions:@{@"row":@(indexPath.row)}];
            break;
        case 18:
            [layerManager openUrl:@"LayerApp://layer/CAMediaTiming/:18" withOptions:@{@"row":@(indexPath.row)}];
            break;
        case 19:
            [layerManager openUrl:@"LayerApp://layer/ManualAnimation/:19" withOptions:@{@"row":@(indexPath.row)}];
            break;
        default:
            break;
    }
    
}


/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
