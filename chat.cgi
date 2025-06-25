#!/usr/bin/perl


  read(STDIN, $buffer, $ENV{'CONTENT_LENGTH'});
  if (length($buffer) < 5) {
    $buffer = $ENV{QUERY_STRING};
  }
 
  @pairs = split(/&/, $buffer);
  foreach $pair (@pairs) {
    ($name, $value) = split(/=/, $pair);

    $value =~ tr/+/ /;
    $value =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C", hex($1))/eg;
    $value =~ s/[\;\|\\ ]/ /ig;
    $INPUT{$name} = $value;
}


print "Content-type: text/html\n\n";


if ($INPUT{'do'} eq "send") { &addchat; }

else { &display; }

#################################

sub display {

print qq~

<HTML><HEAD>
	     
<title>Chat window</title>

</head>
<body bgcolor=#ffffff>
~;


open (DATA, "chat.dat");
@data = <DATA>;
close DATA;

print "@data";


print qq~
</BODY></HTML>
~;

}

#################################

sub addchat {

open (DATA, "chat.dat");
@data = <DATA>;
close DATA;

open(DATA, ">chat.dat");

foreach $line (@data) {

print DATA "$line\n";

}

print DATA "$INPUT{'name'}> $INPUT{'text'}<BR>\n";

close DATA;

print "Done";

}


1; # return true

