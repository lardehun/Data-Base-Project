__author__ = 'Szabo Mate'

def create(cursor,database_connector):
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
    cursor.execute("USE CarDatabase")
    for command in cursor.execute(commands, multi=True):
            for result in command.fetchall():
                print(result)