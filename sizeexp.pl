#!/usr/bin/perl

use Time::HiRes qw( time );


$dataset = "arthrosis_1";
@sizes= (256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536);
@sizes= (8192, 16384, 32768, 65536);


foreach my $max (@sizes) {
    foreach my $init (@sizes) {
        if ($init <= $max) {
            print ("###########################################################################  Testing $init -- $max \n");
            my $start = time();
            $output = `./train -s 1 -c 1 -u 1 -i $init -m $max -q  ~/splits/$dataset/trainData.dat /tmp/model`;
            my $end = time();
            printf("### %.2f seconds.\n", $end - $start);
            print ($output);
        }
    }
}


