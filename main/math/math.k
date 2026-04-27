# ==========================================
# KORTEX STANDARD LIBRARY: MATH
# ==========================================

function abs(x) {
    if x < 0.0 {
        return x * -1.0
    } else {
        return x
    }
}

function clamp(val, min_val, max_val) {
    if val < min_val {
        return min_val
    }
    if val > max_val {
        return max_val
    }
    return val
}

function relu_deriv(x) {
    if x > 0.0 {
        return 1.0
    } else {
        return 0.0
    }
}

function squared_error(pred, target) {
    diff = target - pred
    return diff * diff
}
