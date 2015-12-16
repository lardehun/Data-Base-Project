import datetime
from datetime import date

def create_database(cursor,database_connector):
    file = open("create.sql", "r")
    script_lines = file.read()
    file.close()
    scripts = script_lines.split(";")
    for script in scripts:
        cursor.execute(script)

def insert(cursor,database_connector):
    file = open("insert.sql", "r")
    script_lines = file.read()
    file.close()
    scripts = script_lines.split(";")
    for script in scripts:
        cursor.execute(script)
        database_connector.commit()

def query(cursor,database_connector):
    with open("query.sql", "r") as q_file:
        commands = q_file.read()
    cursor.execute("USE meetdb")
    for command in cursor.execute(commands, multi=True):
            for result in command.fetchall():
                print(result)

def modify(cursor,database_connector):
    file = open("modify.sql", "r")
    script_lines = file.read()
    file.close()
    scripts = script_lines.split(";")
    for script in scripts:
        cursor.execute(script)
        database_connector.commit()

def append(cursor,database_connector):
    file = open("append.sql", "r")
    script_lines = file.read()
    file.close()
    scripts = script_lines.split(";")
    for script in scripts:
        cursor.execute(script)
        database_connector.commit()

def remove(cursor,database_connector):
    cursor.execute("DROP DATABASE IF EXISTS Meetdb")
    database_connector.commit()