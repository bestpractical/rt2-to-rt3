use  inc::Module::Install;
license('perl');
name('RT-Extension-RT2toRT3');
no_index( 'directory' => 'tools' );
no_index( 'directory' => 'examples' );
version('1.25');
author('Kevin Falcone <falcone@bestpractical.com>');
abstract("This tool migrates your RT2 instance to an RT 3.x instance");
#requires("RT");  # RT is often somewhere not in @INC
install_script('rt-2.0-to-dumpfile');
install_script('dumpfile-to-rt-3.0');
WriteAll;
