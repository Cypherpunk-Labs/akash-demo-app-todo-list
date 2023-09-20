#!/bin/sh

set -ex

cockroach sql -e 'DROP DATABASE IF EXISTS example_flask_sqlalchemy'
cockroach sql -e 'CREATE DATABASE example_flask_sqlalchemy'
cockroach sql -e 'GRANT ALL ON DATABASE example_flask_sqlalchemy TO example'

python -c 'import hello; hello.db.create_all()'



# sqlalchemy.exc.OperationalError: (sqlite3.OperationalError) no such table: todos
# [SQL: SELECT todos.todo_id AS todos_todo_id, todos.title AS todos_title, todos.text AS todos_text, todos.done AS todos_done, todos.pub_date AS todos_pub_date 
# FROM todos ORDER BY todos.pub_date DESC]
# (Background on this error at: http://sqlalche.me/e/14/e3q8)

# CREATE TABLE todos (
# 	todo_id INTEGER PRIMARY KEY,
#    	title TEXT NOT NULL,
# 	text TEXT NOT NULL,
#     done INTEGER DEFAULT 0,
#     pub_date TEXT NOT NULL,
# 	table_constraints
# );