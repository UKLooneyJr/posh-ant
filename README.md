Peet's Posh Ant
========

**Posh Ant** is a simple PowerShell script that provides tab completion and colour support for Ant tasks

## Installation

1. (Optionally Fork and) Clone this project.

1. Edit your `$profile` to include<br>
> `Import-Module 'C:\<path-to-clone>\posh-ant.psm1'`

1. Reset your current environment<br>
> `. $profile`

 Or start a new shell

## Usage

### Tab Completion

* In a directory with a build.xml:
 * Type `ant<space>` , then hit `<tab>` to cycle through all targets.
 * Type `ant<space>a`, then hit `<tab>` to cycle through all targets that start with `a`.
 * etc...
 
### Colour

The following colour rules are in place:
* The name of the Buildfile will be in Grey.
* Targets will be in Cyan.
* Build Success message will be in Green.
* Build Failed or lines that contain 'error' will be in Red.

## Licence
* MIT - See LICENCE.txt