#!perl
#
#
use 5.001;
use strict;
use warnings;
use warnings::register;

use vars qw($VERSION $DATE);
$VERSION = '0.01';   # automatically generated file
$DATE = '2004/05/22';


##### Demonstration Script ####
#
# Name: Startup.d
#
# UUT: Data::Startup
#
# The module Test::STDmaker generated this demo script from the contents of
#
# t::Data::Startup 
#
# Don't edit this test script file, edit instead
#
# t::Data::Startup
#
#	ANY CHANGES MADE HERE TO THIS SCRIPT FILE WILL BE LOST
#
#       the next time Test::STDmaker generates this script file.
#
#

######
#
# The working directory is the directory of the generated file
#
use vars qw($__restore_dir__ @__restore_inc__ );

BEGIN {
    use Cwd;
    use File::Spec;
    use FindBin;

    ########
    # The working directory for this script file is the directory where
    # the test script resides. Thus, any relative files written or read
    # by this test script are located relative to this test script.
    #
    use vars qw( $__restore_dir__ );
    $__restore_dir__ = cwd();
    my ($vol, $dirs) = File::Spec->splitpath($FindBin::Bin,'nofile');
    chdir $vol if $vol;
    chdir $dirs if $dirs;

    #######
    # Pick up any testing program modules off this test script.
    #
    # When testing on a target site before installation, place any test
    # program modules that should not be installed in the same directory
    # as this test script. Likewise, when testing on a host with a @INC
    # restricted to just raw Perl distribution, place any test program
    # modules in the same directory as this test script.
    #
    use lib $FindBin::Bin;

    ########
    # Using Test::Tech, a very light layer over the module "Test" to
    # conduct the tests.  The big feature of the "Test::Tech: module
    # is that it takes expected and actual references and stringify
    # them by using "Data::Secs2" before passing them to the "&Test::ok"
    # Thus, almost any time of Perl data structures may be
    # compared by passing a reference to them to Test::Tech::ok
    #
    # Create the test plan by supplying the number of tests
    # and the todo tests
    #
    require Test::Tech;
    Test::Tech->import( qw(demo finish is_skip ok ok_sub plan skip 
                          skip_sub skip_tests tech_config) );

}

END {

    #########
    # Restore working directory and @INC back to when enter script
    #
    @INC = @lib::ORIG_INC;
    chdir $__restore_dir__;

}

print << 'MSG';

~~~~~~ Demonstration overview ~~~~~
 
The results from executing the Perl Code 
follow on the next lines as comments. For example,

 2 + 2
 # 4

~~~~~~ The demonstration follows ~~~~~

MSG

demo( "\ \ \ \ use\ File\:\:Package\;\
\ \ \ \ my\ \$uut\ \=\ \'Data\:\:Startup\'\;\
\
\ \ \ \ my\ \(\$result\,\@result\)\;\ \#\ provide\ scalar\ and\ array\ context\
\ \ \ \ my\ \(\$default_options\,\$options\)\ \=\ \(\'\$default_options\'\,\'\$options\'\)\;"); # typed in command           
          use File::Package;
    my $uut = 'Data::Startup';

    my ($result,@result); # provide scalar and array context
    my ($default_options,$options) = ('$default_options','$options'); # execution



print << "EOF";

 ##################
 # create a Data::Startup default options
 # 
 
EOF

demo( "\(\$default_options\ \=\ new\ \$uut\(\
\ \ \ \ \ \ \ perl_secs_numbers\ \=\>\ \'multicell\'\,\
\ \ \ \ \ \ \ type\ \=\>\ \'ascii\'\,\ \ \ \
\ \ \ \ \ \ \ indent\ \=\>\ \'\'\,\
\ \ \ \ \ \ \ \'Data\:\:SecsPack\'\ \=\>\ \{\}\
\ \ \ \)\)", # typed in command           
      ($default_options = new $uut(
       perl_secs_numbers => 'multicell',
       type => 'ascii',   
       indent => '',
       'Data::SecsPack' => {}
   ))); # execution


