# Example stand-alone plugin library for MountainProcess

### What's this about?

This examples demonstrates how to create stand-alone plugin processing libraries for MountainProcess using docker.

Sometimes it is difficult to install the proper dependencies, for example when using Matlab/Octave. By using a Dockerfile, we guarantee that the dependencies are installed consistently accross operating systems. This guarantees independence of processing libraries maintained by different users and opens up possibilities for cloud deployment. 

As you can see, MountainProcess uses a genereric interface, and you can use it to create arbitrary processors in any programming language (C++, Octave, Python, R, etc). They key entry point is the .mp JSON files which contain the specs for the processors.

### Instructions

* Install MountainLab: https://github.com/magland/mountainlab
* Clone this repository into the mountainlab/user/processors directory
* Be sure that docker installed and that your user is in the docker group (see below)
* Run the test:

```
./test.sh
```

In Ubuntu you can install docker using:
```
sudo apt-get install docker.io
```
