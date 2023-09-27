#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "DNN.hpp"

float ReLU(float x) {
    if (x < 0.0)
			x = 0.0;
    return x;
}


void convolution1(float input[100], const float kernel[3][3], float output[8][8]) {
    int i, j, m, n;
    float sum;
    float temp_input[10][10]={1};

    for(int p=0;p<10;p++){
        for(int q=0;q<10;q++){
            temp_input[p][q]=input[p*10+q];
        }
    }

    for (i = 0; i < 8; i++) {
        for (j = 0; j < 8; j++) {
            sum = 0.0;
            for (m = 0; m < 3; m++) {
                for (n = 0; n < 3; n++) {
                    sum += temp_input[i + m][j + n] * kernel[m][n];
                }
            }

            output[i][j] = ReLU(sum);
        }
    }
}

void convolution2(float input[4][4], const float kernel[16][3][3], float output[16][2][2]) {
    int i, j, m, n,k;
    float sum;
for(k=0;k<16;k++){
    for (i = 0; i < 2; i++) {
        for (j = 0; j < 2; j++) {
            sum = 0.0;
            for (m = 0; m < 3; m++) {
                for (n = 0; n < 3; n++) {
                    sum += input[i + m][j + n] * kernel[k][m][n];
                }
            }
            output[k][i][j] =ReLU(sum);
        }
    }
}
}


void maxPooling1(float input[8][8], float output[4][4]) {
    int i, j, m, n;
    float max_value;
    for (i = 0; i < 8; i += 2) {
        for (j = 0; j < 8; j += 2) {
            max_value = input[i][j];
            for (m = 0; m < 2; m++) {
                for (n = 0; n < 2; n++) {
                    if (input[i + m][j + n] > max_value) {
                        max_value = input[i + m][j + n];
                    }
                }
            }
            output[i / 2][j / 2] = max_value;
        }
    }
}

void maxPooling2(float input[16][2][2], float output[16][1][1]) {
    int i, j, m, n,p;
    float max_value;
for(p=0;p<16;p++){
    for (i = 0; i < 2; i += 2) {
        for (j = 0; j < 2; j += 2) {
            max_value = input[p][i][j];
            for (m = 0; m < 2; m++) {
                for (n = 0; n < 2; n++) {
                    if (input[p][i + m][j + n] > max_value) {
                        max_value = input[p][i + m][j + n];
                    }
                }
            }

            output[p][i / 2][j / 2] = max_value;
        }
    }
}
}

int DNN(float input[100]) {
    float conv1_output[8][8]= {1};
    float pool1_output[4][4]= {1};
    float conv2_output[16][2][2]= {1};
    float pool2_output[16][1][1]= {1};
    float flatten_output[16]= {1};
    float fc1_output[16]= {1};
    float fc2_output[12]= {1};
    float temp_output[10]= {1};
    float output[10]= {1};


    float s=0.0;


    convolution1(input, weights::conv1_kernel, conv1_output);
    maxPooling1(conv1_output, pool1_output);
    convolution2(pool1_output, weights::conv2_kernel, conv2_output);
    maxPooling2(conv2_output, pool2_output);


    for(int p=0;p<16;p++){
    for (int i = 0; i < 1; i++) {
        for (int j = 0; j < 1; j++) {
            flatten_output[p] = pool2_output[p][i][j];
        }
    }
    }


    for (int i = 0; i < 16; i++) {
        float sum = 0.0;
        for (int j = 0; j < 16; j++) {
            sum += flatten_output[j] * weights::fc1_weight[j][i];
        }
        fc1_output[i] = ReLU(sum);
    }


    for (int i = 0; i < 12; i++) {
        float sum = 0.0;
        for (int j = 0; j < 16; j++) {
            sum += fc1_output[j] * weights::fc2_weight[j][i];
        }
        fc2_output[i] = ReLU(sum);
    }

    for (int i = 0; i < 10; i++) {
        float sum = 0.0;
        for (int j = 0; j < 12; j++) {
            sum += fc2_output[j] * weights::output_weight[j][i];
        }
        temp_output[i] = exp(sum);
    }
    for(int i=0;i<10;i++){
        s+=temp_output[i];
    }
    for (int i = 0; i < 10; i++){
	    output[i]=temp_output[i]/s;
	}
	int max_idx = -1;
	float max_val = -999.9;
	for (int i = 0; i < 10; i++){
		if (output[i] > max_val){
			max_idx = i;
			max_val = output[i];
		}
	}

    return max_idx;
}
