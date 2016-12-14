{
        "processors":[
                {
                        "name":"shellcopy",
                        "version":"0.11",
                        "description":"",
                        "inputs":[{"name":"input"}],
                        "outputs":[{"name":"output"}],
                        "parameters":[],
                        "exe_command":"./run_in_container.sh cp /host/$input$ /host/$output$"
                },
                {
                        "name":"octcopy",
                        "version":"0.1",
                        "description":"",
                        "inputs":[{"name":"input"}],
                        "outputs":[{"name":"output"}],
                        "parameters":[],
                        "exe_command":"./run_in_octave.sh 'addpath('\\''/host/$(basepath)/octave'\\''); octcopy('\\''/host/$input$'\\'','\\''/host/$output$'\\'');'",
                        "misc_info":"Escape single quotes in JSON octave command using '\\'', and prepend all paths using /host because it will be run in a docker container"
                }
        ]
}
