# brew install cockroachdb/tap/cockroach
## WIP 

#cockroach start --insecure


# cockroach sql -e 'DROP DATABASE IF EXISTS example_flask_sqlalchemy' --insecure 
# cockroach sql -e 'CREATE DATABASE example_flask_sqlalchemy' --insecure 
# cockroach sql -e 'GRANT ALL ON DATABASE example_flask_sqlalchemy TO example' --insecure 




# set -ex

# USERNAME="hack" # wont work on mac

# cockroach sql -e "DROP TABLE IF EXISTS todos;" --insecure
# cockroach sql -e "DROP DATABASE IF EXISTS hacktoberfest;" --insecure
# cockroach sql -e "CREATE DATABASE hacktoberfest;" --insecure
# cockroach sql -e "CREATE USER IF NOT EXISTS $USERNAME;" --insecure
# cockroach sql -e "GRANT ALL ON DATABASE hacktoberfest TO $USERNAME;" --insecure

# cockroach sql -e 'SHOW DATABASES' --insecure
# cockroach sql -e 'SHOW USERS' --insecure

# cockroach sql -e "CREATE DATABASE db_todos;" --insecure
# cockroach sql -e "CREATE USER IF NOT EXISTS web;" --insecure
# cockroach sql -e "GRANT ALL ON DATABASE db_todos TO web;" --insecure