print << "EOF";

 ##################
 # read perl_secs_numbers default option
 # 
 
EOF

demo( "\[\$default_options\-\>config\(\'perl_secs_numbers\'\)\]", # typed in command           
      [$default_options->config('perl_secs_numbers')]); # execution


print << "EOF";

 ##################
 # write perl_secs_numbers default option
 # 
 
EOF

demo( "\[\$default_options\-\>config\(perl_secs_numbers\ \=\>\ \'strict\'\)\]", # typed in command           
      [$default_options->config(perl_secs_numbers => 'strict')]); # execution


print << "EOF";

 ##################
 # restore perl_secs_numbers default option
 # 
 
EOF

demo( "\[\$default_options\-\>config\(perl_secs_numbers\ \=\>\ \'multicell\'\)\]", # typed in command           
      [$default_options->config(perl_secs_numbers => 'multicell')]); # execution


print << "EOF";

 ##################
 # create options copy of default options
 # 
 
EOF

demo( "\$options\ \=\ \$default_options\-\>override\(type\ \=\>\ \'binary\'\)", # typed in command           
      $options = $default_options->override(type => 'binary')); # execution


print << "EOF";

 ##################
 # verify default options unchanged
 # 
 
EOF

demo( "\$default_options", # typed in command           
      $default_options); # execution


print << "EOF";

 ##################
 # array reference option config
 # 
 
EOF

demo( "\[\@result\ \=\ \$options\-\>config\(\[perl_secs_numbers\ \=\>\ \'strict\'\]\)\]", # typed in command           
      [@result = $options->config([perl_secs_numbers => 'strict'])]); # execution


print << "EOF";

 ##################
 # array reference option config
 # 
 
EOF

demo( "\$options", # typed in command           
      $options); # execution


print << "EOF";

 ##################
 # hash reference option config
 # 
 
EOF

demo( "\[\@result\ \=\ \$options\-\>config\(\{\'Data\:\:SecsPack\'\=\>\ \{decimal_fraction_digits\ \=\>\ 30\}\ \}\)\]", # typed in command           
      [@result = $options->config({'Data::SecsPack'=> {decimal_fraction_digits => 30} })]); # execution


print << "EOF";

 ##################
 # hash reference option config
 # 
 
EOF

demo( "\$options", # typed in command           
      $options); # execution


print << "EOF";

 ##################
 # verify default options still unchanged
 # 
 
EOF

demo( "\$default_options", # typed in command           
      $default_options); # execution



=head1 NAME

Startup.d - demostration script for Data::Startup

=head1 SYNOPSIS

 Startup.d

=head1 OPTIONS

None.

=head1 COPYRIGHT

copyright © 2004 Software Diamonds.

Software Diamonds permits the redistribution
and use in source and binary forms, with or
without modification, provided that the 
following conditions are met: 

\=over 4

\=item 1

Redistributions of source code, modified or unmodified
must retain the above copyright notice, this list of
conditions and the following disclaimer. 

\=item 2

Redistributions in binary form must 
reproduce the above copyright notice,
this list of conditions and the following 
disclaimer in the documentation and/or
other materials provided with the
distribution.

\=back

SOFTWARE DIAMONDS, http://www.SoftwareDiamonds.com,
PROVIDES THIS SOFTWARE 
'AS IS' AND ANY EXPRESS OR IMPLIED WARRANTIES,
INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
SHALL SOFTWARE DIAMONDS BE LIABLE FOR ANY DIRECT,
INDIRECT, INCIDENTAL, SPECIAL,EXEMPLARY, OR 
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE,DATA, OR PROFITS; OR BUSINESS
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING USE OF THIS SOFTWARE, EVEN IF
ADVISED OF NEGLIGENCE OR OTHERWISE) ARISING IN
ANY WAY OUT OF THE POSSIBILITY OF SUCH DAMAGE.

## end of test script file ##

=cut

