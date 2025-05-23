
cat data/default_pages.xml | docker-compose exec -T mediawiki php maintenance/run.php importDump.php --
docker-compose exec -T mediawiki php maintenance/run.php rebuildrecentchanges.php
docker-compose exec -T mediawiki php maintenance/run.php initSiteStats.php
