#ifndef KORTEX_MATH_H
#define KORTEX_MATH_H

#include <math.h>

float dot(float* a, float* b, int size) {
    float sum = 0.0f;
    for(int i = 0; i < size; i++) sum += a[i] * b[i];
    return sum;
}

void matmul(float* a, float* b, float* out, int rows_a, int cols_a, int cols_b) {
    for (int i = 0; i < rows_a; i++) {
        for (int j = 0; j < cols_b; j++) {
            float sum = 0.0f;
            for (int k = 0; k < cols_a; k++) sum += a[i * cols_a + k] * b[k * cols_b + j];
            out[i * cols_b + j] = sum;
        }
    }
}

float mse(float* pred, float* target, int size) {
    float sum = 0.0f;
    for (int i = 0; i < size; i++) {
        float d = pred[i] - target[i];
        sum += d * d;
    }
    return sum / (float)size;
}

void vec_sub(float* a, float* b, float* out, int size) {
    for (int i = 0; i < size; i++) out[i] = a[i] - b[i];
}

void vec_add(float* a, float* b, float* out, int size) {
    for (int i = 0; i < size; i++) out[i] = a[i] + b[i];
}

void vec_scale(float* a, float s, float* out, int size) {
    for (int i = 0; i < size; i++) out[i] = a[i] * s;
}

void vec_axpy(float a, float* x, float* y, float* out, int size) {
    for (int i = 0; i < size; i++) out[i] = a * x[i] + y[i];
}

float vec_sum(float* a, int size) {
    float s = 0.0f;
    for (int i = 0; i < size; i++) s += a[i];
    return s;
}

#endif
