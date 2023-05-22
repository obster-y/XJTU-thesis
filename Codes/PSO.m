% 标准粒子群算法 来自[https://zhuanlan.zhihu.com/p/57288027]
clc;
clear all;


c1=1.49445;         %加速系数，这里1.49445为某一论文中取值，能使PSO发挥不错的性能
c2=1.49445;
maxg=1000;          %迭代次数
sizepop=20;         %种群规模
D=30;               %维度
popmax=600;         %种群上下边界值，这里使用Griewank函数，测试范围为（-600，600）
popmin=-popmax;     %取对称区间
Vmax=0.15*popmax;   %速度限定，通常在搜索范围的10%~20%均可，这里作者取15%
Vmin=0.15*popmin;


%%产生初始粒子位置及速度
for i=1:sizepop                           %将popsize个粒子依次初始化
    pop(i,:)=popmax*rands(1,D);           %初始位置
    V(i,:)=Vmax*rands(1,D);               %初始速度
    fitness(i)=Griewank(pop(i,:));        %计算适应度，Griewank为用来测试的函数
                                          %fitness只作每次迭代变量临时储存，不具有记忆性
end


%寻找最优个体
%因目前第一代，故其当前取值即历史最优，全部赋值即可
[bestfitness bestindex]=min(fitness);   %从fitness中寻找最小值，依次返回值和索引，由变量接收
pBest=pop;                              %个体历史最佳位置
gBest=pop(bestindex,:);                 %全局历史最佳位置
fitnesspbest=fitness;                   %个体历史最佳适应度
fitnessgbest=bestfitness;               %全局历史最佳适应度


%%迭代寻优
for i=1:maxg             %每一代循环
    for j=1:sizepop      %每个粒子循环

        %速度更新
        w=0.8;           %w即omega，惯量权重，这里取固定值
        V(j,:)=w*V(j,:)+c1*rand*(pBest(j,:)-pop(j,:))+c2*rand*(gBest-pop(j,:));
        %越界处理
        V(j,find(V(j,:)>Vmax))=Vmax;
        V(j,find(V(j,:)<Vmin))=Vmin;
        
        %位置更新
        pop(j,:)=pop(j,:)+V(j,:);
        %越界处理
        pop(j,find(pop(j,:)>popmax))=popmax;
        pop(j,find(pop(j,:)<popmin))=popmin;

        %计算适应度值
        fitness(j)=Griewank(pop(j,:));

        %个体历史最优更新
        if fitness(j)<fitnesspbest(j)
            pBest(j,:)=pop(j,:);
            fitnesspbest(j)=fitness(j);
        end
        
        %群体历史最优更新
        if fitness(j)<fitnessgbest
            gBest=pop(j,:);
            fitnessgbest=fitness(j);
        end
    end
    result(i)=fitnessgbest;    %储存历代全局历史最优适应度值
end


semilogy(result);     %对y轴取对数
grid on;              %打格

%坐标含义说明
title('适应度曲线 ');
xlabel('进化代数');
ylabel('适应度');