//
//  main.m
//  编程题
//
//  Created by tarena on 16/7/14.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
void seletedSort(int arr[], int count)
{
    for (int i = 0; i< count -1; i++)
    {
        for (int j = i+1; j < count ; j++) {
            if (arr[i] > arr[j]) {
                int temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }
}

void maxAndMin(int arr[],int count){
    printf("\nmin = %d ,max = %d \n",arr[0],arr[count-1]);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a[6] = {2,5,7,1,5,3};
        seletedSort(a, 6);
        for (int i =0; i< 6; i++) {
            printf("%d \t",arr[i]);
        }
        maxAndMin(a ,6);
    }
    return 0;
}
