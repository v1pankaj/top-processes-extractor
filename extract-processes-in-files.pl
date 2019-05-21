#!/usr/bin/perl

open file1, "<top.out";
open ideas_file, ">ideas_proc_stats.csv";
open ideasLog_file,  ">ideasLog_proc_stats.csv";
open ipmhd_file, ">ipmhd_proc_stats.csv";
open SNMPTrapd_file,  "SNMPTrapd_proc_stats.csv";
open SNMPServer_file, ">SNMPServer_proc_stats.csv";
open caserver_file, "caserver_proc_stats.csv";


my $line;

while ($line = readline(file1))
{

if ($line =~ m/ideas[^Log]/)
{

print "$line";
print ideas_file $line;

}

if ($line =~ m/ideasLog/)
{

print "$line";
print ideasLog_file $line;

} 

if ($line =~ m/ipmhd/)
{

print "$line";
print ipmhd_file $line;

} 

if ($line =~ m/SNMPTrapd/)
{

print "$line";
print SNMPTrapd_file $line;

} 

if ($line =~ m/SNMPServer/)
{

print "$line";
print SNMPTrapd_file $line;

} 

if ($line =~ m/caserver/)
{

print "$line";
print caserver_file $line;

} 

}

close ideas_file;
close ideasLog_file;
close ipmhd_file;
close SNMPTrapd_file;
close SNMPServer_file;
close caserver_file;
close file1;
