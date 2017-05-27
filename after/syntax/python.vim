" Colors: https://upload.wikimedia.org/wikipedia/commons/1/15/Xterm_256color_chart.svg
syntax match PythonArg "\v[\(\,]\s{-}\zs\w+\ze\s{-}\=(\=)@!"
hi PythonArg ctermfg=214

hi PythonFunction ctermfg=004

syntax match PythonSelf "self"
hi PythonSelf ctermfg=118

hi pythonComment ctermfg=248 cterm=italic
