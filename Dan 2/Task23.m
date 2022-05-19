k_1 = 10;
k_2 = 100;
k_3 = 1000;
k_4 = 10000;
x_start = zeros(51,1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%KONV1%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fileID = fopen('Konv1.txt','r');
formatSpec = '%e';
y_1 = fscanf(fileID,formatSpec);
fileID = fopen('Kernel1.txt','r');
A_1_first = fscanf(fileID,formatSpec);
A_1 = toeplitz(A_1_first);
fileID = fopen('signal1.txt','r');
x_1 = fscanf(fileID,formatSpec);

it_1_10 = iteracija(A_1, k_1, y_1, x_start);
it_1_100 = iteracija(A_1, k_2, y_1, x_start);
it_1_1000 = iteracija(A_1, k_3, y_1, x_start);
it_1_10000 = iteracija(A_1, k_4, y_1, x_start);

norm_1_10 = vecnorm(x_1 - transpose(it_1_10(2:(k_1+1), :)));
norm_1_100 = vecnorm(x_1 - transpose(it_1_100(2:(k_2+1), :)));
norm_1_1000 = vecnorm(x_1 - transpose(it_1_1000(2:(k_3+1), :)));
norm_1_10000 = vecnorm(x_1 - transpose(it_1_10000(2:(k_4+1), :)));

figure(1)
plot(1:k_1, norm_1_10, 'b')
figure(2)
plot(1:k_2, norm_1_100, 'b')
figure(3)
plot(1:k_3, norm_1_1000, 'b')
figure(4)
plot(1:k_4, norm_1_10000, 'b')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%KONV2%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fileID = fopen('Konv2.txt','r');
formatSpec = '%e';
y_2 = fscanf(fileID,formatSpec);
fileID = fopen('Kernel1.txt','r');
A_2_first = fscanf(fileID,formatSpec);
A_2 = toeplitz(A_2_first);
fileID = fopen('signal2.txt','r');
x_2 = fscanf(fileID,formatSpec);

it_2_10 = iteracija(A_2, k_1, y_2, x_start);
it_2_100 = iteracija(A_2, k_2, y_2, x_start);
it_2_1000 = iteracija(A_2, k_3, y_2, x_start);
it_2_10000 = iteracija(A_2, k_4, y_2, x_start);

norm_2_10 = vecnorm(x_2 - transpose(it_2_10(2:(k_1+1), :)));
norm_2_100 = vecnorm(x_2 - transpose(it_2_100(2:(k_2+1), :)));
norm_2_1000 = vecnorm(x_2 - transpose(it_2_1000(2:(k_3+1), :)));
norm_2_10000 = vecnorm(x_2 - transpose(it_2_10000(2:(k_4+1), :)));

figure(5)
plot(1:k_1, norm_2_10, 'r')
figure(6)
plot(1:k_2, norm_2_100, 'r')
figure(7)
plot(1:k_3, norm_2_1000, 'r')
figure(8)
plot(1:k_4, norm_2_10000, 'r')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%KONV3%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fileID = fopen('Konv3.txt','r');
formatSpec = '%e';
y_3 = fscanf(fileID,formatSpec);
fileID = fopen('Kernel2.txt','r');
A_3_first = fscanf(fileID,formatSpec);
A_3 = toeplitz(A_3_first);
fileID = fopen('signal1.txt','r');
x_3 = fscanf(fileID,formatSpec);

it_3_10 = iteracija(A_3, k_1, y_3, x_start);
it_3_100 = iteracija(A_3, k_2, y_3, x_start);
it_3_1000 = iteracija(A_3, k_3, y_3, x_start);
it_3_10000 = iteracija(A_3, k_4, y_3, x_start);

norm_3_10 = vecnorm(x_3 - transpose(it_3_10(2:(k_1+1), :)));
norm_3_100 = vecnorm(x_3 - transpose(it_3_100(2:(k_2+1), :)));
norm_3_1000 = vecnorm(x_3 - transpose(it_3_1000(2:(k_3+1), :)));
norm_3_10000 = vecnorm(x_3 - transpose(it_3_10000(2:(k_4+1), :)));

figure(9)
plot(1:k_1, norm_3_10, 'cyan')
figure(10)
plot(1:k_2, norm_3_100, 'cyan')
figure(11)
plot(1:k_3, norm_3_1000, 'cyan')
figure(12)
plot(1:k_4, norm_3_10000, 'cyan')