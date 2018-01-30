
build_db:
	createuser gemnote_admin --createdb
	createdb gemnote -U gemnote_admin
	psql -d gemnote -U gemnote_admin -a -f gemnote.sql
