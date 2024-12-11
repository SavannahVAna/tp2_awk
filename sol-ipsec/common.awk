function print_err(msg,line,lineno) {
	print FILENAME";" msg ";" line ";" lineno;
}
function print_err0(msg) {
	print FILENAME";" msg ";;";
}
