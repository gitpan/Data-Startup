#!perl
#
# The copyright notice and plain old documentation (POD)
# are at the end of this file.
#
package  t::Data::Startup;

use strict;
use warnings;
use warnings::register;

use vars qw($VERSION $DATE $FILE );
$VERSION = '0.01';
$DATE = '2004/05/22';
$FILE = __FILE__;

########
# The Test::STDmaker module uses the data after the __DATA__ 
# token to automatically generate the this file.
#
# Do not edit anything before __DATA_. Edit instead
# the data after the __DATA__ token.
#
# ANY CHANGES MADE BEFORE the  __DATA__ token WILL BE LOST
#
# the next time Test::STDmaker generates this file.
#
#


=head1 NAME

 - Software Test Description for Data::Startup

=head1 TITLE PAGE

 Detailed Software Test Description (STD)

 for

 Perl Data::Startup Program Module

 Revision: -

 Version: 

 Date: 2004/05/22

 Prepared for: General Public 

 Prepared by:  http://www.SoftwareDiamonds.com support@SoftwareDiamonds.com

 Classification: None

#######
#  
#  1. SCOPE
#
#
=head1 SCOPE

This detail STD and the 
L<General Perl Program Module (PM) STD|Test::STD::PerlSTD>
establishes the tests to verify the
requirements of Perl Program Module (PM) L<Data::Startup|Data::Startup>
The format of this STD is a tailored L<2167A STD DID|Docs::US_DOD::STD>.

#######
#  
#  3. TEST PREPARATIONS
#
#
=head1 TEST PREPARATIONS

Test preparations are establishes by the L<General STD|Test::STD::PerlSTD>.


#######
#  
#  4. TEST DESCRIPTIONS
#
#
=head1 TEST DESCRIPTIONS

The test descriptions uses a legend to
identify different aspects of a test description
in accordance with
L<STD PM Form Database Test Description Fields|Test::STDmaker/STD PM Form Database Test Description Fields>.

=head2 Test Plan

 T: 12^

=head2 ok: 1


  C:
     use File::Package;
     my $uut = 'Data::Startup';
     my ($result,@result); # provide scalar and array context
     my ($default_options,$options) = ('$default_options','$options');
 ^
 VO: ^

  C:
 my $expected1 = 
 'U1[1] 80
 L[10]
   A[13] Data::Startup
   A[4] HASH
   A[14] Data::SecsPack
   L[2]
     A[0]
     A[4] HASH
   A[6] indent
   A[0]
   A[17] perl_secs_numbers
   A[9] multicell
   A[4] type
   A[5] ascii
 ';

 my $expected2 = 
 'U1[1] 80
 L[10]
   A[13] Data::Startup
   A[4] HASH
   A[14] Data::SecsPack
   L[2]
     A[0]
     A[4] HASH
   A[6] indent
   A[0]
   A[17] perl_secs_numbers
   A[9] multicell
   A[4] type
   A[6] binary
 ';
 my $expected3 = 
 'U1[1] 80
 L[10]
   A[13] Data::Startup
   A[4] HASH
   A[14] Data::SecsPack
   L[2]
     A[0]
     A[4] HASH
   A[6] indent
   A[0]
   A[17] perl_secs_numbers
   A[6] strict
   A[4] type
   A[6] binary
 ';
 my $expected4 = 
 'U1[1] 80
 L[10]
   A[13] Data::Startup
   A[4] HASH
   A[14] Data::SecsPack
   L[4]
     A[0]
     A[4] HASH
     A[23] decimal_fraction_digits
     N 30
   A[6] indent
   A[0]
   A[17] perl_secs_numbers
   A[6] strict
   A[4] type
   A[6] binary
 ';
 ^
  N: UUT loaded^
  R: L<DataPort::DataFile/general [1] - load>^
  A: File::Package->load_package($uut)^
 SE: ''^
 ok: 1^

=head2 ok: 2

  N: create a Data::Startup default options^

  A:
 ($default_options = new $uut(
        perl_secs_numbers => 'multicell',
        type => 'ascii',   
        indent => '',
        'Data::SecsPack' => {}
    ))
 ^
  E: $expected1^
 ok: 2^

=head2 ok: 3

  N: read perl_secs_numbers default option^
  A: [$default_options->config('perl_secs_numbers')]^
  E: ['perl_secs_numbers','multicell']^
 ok: 3^

=head2 ok: 4

  N: write perl_secs_numbers default option^
  A: [$default_options->config(perl_secs_numbers => 'strict')]^
  E: ['perl_secs_numbers','multicell']^
 ok: 4^

=head2 ok: 5

  N: restore perl_secs_numbers default option^
  A: [$default_options->config(perl_secs_numbers => 'multicell')]^
  E: ['perl_secs_numbers','strict']^
 ok: 5^

=head2 ok: 6

  N: create options copy of default options^
  A: $options = $default_options->override(type => 'binary')^
  E: $expected2^
 ok: 6^

=head2 ok: 7

  N: verify default options unchanged^
  A: $default_options^
  E: $expected1^
 ok: 7^

=head2 ok: 8

  N: array reference option config^
  A: [@result = $options->config([perl_secs_numbers => 'strict'])]^
  E: ['perl_secs_numbers','multicell']^
 ok: 8^

=head2 ok: 9

  N: array reference option config^
  A: $options^
  E: $expected3^
 ok: 9^

=head2 ok: 10

  N: hash reference option config^
  A: [@result = $options->config({'Data::SecsPack'=> {decimal_fraction_digits => 30} })]^
  E: ['Data::SecsPack',{}]^
 ok: 10^

=head2 ok: 11

  N: hash reference option config^
  A: $options^
  E: $expected4^
 ok: 11^

