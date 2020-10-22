# Hitting the IP of Google with minimum Hop Counts

There are two shell scripts (MinHops1.sh and MinHops2.sh) which does the same task but in different ways.

There is another file "ip.txt" which contains a list of 4 public IP addresses of Google.

The script "MinHops1.sh" loops through the IP list and stores the result of the traceroute command in different files, 
counts the number of lines (hops) and hits the IP which required minimum hops.

The script "MinHops2.sh" loops through the IP list and does not store the result of the traceroute command,
rather uses | to directly obtain the number of hops with wc -l command.
