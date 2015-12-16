import mysql.connector


database_connector = mysql.connector.connect(user='root', password = "jarjar",
                                            host = "127.0.0.1", database = "MeetupDataBase")
cursor = database_connector.cursor()

def menu():
    print("""What do you want to do?
            1. Create Database
            2. Insert to Database
            3. Modify Database
            4. Query
            5. Append
            6. Remove""")
    answer = input("Answer: ")
    investigate_answer(answer)

def investigate_answer(answer):
    if answer == "1":
        create_database()
    elif answer == "2":
        insert()
    elif answer == "3":
        modify()
    elif answer == "4":
        query()
    elif answer == "5":
        append()
    elif answer == "6":
        remove()
    else:
        menu()

def create_database():
    file = open("create.sql", "r")
    script_lines = file.read()
    file.close()
    scripts = script_lines.split(";")
    for script in scripts:
        cursor.execute(script)

def insert():
    file = open("insert.sql", "r")
    script_lines = file.read()
    file.close()
    scripts = script_lines.split(";")
    for script in scripts:
        cursor.execute(script)
        database_connector.commit()

def modify():
    file = open("modify.sql", "r")
    script_lines = file.read()
    file.close()
    scripts = script_lines.split(";")
    for script in scripts:
        cursor.execute(script)
        database_connector.commit()

def query():
    file = open("modify.sql", "r")
    script_lines = file.read()
    file.close()
    scripts = script_lines.split(";")
    for script in scripts:
        cursor.execute(script)

def append():
    file = open("append.sql", "r")
    script_lines = file.read()
    file.close()
    scripts = script_lines.split(";")
    for script in scripts:
        cursor.execute(script)

def remove():
    file = open("remove.sql", "r")
    script_lines = file.read()
    file.close()
    scripts = script_lines.split(";")
    for script in scripts:
        cursor.execute(script)

menu()
