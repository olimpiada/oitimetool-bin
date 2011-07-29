-------------------------------------------------------------------------------
  OITimeTool --- Time Measurement Tool for the Polish Olympiad in Informatics
-------------------------------------------------------------------------------

-- Current Status --

The new time measurement technology will be tested during various stages of the
competition in 2011/12 season.

-- Usage on Windows --

1. Download the package and extract it somewhere, for example to C:\OITIMETOOL.

   https://github.com/accek/oitimetool-bin/zipball/master

2. Open Command Prompt (Start -> Programs -> Accessories -> Command Prompt).

3. Go to the folder with your compiled program.
   In the example below we use sample programs distributed with OITimeTool:

   > c:
   > cd \oitimetool\test-programs

4. Run C:\OITIMETOOL\OITIMETOOL.BAT with your program as the argument.
   You can also redirect input and output, as usual.

   > c:\oitimetool\oitimetool.bat primes-devcpp-gcc34-O2.exe

When running for the first time, you will be asked to download the Pin library
which is used internally by the OITimeTool, but its license does not allow us
to redistribute it.

-- Usage on Linux --

This is generally the same as on Windows, except that you use
oitimetool/oitimetool instead of oitimetool/oitimetool.bat

Example:

# unzip oitimetool.zip
# cd oitimetool*/test-programs
# ../oitimetool ./primes-gcc44-static-O2

-- License --

OITimeTool by Polish Olympiad in Informatics is licensed under a Creative
Commons Attribution-NonCommercial-NoDerivs 3.0 Unported License.

