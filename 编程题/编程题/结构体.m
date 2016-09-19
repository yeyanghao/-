//
//  结构体.m
//  编程题
//
//  Created by tarena on 16/7/14.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#define N 6
typedef  struct student{
    char num[10];
    char name[20];
    float score[3];
    float avr;
}STU[N];
void inputInfo(STU *stu ){
    for (int i = 0; i < N-1; i++) {
        printf("请输入第%d个学生的信息\n",i+1);
        printf("学号：");
        scanf("%s",stu[i]->num);
        printf("姓名：");
        scanf("%s",stu[i]->name);
        for (int j = 0; j < 3; j++) {
            printf("科目%d:",j+1);
            scanf("%f",&stu[i]->score[j]);
        }
    }
}
void outputInfo(STU *stu){
    for (int i = 0; i < N-1; i++) {
        float sum = 0;
        for (int j = 0; j < 3; j++) {
            sum += stu[i]->score[j];
        }
        stu[i]->avr = sum / 3.0;
        for ( int k = i; k > 0 ; k--) {
            if(stu[k]->avr > stu[k-1]->avr){
                struct student temp;
                temp = *stu[k];
                *stu[k] = *stu[k-1];
                *stu[k-1] = temp;
            }
        }
    }
    *stu[N-1] = *stu[0];
    printf("学号\t\t姓名\t\tC语言\t\tOC语言\t\tSwift\t\t平均成绩\n");
    for (int i = 0; i < N; i++) {
        if (i == N - 1) {
            printf("总成绩最高的是学生的信息：\n");
        }
        printf("%s\t\t%s\t\t",stu[i]->num,stu[i]->name);
        for (int j = 0; j < 3; j++) {
            printf("%.2f\t\t",stu[i]->score[j]);
        }
        printf("%.2f\n",stu[i]->avr);
    }
}
int main(){
    @autoreleasepool {
        STU *stu;
        inputInfo(stu);
        outputInfo(stu);
    }
    return 0;
}