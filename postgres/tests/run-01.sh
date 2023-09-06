# pgbench -f script-01.sql -c 10 -T 5 -U postgres postgres 2> /dev/null
pgbench -f script-01.sql -h localhost -c 10 -T 5 -U postgres postgres 2> /dev/null