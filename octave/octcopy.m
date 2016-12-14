function octcopy(input,output)
disp(input);
disp(output);
system(sprintf('cp %s %s',input,output));