=head2 ok: 12

  N: verify default options still unchanged^
  A: $default_options^
  E: $expected1^
 ok: 12^



#######
#  
#  5. REQUIREMENTS TRACEABILITY
#
#

=head1 REQUIREMENTS TRACEABILITY

  Requirement                                                      Test
 ---------------------------------------------------------------- ----------------------------------------------------------------
 L<DataPort::DataFile/general [1] - load>                         L<t::Data::Startup/ok: 1>


  Test                                                             Requirement
 ---------------------------------------------------------------- ----------------------------------------------------------------
 L<t::Data::Startup/ok: 1>                                        L<DataPort::DataFile/general [1] - load>


=cut

#######
#  
#  6. NOTES
#
#

=head1 NOTES

copyright � 2004 Software Diamonds.

Software Diamonds permits the redistribution
and use in source and binary forms, with or
without modification, provided that the 
following conditions are met: 

=over 4

=item 1

Redistributions of source code, modified or unmodified
must retain the above copyright notice, this list of
conditions and the following disclaimer. 

=item 2

Redistributions in binary form must 
reproduce the above copyright notice,
this list of conditions and the following 
disclaimer in the documentation and/or
other materials provided with the
distribution.

=back

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

#######
#
#  2. REFERENCED DOCUMENTS
#
#
#

=head1 SEE ALSO



=back

=for html
<hr>
<p><br>
<!-- BLK ID="NOTICE" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="OPT-IN" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="EMAIL" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="LOG_CGI" -->
<!-- /BLK -->
<p><br>

=cut

__DATA__

Author: http://www.SoftwareDiamonds.com support@SoftwareDiamonds.com^
Classification: None^
Detail_Template: ^
End_User: General Public^
File_Spec: Unix^
Name: ^
Revision: -^
STD2167_Template: ^
Temp: temp.pl^
UUT: Data::Startup^
Version: ^
Demo: Startup.d^
Verify: Startup.t^


 T: 12^


 C:
    use File::Package;
    my $uut = 'Data::Startup';

    my ($result,@result); # provide scalar and array context
    my ($default_options,$options) = ('$default_options','$options');
^

VO: ^

 C:
my $expected1 = 
'U1[1] 80
L[10]
  A[13] Data::Startup
  A[4] HASH
  A[14] Data::SecsPack
  L[2]
    A[0]
    A[4] HASH
  A[6] indent
  A[0]
  A[17] perl_secs_numbers
  A[9] multicell
  A[4] type
  A[5] ascii
';



my $expected2 = 
'U1[1] 80
L[10]
  A[13] Data::Startup
  A[4] HASH
  A[14] Data::SecsPack
  L[2]
    A[0]
    A[4] HASH
  A[6] indent
  A[0]
  A[17] perl_secs_numbers
  A[9] multicell
  A[4] type
  A[6] binary
';

my $expected3 = 
'U1[1] 80
L[10]
  A[13] Data::Startup
  A[4] HASH
  A[14] Data::SecsPack
  L[2]
    A[0]
    A[4] HASH
  A[6] indent
  A[0]
  A[17] perl_secs_numbers
  A[6] strict
  A[4] type
  A[6] binary
';

my $expected4 = 
'U1[1] 80
L[10]
  A[13] Data::Startup
  A[4] HASH
  A[14] Data::SecsPack
  L[4]
    A[0]
    A[4] HASH
    A[23] decimal_fraction_digits
    N 30
  A[6] indent
  A[0]
  A[17] perl_secs_numbers
  A[6] strict
  A[4] type
  A[6] binary
';
^

 N: UUT loaded^
 R: L<DataPort::DataFile/general [1] - load>^
 A: File::Package->load_package($uut)^
SE: ''^
ok: 1^

 N: create a Data::Startup default options^

 A:
($default_options = new $uut(
       perl_secs_numbers => 'multicell',
       type => 'ascii',   
       indent => '',
       'Data::SecsPack' => {}
   ))
^

 E: $expected1^
ok: 2^

 N: read perl_secs_numbers default option^
 A: [$default_options->config('perl_secs_numbers')]^
 E: ['perl_secs_numbers','multicell']^
ok: 3^

 N: write perl_secs_numbers default option^
 A: [$default_options->config(perl_secs_numbers => 'strict')]^
 E: ['perl_secs_numbers','multicell']^
ok: 4^

 N: restore perl_secs_numbers default option^
 A: [$default_options->config(perl_secs_numbers => 'multicell')]^
 E: ['perl_secs_numbers','strict']^
ok: 5^

 N: create options copy of default options^
 A: $options = $default_options->override(type => 'binary')^
 E: $expected2^
ok: 6^

 N: verify default options unchanged^
 A: $default_options^
 E: $expected1^
ok: 7^

 N: array reference option config^
 A: [@result = $options->config([perl_secs_numbers => 'strict'])]^
 E: ['perl_secs_numbers','multicell']^
ok: 8^

 N: array reference option config^
 A: $options^
 E: $expected3^
ok: 9^

 N: hash reference option config^
 A: [@result = $options->config({'Data::SecsPack'=> {decimal_fraction_digits => 30} })]^
 E: ['Data::SecsPack',{}]^
ok: 10^

 N: hash reference option config^
 A: $options^
 E: $expected4^
ok: 11^

 N: verify default options still unchanged^
 A: $default_options^
 E: $expected1^
ok: 12^


See_Also: ^

Copyright:
copyright � 2004 Software Diamonds.

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
^


HTML:
<hr>
<p><br>
<!-- BLK ID="NOTICE" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="OPT-IN" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="EMAIL" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="LOG_CGI" -->
<!-- /BLK -->
<p><br>
^



~-~
