{
        "processors":[
                {
                        "name":"shellcopy",
                        "version":"0.11",
                        "description":"Minimal test of shell command to copy a file.",
                        "inputs":[{"name":"input"}],
                        "outputs":[{"name":"output"}],
                        "parameters":[],
                        "exe_command":"cp $input$ $output$"
                },
                {
                        "name":"octcopy",
                        "version":"0.1",
                        "description":"Minimal test of octave script to copy a file.",
                        "inputs":[{"name":"input"}],
                        "outputs":[{"name":"output"}],
                        "parameters":[],
                        "exe_command":"$(basepath)/run_in_octave.sh 'addpath('\\''$(basepath)/octave'\\''); octcopy('\\''$input$'\\'','\\''$output$'\\'');'",
                        "misc_info":"Escape single quotes in JSON octave command using '\\''"
                }
        ]
}
