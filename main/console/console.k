# ==========================================
# KORTEX STANDARD LIBRARY: CONSOLE
# ==========================================

# --- BASIC SEPARATORS ---

function print_line() {
    print("--------------------------------------------------")
}

function print_double_line() {
    print("==================================================")
}

function print_empty() {
    print("")
}

# --- HEADERS & BANNERS ---

function print_header(title) {
    print_empty()
    print_double_line()
    print("  ", title)
    print_double_line()
}

function print_subheader(subtitle) {
    print_empty()
    print(" --- ", subtitle, " ---")
    print_line()
}

# --- STATUS MESSAGES ---

function info(message) {
    print("[INFO]    ", message)
}

function success(message) {
    print("[SUCCESS] ", message)
}

function warning(message) {
    print("[WARN]    ", message)
}

function error(message) {
    print("[ERROR]   ", message)
}

# --- VISUALIZATION (PROGRESS BAR SIMULATION) ---

# Since Kortex currently prints line by line, we simulate a loading bar
# by printing segments of it.
function progress_bar_start(total_steps) {
    print("Progress: 0% [Start]")
}

function progress_bar_update(current, total) {
    # We print a milestone every 25% to keep the console clean
    ratio = current / total
    
    if ratio > 0.99 {
        print("Progress: 100% [██████████] Complete!")
        return 0.0
    }
    if ratio > 0.75 {
        print("Progress:  75% [███████...] Running")
        return 0.0
    }
    if ratio > 0.50 {
        print("Progress:  50% [█████.....] Running")
        return 0.0
    }
    if ratio > 0.25 {
        print("Progress:  25% [██........] Running")
        return 0.0
    }
    
    return 0.0
}