#
# /etc/nscd.conf
#
# An example Name Service Cache config file.  This file is needed by nscd.
#
# Legal entries are:
#
#	logfile			<file>
#	debug-level		<level>
#	threads			<initial #threads to use>
#	max-threads		<maximum #threads to use>
#	server-user             <user to run server as instead of root>
#		server-user is ignored if nscd is started with -S parameters
#       stat-user               <user who is allowed to request statistics>
#	reload-count		unlimited|<number>
#	paranoia		<yes|no>
#	restart-interval	<time in seconds>
#
#       enable-cache		<service> <yes|no>
#	positive-time-to-live	<service> <time in seconds>
#	negative-time-to-live   <service> <time in seconds>
#       suggested-size		<service> <prime number>
#	check-files		<service> <yes|no>
#	persistent		<service> <yes|no>
#	shared			<service> <yes|no>
#	max-db-size		<service> <number bytes>
#	auto-propagate		<service> <yes|no>
#
# Currently supported cache names (services): passwd, group, hosts, services
#


#	logfile			/var/log/nscd.log
#	threads			4
#	max-threads		32
	server-user		nscd
#	stat-user		somebody
	debug-level		0
#	reload-count		5
	paranoia		no
#	restart-interval	3600

	enable-cache		passwd		yes
	positive-time-to-live	passwd		600
	negative-time-to-live	passwd		20
	suggested-size		passwd		211
	check-files		passwd		yes
	persistent		passwd		yes
	shared			passwd		yes
	max-db-size		passwd		33554432
	auto-propagate		passwd		yes

	enable-cache		group		yes
	positive-time-to-live	group		3600
	negative-time-to-live	group		60
	suggested-size		group		211
	check-files		group		yes
	persistent		group		yes
	shared			group		yes
	max-db-size		group		33554432
	auto-propagate		group		yes

	enable-cache		hosts		yes
	positive-time-to-live	hosts		3600
	negative-time-to-live	hosts		20
	suggested-size		hosts		211
	check-files		hosts		yes
	persistent		hosts		yes
	shared			hosts		yes
	max-db-size		hosts		33554432

	enable-cache		services	yes
	positive-time-to-live	services	28800
	negative-time-to-live	services	20
	suggested-size		services	211
	check-files		services	yes
	persistent		services	yes
	shared			services	yes
	max-db-size		services	33554432

	enable-cache		netgroup	yes
	positive-time-to-live	netgroup	28800
	negative-time-to-live	netgroup	20
	suggested-size		netgroup	211
	check-files		netgroup	yes
	persistent		netgroup	yes
	shared			netgroup	yes
	max-db-size		netgroup	33554432
