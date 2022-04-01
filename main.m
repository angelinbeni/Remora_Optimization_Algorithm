clc
clear
close all;
% Initialize algorithm paramaters
SearchAgents=50; 
Fun_name='F1';  
Max_iterations=100; 
[lowerbound,upperbound,dimension,fitness]=fun_info(Fun_name);
% Remora Optimization
[Best_score,Best_pos,ROA_curve]=ROA(SearchAgents,Max_iterations,lowerbound,upperbound,dimension,fitness);
display(['The best solution obtained by ROA is : ', num2str(Best_pos)]);
display(['The best optimal value of the objective funciton found by ROA is : ', num2str(Best_score)]);
% Display the convergence curve
figure;
plot(ROA_curve,'-b','linewidth',2)
xlabel('Iterations')
ylabel('Fitness Value')
set (gca,'fontweight','Bold','Fontname','Times')