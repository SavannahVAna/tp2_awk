function print_err(msg,line,lineno) {
	print FILENAME";" msg ";" line ";" lineno;
}
function print_err0(msg) {
	print FILENAME";" msg ";;";
}

function keys(arr,k, idx) {
    idx = 0;
    for (k in arr) {
        idx++;
        keys[idx] = k;
    }
    return keys;
}

