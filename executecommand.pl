#!/usr/local/bin/perl -w
use Tk;
use lib './blib/lib'; use Tk::ExecuteCommand;
use Tk::widgets qw/LabEntry/;
use strict;

my $mw = MainWindow->new;

my $ec = $mw->ExecuteCommand(
    -command    => '',
    -entryWidth => 50,
    -height     => 10,
    -label      => '',
    -text       => 'Execute',
				  )->pack;
$ec->configure(-command => 'date; sleep 10; date');
$ec->execute_command;
 
MainLoop;
